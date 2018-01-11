https://unix.stackexchange.com/questions/162305/find-the-best-font-for-rendering-a-codepoint

https://stackoverflow.com/questions/4458696/finding-out-what-characters-a-font-supports

https://apple.stackexchange.com/questions/287707/get-list-of-all-fonts-containing-a-specific-character/291200#291200

Note: this line is very expensive CPU-wise::

    font = fontconfig.FcFont(font_file)

I wish the ``fontconfig`` library would make it easier
to just iterate over the objects
rather than forcing a conversion each time,
but when I try to iterate it just turns them into strings.
