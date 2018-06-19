;;auctex latexmk

(eval-after-load "tex"
  '(progn
     (push '("Latexmk" "latexmk %(-PDF) %s" TeX-run-TeX nil t
             :help "Run Latexmk on file")
           TeX-command-list)
     (push '("%(-PDF)"
             (lambda ()
               (if (equal TeX-engine 'luajittex)
                   "-luajittex" "-pdf")))
           TeX-expand-list)))

;; サイズ変更の無効化
(setq font-latex-fontify-sectioning 1.0)
;; 太字を無効化
(custom-set-faces 
 '(font-latex-sectioning-5-face ((t (:inherit variable-pitch :foreground "grey22")))))
