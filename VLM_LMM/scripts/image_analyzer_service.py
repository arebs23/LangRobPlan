import base64
from functools import lru_cache
import os
from openai import OpenAI # Ensure you have the OpenAI package installed

# Configure OpenAI API key
client = OpenAI(api_key=os.environ.get("OPENAI_API_KEY", "your-api"))



MODEL="gpt-4o"  # Specify the model to use


def encode_image(img_path):
    with open(img_path, "rb") as image_file:
        encoded_string = base64.b64encode(image_file.read()).decode('utf-8')
    return encoded_string

@lru_cache(maxsize=128)
def analyze_image(img_path, user_prompt, system_prompt):
    base64_image = encode_image(img_path)
    response = client.ChatCompletion.create(
        model=MODEL,
        messages=[
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": user_prompt},
            {"role": "user", "content": {"type": "image_url", "image_url": {"url": f"data:image/png;base64,{base64_image}"}}}
        ],
        temperature=0.0,
    )
    return response.choices[0].message.content

def get_prompts(prompt_folder):
    with open(os.path.join(prompt_folder, 'context_prompt.txt'), 'r') as file:
        system_prompt = file.read()
    with open(os.path.join(prompt_folder, 'user_prompt.txt'), 'r') as file:
        user_prompt = file.read()
    return system_prompt, user_prompt

def save_response(img_file, response, output_folder):
    response_file = os.path.join(output_folder, f"{os.path.splitext(img_file)[0]}_response.txt")
    with open(response_file, 'w') as file:
        file.write(response)

def process_images(image_folder, prompt_folder, output_folder):
    os.makedirs(output_folder, exist_ok=True)  # Ensure the output folder exists
    system_prompt, user_prompt = get_prompts(prompt_folder)
    for img_file in os.listdir(image_folder):
        if img_file.lower().endswith(('.png', '.jpg', '.jpeg', '.bmp', '.gif')):
            img_path = os.path.join(image_folder, img_file)
            response = analyze_image(img_path, user_prompt, system_prompt)
            save_response(img_file, response, output_folder)
            print(f"Response for {img_file} saved to {output_folder}")

def main():
    domain_folders = {
        "blockworld": {
            "images": "path/to/blockworld/images",
            "prompts": "path/to/blockworld/prompts",
            "output": "path/to/blockworld/output"
        },
        # Add other domains here
    }
    
    for domain, paths in domain_folders.items():
        print(f"Processing domain: {domain}")
        process_images(paths["images"], paths["prompts"], paths["output"])

if __name__ == "__main__":
    main()
