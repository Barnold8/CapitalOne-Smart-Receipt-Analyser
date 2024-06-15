"""
@author Henry Mitchell

This module handles all OCR functionality. A receipt image file is processed
and a list of items and their prices on the receipt is returned.
"""

import math
from typing import Tuple
from io import BytesIO
import re

from google.cloud import vision
from PIL import Image, ImageOps

RESIZE_WIDTH = 960
PIXEL_TOLERANCE = 15

class Pos:
    """
    Represents an (x,y) coordinate on the image
    """

    x: int
    y: int

    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __repr__(self):
        return str(self)

    def __str__(self):
        return f"({self.x}, {self.y})"

class Element:
    """
    Represents a word or symbol on the image
    """

    # Should probably consider a better data type than a tuple
    verts: Tuple[Pos, Pos, Pos, Pos]
    pos: Pos
    val: str

    def verts_tuple(self):
        """
        Returns a list of vertices as a tuple containing x, y coordinates
        """
        return [(v.x, v.y) for v in self.verts]

    def verts_tuple_corners(self):
        """
        Returns a list of corner vertices (top-left, bottom-right)
        """
        verts = self.verts_tuple()
        return [verts[0]] + [verts[2]]

    def __init__(self, raw_element):
        raw_verts = raw_element.bounding_box.vertices

        # Python doesn't like for loops for this
        self.verts = (Pos(raw_verts[0].x, raw_verts[0].y),
                      Pos(raw_verts[1].x, raw_verts[1].y),
                      Pos(raw_verts[2].x, raw_verts[2].y),
                      Pos(raw_verts[3].x, raw_verts[3].y))

        self.pos = average_pos(raw_element)

        # If raw_element doesn't have text, we must search sub-elements for
        # text
        try:
            self.val = raw_element.text
        except:
            self.val = ''.join([c.text for c in raw_element.symbols])

    def __repr__(self):
        return str(self)

    def __str__(self):
        return f"\npos:{self.pos}, val:{self.val}"

class Item:
    """
    Represents a line item on the receipt
    """

    name: str
    price: float

    def __init__(self, name, price):
        self.name = name
        self.price = price

    def __repr__(self):
        return str(self)

    def __str__(self):
        return f"Item: {self.name}, Price: {self.price}"

class Processed:
    """
    Represents the results of the OCR processing
    """

    words: list[Element]
    symbols: list[Element]

    def __init__(self):
        self.words = []
        self.symbols = []

    def __repr__(self):
        return str(self)

    def __str__(self):
        return f"Words: {self.words}, Symbols: {self.symbols}"

def average_pos(element: Element) -> Pos:
    """
    Takes an Element and uses the bounding_box list to calculate the position of
    the 'center' of the element.

    element - The element to be processed

    Returns: (x,y) Position of the center of e
    """

    verts = element.bounding_box.vertices

    x_coords = [p.x for p in verts]
    y_coords = [p.y for p in verts]

    avg_x = sum(x_coords) // len(x_coords)
    avg_y = sum(y_coords) // len(y_coords)

    return Pos(avg_x, avg_y)

def get_nearest_right_level(root: Element, words: list[Element]) -> Element:
    """
    Searches the image for the word directly to the right of the symbol 'a'.

    root - The root element
    words - The list other elements to be searched

    Returns: The element directly to the right of 'a'.
    """

    closest = None
    for word in words:
        if abs(root.pos.y - word.pos.y) < PIXEL_TOLERANCE:
            if (closest is None
                or (abs(root.pos.x - word.pos.x) < abs(root.pos.x - closest.pos.x)
                and word.pos.x > root.pos.x
                and root is not word)):
                closest = word

    return closest


# Some of this code could probably be shared with the code above.
def get_nearest_left_level(root: Element, words: list[Element]) -> Element:
    """
    As above, only 'right' is replaced with 'left'
    """

    closest = None
    for word in words:
        if abs(root.pos.y - word.pos.y) < PIXEL_TOLERANCE:
            if (closest is None
                or (abs(root.pos.x - word.pos.x) < abs(root.pos.x - closest.pos.x)
                and word.pos.x < root.pos.x
                and root is not word)):
                closest = word

    return closest

def get_nearest_left_level_until_end(element: Element, words) -> list[Element]:
    """
    Calls 'get_nearest_left_level' repeatedly to find a list of all elements on the
    left of a given element.

    element - The 'root' element
    words - The list other elements to be searched

    Returns: The list of element directly to the left of 'e'
    """

    left = []
    left.append(get_nearest_left_level(element, words))
    while True:
        # get_nearest_left_level will return the same item indefinitely once the end is reached
        next_word = get_nearest_left_level(left[-1], words)
        if next_word in left:
            # Reverse order so the words appear left-to-right
            left.reverse()
            return left

        left.append(next_word)

