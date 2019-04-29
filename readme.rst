Most fonts don't cover every code point.
For some of the more unusual characters,
given a character, what fonts have it.

Example usage::

    $ fonts_with_chars.py 🍁
    /usr/share/fonts/truetype/unifont/unifont_upper.ttf
    $ fonts_with_chars.py ᚠ
    /usr/share/fonts/truetype/unifont/unifont.ttf
    /usr/share/fonts/truetype/junicode/Junicode.ttf
    /usr/share/fonts/truetype/freefont/FreeMono.ttf
    /usr/share/fonts/opentype/freefont/FreeMono.otf
    /usr/share/fonts/truetype/junicode/Junicode-BoldItalic.ttf
    /usr/share/fonts/truetype/junicode/Junicode-Bold.ttf
    /usr/share/fonts/truetype/junicode/Junicode-Italic.ttf
    /usr/share/fonts/truetype/noto/NotoSansRunic-Regular.ttf

Multiple characters:

Is that character being rendered with the font you think it is,
or is it using a fall-back font?

https://unix.stackexchange.com/questions/162305/find-the-best-font-for-rendering-a-codepoint

https://stackoverflow.com/questions/4458696/finding-out-what-characters-a-font-supports

https://apple.stackexchange.com/questions/287707/get-list-of-all-fonts-containing-a-specific-character/291200#291200

Questions and answers
---------------------

Why is it so slow?
~~~~~~~~~~~~~~~~~~

Note: this line is very expensive CPU-wise::

    font = fontconfig.FcFont(font_file)

I wish the ``fontconfig`` library would make it easier
to just iterate over the objects
rather than forcing a conversion each time,
but when I try to iterate it just turns them into strings.
