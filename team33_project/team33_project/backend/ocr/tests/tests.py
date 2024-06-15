"""
Basic tests for receipt OCR.
These are not automatic and must be scored manually.
"""

import sys
import glob
import itertools

sys.path.insert(1, '../')
import ocr

test_images = glob.glob("images/*.jpg")
test_results = glob.glob("results/*.txt")

tests = zip(test_images, test_results)

print("-" * 100)
for idx, test in enumerate(tests):
    print(f"TEST {idx+1}:")

    try:
        ocr_results = ocr.process_image_api(test[0])
    except:
        print("None")

    with open(test[1], 'r', encoding='utf-8') as file:
        actual_results = [line.rstrip() for line in file]

    for line in list(itertools.zip_longest(ocr_results, actual_results)):
        if line[0] is None:
            line = ({'name': 'None', 'price': 'None'}, line[1])
        print(f"{line[0]['name']}\t{line[0]['price']}\t|\t{line[1]}")
    print("-" * 100)

print("FINISHED")
