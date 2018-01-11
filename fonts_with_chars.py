#! /usr/bin/env python3

import argparse
import fontconfig

if __name__ == '__main__':
    parser = argparse.ArgumentParser(
        description='Find a list of fonts that support a given list of characters.'
    )
    parser.add_argument(
        'chars',
        type=str,
        help='Characters the font must support.',
    )
    args = parser.parse_args()
    for font_file in fontconfig.query():
        font = fontconfig.FcFont(font_file)
        if all([font.has_char(char) for char in args.chars]):
            print(font.file)
