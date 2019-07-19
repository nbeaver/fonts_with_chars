Most fonts don't cover every code point.
For some of the more unusual characters,
given a character, what fonts have it.

Example usage::

    $ unicode 🍁
    U+1F341 MAPLE LEAF
    UTF-8: f0 9f 8d 81 UTF-16BE: d83cdf41 Decimal: &#127809; Octal: \0371501
    🍁
    Category: So (Symbol, Other)
    Unicode block: 1F300..1F5FF; Miscellaneous Symbols and Pictographs
    Bidi: ON (Other Neutrals)

    $ fonts_with_chars.py 🍁
    /usr/share/fonts/truetype/unifont/unifont_upper.ttf
    $ unicode ᚠ
    U+16A0 RUNIC LETTER FEHU FEOH FE F
    UTF-8: e1 9a a0 UTF-16BE: 16a0 Decimal: &#5792; Octal: \013240
    ᚠ
    Category: Lo (Letter, Other)
    Unicode block: 16A0..16FF; Runic
    Bidi: L (Left-to-Right)

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

This line is very expensive CPU-wise::

    font = fontconfig.FcFont(font_file)

This is reasonable for applications that only need a single font,
but for this use case it would be easier to convert them all at once,
then iterate through the entire list of fonts.
That's not how the ``fontconfig`` library works, though.
