# Curriculum Vitae

A clean CV template.


The typeface is the wonderful Linux Biolinum from the [Libertine Fonts Project](https://libertine-fonts.org).

## Package Information

This template uses the following CTAN packages:

- `nopageno`, for removing page numbers
- `geometry`, for setting page margins
- `libertine`, for using Linux Biolinum
- `newtxmath`, for using Libertine fonts in math mode
- `fontenc`, for Type 1 font encoding
- `parskip`, for easy removal of paragraph indentation 
- `phonenumbers`, for proper typesetting of phone numbers
- `titlesec`, for easy styling of section titles
- `enumitem`, for easy modification of list formatting

If you aren't using any math (pretty safe bet for a CV) you may omit the
loading of `newtxmath` in lines 32-37 of [CV.cls](cv.cls#L32-L37):

https://github.com/AdamBlumDigital/CV/blob/28200816b9e90c401c3903d7406da0b381ba399a/cv.cls#L32-L37

## Compilation

It's a very simple compilation process:

```
latex cv.tex && dvipdfm cv.dvi
```
