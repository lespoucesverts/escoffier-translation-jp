(TeX-add-style-hook
 "pandoc-escoffier"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("$documentclass$" "$if(fontsize)$$fontsize$" "$endif$$if(lang)$$babel-lang$" "$endif$$if(papersize)$$papersize$paper" "$endif$$if(beamer)$ignorenonframetext" "$if(handout)$handout" "$endif$$if(aspectratio)$aspectratio=$aspectratio$" "$endif$$endif$$for(classoption)$$classoption$$sep$" "$endfor$")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("$fontfamily$" "$for(fontfamilyoptions)$$fontfamilyoptions$$sep$" "$endfor$") ("fontenc" "$if(fontenc)$$fontenc$$else$T1$endif$") ("inputenc" "utf8") ("luatexja-preset" "$for(luatexjapresetoptions)$$luatexjapresetoptions$$sep$" "$endfor$") ("luatexja-fontspec" "$for(luatexjafontspecoptions)$$luatexjafontspecoptions$$sep$" "$endfor$") ("microtype" "$for(microtypeoptions)$$microtypeoptions$$sep$" "$endfor$") ("geometry" "$for(geometry)$$geometry$$sep$" "$endfor$") ("ulem" "normalem") ("babel" "shorthands=off" "$for(babel-otherlangs)$$babel-otherlangs$" "$endfor$main=$babel-lang$") ("natbib" "$natbiboptions$") ("biblatex" "$if(biblio-style)$style=$biblio-style$" "$endif$$for(biblatexoptions)$$biblatexoptions$$sep$" "$endfor$") ("footmisc" "bottom" "perpage" "stable")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-environments-local "VerbatimOut")
   (add-to-list 'LaTeX-verbatim-environments-local "SaveVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "code")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "Verb")
   (TeX-run-style-hooks
    "latex2e"
    "$documentclass$"
    "$documentclass$10"
    "pgfpages"
    "beamerarticle"
    "$fontfamily$"
    "lmodern"
    "setspace"
    "amssymb"
    "amsmath"
    "ifxetex"
    "ifluatex"
    "fixltx2e"
    "fontenc"
    "inputenc"
    "textcomp"
    "mathspec"
    "unicode-math"
    "xeCJK"
    "luatexja-preset"
    "luatexja-fontspec"
    "upquote"
    "microtype"
    "parskip"
    "fancyvrb"
    "xcolor"
    "hyperref"
    "geometry"
    "listings"
    "longtable"
    "booktabs"
    "caption"
    "footnote"
    "graphicx"
    "grffile"
    "ulem"
    "babel"
    "polyglossia"
    "bidi"
    "natbib"
    "biblatex"
    "luatexja"
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
    '("institute" 1)
    '("subtitle" 1)
    '("LR" 1)
    '("RL" 1)
    '("href" 2)
    '("passthrough" 1)
    "medlarge"
    "medsmall"
    "twelveq"
    "thirteenq"
    "fourteenq"
    "fifteenq"
    "atoaki"
    "maxwidth"
    "maxheight"
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
    "RTL"
    "LTR"
    "frchapenv"
    "frsecbenv"
    "frsecenv"
    "frsubenv"
    "main"
    "recette")
   (LaTeX-add-bibliographies
    "$for(bibliography)$$bibliography$$sep$"
    "$endfor$")
   (LaTeX-add-pagestyles
    "headings"))
 :latex)

