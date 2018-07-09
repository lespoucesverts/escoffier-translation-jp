(TeX-add-style-hook
 "LGC"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ltjsbook" "openany" "14Q" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fontspec" "no-math") ("footmisc" "bottom" "perpage" "stable") ("hyperref" "unicode=true" "hyperindex=true" "pageanchor")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "00-avant-propos/00-benefactors"
    "00-avant-propos/01-heston"
    "00-avant-propos/02-avant-propos"
    "01-sauces/01-01-pp1-12"
    "01-sauces/01-02-pp13-17"
    "01-sauces/01-03-pp18-27"
    "01-sauces/01-04-pp28-41"
    "01-sauces/01-05-pp42-46"
    "01-sauces/01-06-pp47-52"
    "01-sauces/01-07-pp53-57"
    "01-sauces/01-08-pp58-62"
    "01-sauces/01-09-pp63-67"
    "02-garnitures/02-01-pp68-77"
    "02-garnitures/02-02-pp78-82"
    "02-garnitures/02-03-pp83-88"
    "02-garnitures/02-04-pp89-103"
    "13-legumes/13-01-pp726-727"
    "13-legumes/13-02-pp728-730"
    "13-legumes/13-03-pp730-732"
    "ltjsbook"
    "ltjsbook10"
    "amsmath"
    "amssymb"
    "fontspec"
    "geometry"
    "luaotfload"
    "graphicx"
    "setspace"
    "unicode-math"
    "luatexja"
    "luatexja-fontspec"
    "luatexja-ruby"
    "footmisc"
    "multicol"
    "xfrac"
    "sauceindexdef"
    "index"
    "refcount"
    "hyperref"
    "etoolbox")
   (TeX-add-symbols
    "medlarge"
    "medsmall"
    "atoaki"
    "chaptermark"
    "sectionmark"
    "tightlist"
    "footnote"
    "frac"
    "myhyperlink"
    "item")
   (LaTeX-add-environments
    "equation"
    "frchapenv"
    "frsecenv"
    "frsecbenv"
    "frsubenv"
    "main"
    "recette")
   (LaTeX-add-pagestyles
    "headings"))
 :latex)

