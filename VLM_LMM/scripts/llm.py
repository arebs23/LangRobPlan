import os
import base64
from openai import OpenAI
import pprint
from functools import lru_cache




# def encode_image(image_path):
#   with open(image_path, "rb") as image_file:
#     return base64.b64encode(image_file.read()).decode('utf-8')



system_prompt = '''
I want you to solve a planning problem. Your tasks are:

1. Generate the goal state in PDDL format based on user input in form of natural language.
2. Generate the initial state in PDDL format based on the provided image and the objects detected in the image.

An example is:

natural language Instruction: "Create a stack of block: pink over red over yellow over green."
(define (problem blocksworld1)
    (:domain blocksworld)
    (:objects
        green_block - block
        yellow_block - block
        red_block - block
        pink_block - block
        robot - robot
    )
    (:init
        (ontable green_block)
        (ontable yellow_block)
        (ontable red_block)
        (ontable pink_block)
    )
    (:goal (and (on pink_block red_block) (on red_block yellow_block) (on yellow_block green_block)))
)
'''



# img_path = '/home/victor/Downloads/problem1.jpg'


import base64
import requests

client = OpenAI(api_key=os.environ.get("OPENAI_API_KEY", "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"))

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


    return print(response.choices[0].message.content)

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
    img_path = "/home/aregbs/Desktop/VLM_LMM-1/VLM_LMM/Prompt_vlm/blocksworld/block_observation/problem10.png"
    user_prompt = "Create two stacks of blocks: blue over pink over red, yellow over orange over green."
    response = analyze_image(img_path, user_prompt, system_prompt)
    print(response)


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

