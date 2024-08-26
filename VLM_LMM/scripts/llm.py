import os
import base64
from openai import OpenAI
import pprint
from functools import lru_cache
import re



system_prompt = "VLM_LMM/scripts/block_prompt.txt"
system_command = "VLM_LMM/Prompt_vlm/blocksworld/instructions/problem1.txt"

with open(system_prompt, "r") as file:
    # Read the entire content of the file
    file_content = file.read()

# At this point, file_content is a string containing the entire content of the file
print(file_content)






with open(system_command, "r") as command_file:
    # Read the entire content of the file
    cmd_file_content = command_file.read()

# At this point, file_content is a string containing the entire content of the file
print(cmd_file_content)


import base64
import requests

client = OpenAI(api_key=os.environ.get("OPENAI_API_KEY", ""))

# Function to encode the image
def encode_image(image_path):
  with open(image_path, "rb") as image_file:
    return base64.b64encode(image_file.read()).decode('utf-8')

# Path to your image


MODEL="gpt-4o"
@lru_cache()
def analyze_image(img_path, user_prompt, system_prompt):
    base64_image = encode_image(img_path)
    response = client.chat.completions.create(
    model=MODEL,
    messages=[
        {"role": "system", "content": system_prompt},
        {"role": "user", "content": [
            {"type": "text", "text": user_prompt},
            {"type": "image_url", "image_url": {
                "url": f"data:image/png;base64,{base64_image}"}
            }
        ]}
    ],
    temperature=0.0,
)


    
    response = response.choices[0].message.content
    return response

import re

def extract_and_save_pddl(input_text, file_path):
    """
    Extracts the PDDL section from a string where the PDDL code is embedded within other text
    and saves it to a specified file path, replacing any existing content.

    Parameters:
    input_text (str): The string from which to extract the PDDL content.
    file_path (str): The path to the file where the PDDL content should be saved.
    
    Returns:
    str: Confirmation message about saving, or an error message if not found.
    """
    start_index = input_text.find("(define")
    if start_index == -1:
        return "PDDL content not found."

    end_index = input_text.rfind(")") + 1
    if end_index == 0:
        return "PDDL content not found."

    pddl_content = input_text[start_index:end_index]

    with open(file_path, 'w') as file:
        file.write(pddl_content)

    return f"PDDL content successfully saved to {file_path}"
   

# def api_call(img_path, prompt, temperature=0):
#     base64_image = encode_image(img_path)
#     response = client.chat.completions.create(
#         model="gpt-4-vision-preview",
#         messages=[
#             {
#                 "role": "user",
#                 "content": [
#                     {
#                         "type": "image_url",
#                         "image_url": {
#                             "url": f"data:image/jpeg;base64,{base64_image}",
#                             "detail": "high"
#                         },
#                     },
#                     {
#                         "type": "text",
#                         "text": prompt
#                     },
#                 ],
#             }
#         ],
#         temperature=temperature,
#         max_tokens=1000,
#     )
#     return response

if __name__ == '__main__':
    img_path = "VLM_LMM/Prompt_vlm/blocksworld/block_observation/problem1.png"
    user_prompt = system_command
    response = analyze_image(img_path, user_prompt, system_prompt)
    # print(type(response))
    # print(f'The response is:{response}')
    file_path = "VLM_LMM/scripts/Result/blocksworld/problem4.pddl"
    parse = extract_and_save_pddl(response, file_path=file_path)
    print(parse)
    


# class ImageAnalyzer:
#     def __init__(self, max_tokens=1000, top_p=0.1):
#         self.client = OpenAI()
#         self.max_tokens = max_tokens
#         self.top_p = top_p

    
#     def read_prompt(self, path):
#         # Read the prompt from a file or user input
#         try:
#             with open(path, 'r') as file:
#                 return file.read()
#         except FileNotFoundError:
#             print(f"Error: The file {path} does not exist.")
#             return None


#     def analyze_image(image_url, prompt, system_prompt):
#         base64_image = encode_image(img_path)
#         if not base64_image:
#             return "error encoding image"
#         system_prompt = read_prompt(path)
#         if not system_prompt:
#             return print("Error: The system prompt file is not found.")
#         response = client.chat.completions.create(
#         model="gpt-4-vision-preview",
#         messages=[
#             {
#                 "role": "system",
#                 "content": system_prompt
#             },
#             {
#                 "role": "user",
#                 "content": [
#                     {
#                         "type": "image_url",
#                         "image_url": f"data:image/jpeg;base64,{base64_image}",
#                     },
#                 ],
#             },
#             {
#                 "role": "user",
#                 "content": prompt
#             }
#         ],
#             max_tokens=self.max_tokens,
#             top_p=self.top_p
#         )

#         return response.choices[0].message.content