# Make this a member of the Element class
def box_angle(element: Element) -> float:
    """
    Computes the angle a given element is at, relative to the horizontal.

    element - The element to be processed

    Returns: The computed angle, in radians
    """

    # Calculate midpoints of verticals
    m_1 = ((element.verts[0].x + element.verts[3].x) / 2,
           (element.verts[0].y + element.verts[3].y / 2))

    m_2 = ((element.verts[1].x + element.verts[2].x) / 2,
           (element.verts[1].y + element.verts[2].y / 2))

    # To catch divide-by-zero errors
    try:
        # Use triginometry to calculate angle with horizontal
        return math.atan((m_2[1] - m_1[1]) / (abs(m_1[0] - m_2[0])))
    except:
        return None

def get_image_angle(words: list[Element]) -> float:
    """
    Computes the average angle the receipt is at in the image, relative to the
    horizontal.

    words - The list of elements to be considered to determine the angle

    Returns: The computed angle, in radians
    """

    angles = []
    for word in words:
        angle = box_angle(word)
        if angle is not None:
            angles.append(angle)

    avg = sum(angles) / len(angles)

    # ✨ Magical Correction Factor ✨
    avg *= 0.65

    return avg

def order_by_y(elements: list[Element]):
    """
    Takes a list of elements, and orders them based on their y-coordinate.

    elements - The list of elements to sort
    """

    elements.sort(key=lambda x: x.pos.y)

def process_prices(prices: list[Element], words: list[Element]) -> list[Item]:
    """
    Takes a list of where prices are located on the receipt, together with the
    words appearing on the receipt, and returns a list of receipt items.
    """

    items = []
    for price in prices:
        # Price is printed to the right of '£'
        # Name to the left
        e_price = price
        e_names = get_nearest_left_level_until_end(price, words)

        try:
            price = float(e_price.val)
        except:
            print("Error converting '£'")
            continue

        names = [w.val for w in e_names]

        # Sometimes the quantity is shown before the name
        if names[0].isnumeric():
            names.pop(0)

        # Identify the end of the list of items
        finals = ['DUE', 'TOTAL']

        name = ' '.join(names)
        for final in finals:
            if final in name.upper():
                return items

        # Sometimes a name has multiple prices shown - don't count them twice
        if name.count('£') > 1:
            continue

        # Remove any remaining '£' signs
        name = name.replace('£', '')
        name = name.strip()

        items.append(Item(name, price))

    return items

def process_image(file_name: str) -> Processed:
    """
    Takes the file path of the receipt image and populates the IMG, WORDS and
    SYMBOLS variables.

    file_name - Image file path

    Returns: Populated 'Processed' object
    """

    client = vision.ImageAnnotatorClient()

    # Opens image as PIL object for later transformation
    img = Image.open(file_name)
    img = ImageOps.exif_transpose(img)

    original_width = img.width
    original_height = img.height

    ratio = original_height / original_width

    # For some reason w and h are sometimes swapped by PIL
    if ratio < 1:
        ratio = original_width / original_height

    new_height = int(RESIZE_WIDTH * ratio)

    img = img.resize((RESIZE_WIDTH, new_height))

    # Convert PIL image to PNG stream
    buffer = BytesIO()
    img.save(buffer, format="PNG")

    google_image = vision.Image(content=buffer.getvalue())

    # pylint believes this member does not exist when it defintely does
    # pylint: disable=no-member
    response = client.document_text_detection(image=google_image)
    document = response.full_text_annotation

    # Extract WORDS and SYMBOLS
    tmp_words = []
    for page in document.pages:
        for block in page.blocks:
            for paragraph in block.paragraphs:
                for word in paragraph.words:
                    tmp_words.append(Element(word))

    #Fix image skew
    angle = get_image_angle(tmp_words)
    img_rotated = img.rotate(math.degrees(angle))

    buffer = BytesIO()
    img_rotated.save(buffer, format="PNG")

    new_image = vision.Image(content=buffer.getvalue())

    response = client.document_text_detection(image=new_image)
    document = response.full_text_annotation

    # Populate final words and symbols on updated image
    processed = Processed()
    for page in document.pages:
        for block in page.blocks:
            for paragraph in block.paragraphs:
                for word in paragraph.words:
                    processed.words.append(Element(word))
                    for symbol in word.symbols:
                        processed.symbols.append(Element(symbol))

    return processed

def process_image_api(file_name: str) -> list[dict]:
    """
    Takes a filename for an image to be processed and returns a list
    of {"name": ..., "price":...}
    """
    
    processed = process_image(file_name)

    words = processed.words

    # Get all price formats
    prices = [w for w in words if re.match(r"\d+\.\d\d", w.val)]

    order_by_y(prices)
    items = process_prices(prices, words)

    res = []
    for item in items:
        # Only include names and not serial numbers, prices, etc.
        if item.name != "" and not re.match(r"^\d+\.?\d*$", item.name):
            res.append({'name': item.name, 'price': item.price})

    return res

if __name__ == '__main__':
    import sys
    print("Processing...")
    processed = process_image_api(sys.argv[1])
    print("Finished!")

    for item in processed:
        print(item)
