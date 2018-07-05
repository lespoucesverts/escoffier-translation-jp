(TeX-add-style-hook
 "le-neveu-de-qn"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ltjsbook" "14Q" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontenc" "T1") ("inputenc" "utf8") ("footmisc" "bottom" "perpage" "stable")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "ltjsbook"
    "ltjsbook10"
    "lmodern"
    "amssymb"
    "amsmath"
    "ifxetex"
    "ifluatex"
    "fixltx2e"
    "fontenc"
    "inputenc"
    "textcomp"
    "unicode-math"
    "upquote"
    "microtype"
    "parskip"
    "hyperref"
    "setspace"
    "luatexja"
    "luatexja-fontspec"
    "luatexja-ruby"
    "multicol"
    "etoolbox"
    "footmisc"
    "index"
    "xfrac")
   (TeX-add-symbols
    '("frsub" 1)
    '("frsecb" 1)
    '("frsec" 1)
    '("frchap" 1)
    '("subtitle" 1)
    "medlarge"
    "medsmall"
    "twelveq"
    "thirteenq"
    "fourteenq"
    "fifteenq"
    "atoaki"
    "oldparagraph"
    "oldsubparagraph"
    "chaptermark"
    "sectionmark"
    "tightlist"
    "myhyperlink"
    "footnote"
    "item"
    "frac")
   (LaTeX-add-environments
    "frchapenv"
    "frsecbenv"
    "frsecenv"
    "frsubenv"
    "main"
    "recette")
   (LaTeX-add-pagestyles
    "headings"))
 :latex)

