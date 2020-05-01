import cv2 as cv
import tensorflow as tf
import numpy as np

# Load Character set
chars=''
with open('chars.txt',encoding='utf-8') as f:
    chars=f.read()

#Dense to corresponding text removing Unidentified Character
def dense_to_text(dense):
    text=''
    for num in dense:
        if (num < len(chars)+1 and num > 0):
            text+=chars[num-1]
    return text