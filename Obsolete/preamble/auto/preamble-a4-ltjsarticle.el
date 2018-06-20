(TeX-add-style-hook
 "preamble-a4-ltjsarticle"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ltjsarticle" "14Q" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontspec" "no-math") ("footmisc" "bottom" "perpage" "stable") ("hyperref" "unicode=true")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "ltjsarticle"
    "ltjsarticle10"
    "amsmath"
    "amssymb"
    "fontspec"
    "geometry"
    "luaotfload"
    "graphicx"
    "unicode-math"
    "luatexja"
    "luatexja-fontspec"
    "luatexja-ruby"
    "layout"
    "setspace"
    "footmisc"
    "multicol"
    "makeidx"
    "hyperref"
    "umoline"
    "xfrac")
   (TeX-add-symbols
    '("frsub" 1)
    '("frsecb" 1)
    '("frsec" 1)
    "medlarge"
    "medsmall"
    "twelveq"
    "fourteenq"
    "fifteenq"
    "maeaki"
    "undemi"
    "untiers"
    "deuxtiers"
    "unquart"
    "troisquarts"
    "quatrequatrieme"
    "uncinquieme"
    "deuxcinquiemes"
    "troiscinquiemes"
    "quatrecinquiemes"
    "unsixieme"
    "cinqsixiemes"
    "quatrequart"
    "footnote"
    "tightlist"
    "cite"
    "item"
    "ul"
    "frac"
    "chaptermark"
    "sectionmark")
   (LaTeX-add-environments
    "frsubenv"
    "recette")
   (LaTeX-add-pagestyles
    "headings"))
 :latex)

