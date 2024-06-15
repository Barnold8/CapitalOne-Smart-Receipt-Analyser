***********
Receipt OCR
***********

Dependencies
============

    * `Google Cloud Vision <https://cloud.google.com/python/docs/reference/vision/latest>`_ | *Interact with the Google Cloud Vision API* | Version: 3.4.1

    * `PIL <https://docs.python.org/3/library/base64.html>`_ | *Image processing library* | Version: 9.5.0

.. note::
    Using this module requires valid `Google Cloud <http://cloud.google.com>`_ credentials. These must be installed on your system following documentation `here <>`_.

This module is responsible for processing raw receipt images and extracting relevant information from them.

Usage
=====

The main entry point of this module is:

    :py:meth:`backend.ocr.ocr.process_image_api`

This function takes the file path of the image to be processed.
This image may be in any format supported by the `PIL <https://pillow.readthedocs.io/en/stable/>`_ library, a list of which can be viewed `here <https://pillow.readthedocs.io/en/stable/handbook/image-file-formats.html>`_.

Example Output
==============

.. code-block:: json

    [
        {"item": "Diet Coke", "price": 1.20},
        {"item": "Sandwich",  "price": 1.50},
        ...
    ]

Processing Steps
================

#.
    The image is rotated by the amount given by :py:meth:`backend.ocr.ocr.get_image_angle` to align all lines of text to the horizontal.

#.
    The locations of all prices are determined, and their labels are determined by :py:meth:`backend.ocr.ocr.get_nearest_left_level_until_end`.

#.
    Any prices relating to labels such as ``Total`` or ``Ammount Due`` are thrown out, leaving only the relevant items.

Reference
=========

.. automodule:: backend.ocr.ocr
    :members:
