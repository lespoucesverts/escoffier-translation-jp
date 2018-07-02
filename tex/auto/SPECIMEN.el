(TeX-add-style-hook
 "SPECIMEN"
 (lambda ()
   (TeX-run-style-hooks
    "../preamble/preamble-pdf-a4paper"
    "../preamble/sauces-index-def"
    "Benefactors"
    "../00-avant-propos/00-avant-propos"
    "../01-sauces/01-00"
    "../02-garnitures/02-00"))
 :latex)

