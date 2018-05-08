#!/usr/bin/perl
# %O: options
# %D: destination ﬁle (e.g., the name of the postscript ﬁle when converting a dvi ﬁle to postscript).
# %S: source file (e.g., the name of the dvi ﬁle when converting a dvi ﬁle to ps).

#$latex = "platex %O -kanji=utf8 -synctex=1 -interaction=nonstopmode %S";
#$latex = 'uplatex %O -kanji=utf8 -no-guess-input-enc -synctex=1 %S';
#$latex = 'luajittex %O --fmt=luajitlatex.fmt -synctex=1 %S';
$latex = 'lualatex %O  -synctex=1 %S';
$lualatex = 'lualatex %O -synctex=1 %S';
#$bibtex = "pbibtex";
$bibtex = 'upbibtex %O %B';
$biber = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';

#$pdflatex       = 'lualatex %O -synctex=1 %S';

#$dvipdf = "dvipdfmx -p a5 -o %D %S";

#$pdflatex =  "ptex2pdf -l -ot '-synctex=1 -file-line-error' -od '-p b5' %S";
#$pdflatex = "ptex2pdf -u -l -ot '-synctex=1 -file-line-error' -od '-p b5' %S";
#$pdflatex = '~/Library/TeXShop/bin/platex2pdf-utf8';


$pdf_previewer = "open -a Preview.app %S";
#$pdf_previewer = "open -a Skim.app %S";
#$pdf_previewer = "open -a TeXShop.app %S";

#$makeindex = "makeindex";
$makeindex = "upmendex";

# dvi => pdf
#$pdf_mode = 3;
# 0 => update is automatic,
#$pdf_update_method = 0;
# Equivalent to the -pv option.
#$preview_mode = 0;
#$out_dir = "./";

#$sleep_time = 1;
#$recorder = 1;
$pdflatex = 'lualatex %O -synctex=1 -interaction=nonstopmode %S';
#$pdflatex = 'luajittex %O  --fmt="luajitlatex.fmt" -synctex=1 -interaction=nonstopmode %S';
$pdf_mode = 3;
$postscript_mode = $dvi_mode = 0;

$pvc_view_file_via_temporary = 0;
