;;
;; PATH
;;
(setenv "PATH" "/usr/bin:/usr/local/bin:/Library/TeX/texbin" t)
(setq exec-path (append '("/usr/bin" "/usr/local/bin" "/Library/TeX/texbin") exec-path))

;;$lualatex = 'luajittex %O --fmt=luajitlatex.fmt -synctex=1 -interaction=nonstopmode %S';
;; AUCTeX
;;
(with-eval-after-load 'tex-jp
  (dolist (command '("luatex" "pTeX" "pLaTeX" "pBibTeX" "jTeX" "jLaTeX" "jBibTeX" "Mendex"))
    (delq (assoc command TeX-command-list) TeX-command-list)))
					;(setq japanese-TeX-engine-default 'uptex)
(setq japanese-TeX-engine-default 'luatex)
(setq japanese-LaTeX-default-style "ltjsarticle")
;(setq japanese-LaTeX-default-style "jlreq")
(setq TeX-engine 'luatex)
(setq TeX-PDF-from-DVI "Dvipdfmx")
(setq TeX-view-program-selection '((output-pdf "displayline")))
(setq TeX-source-correlate-method 'synctex)
(setq TeX-source-correlate-start-server t)
(setq TeX-source-correlate-mode t)
(add-hook 'LaTeX-mode-hook 'japanese-latex-mode)
(with-eval-after-load 'tex-jp
  (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode))
(add-hook 'LaTeX-mode-hook
          (function (lambda ()
                      (add-to-list 'TeX-command-list
                                   '("Latexmk"
                                     "latexmk %t"
                                     TeX-run-TeX nil (latex-mode) :help "Run Latexmk"))
                      (add-to-list 'TeX-command-list
                                    '("Latexmk-LuaJitTeX"
                                      "latexmk %t"
                                      TeX-run-TeX nil (latex-mode) :help "Run Latexmk-LuaJitLaTeX"))
                      (add-to-list 'TeX-command-list
                                   '("Latexmk-lualatex"
                                     "latexmk -e '$lualatex=q/lualatex %%O %(file-line-error) %(extraopts) %S %(mode) %%S/' -e '$bibtex=q/upbibtex %%O %%B/' -e '$biber=q/biber %%O --bblencoding=utf8 -u -U --output_safechars %%B/' -e '$makeindex=q/upmendex %%O -o %%D %%S/' -norc -gg -pdflua %t"
                                     TeX-run-TeX nil (latex-mode) :help "Run Latexmk-LuaLaTeX"))
                      ;; (add-to-list 'TeX-command-list
                      ;;              '("Displayline"
                      ;;                "/Applications/Skim.app/Contents/SharedSupport/displayline %n %s.pdf \"%b\""
                      ;;                TeX-run-discard-or-function t t :help "Forward search with displayline"))
                      ;; (add-to-list 'TeX-command-list
                      ;;              '("Skim"
                      ;;                "open -a Skim %s.pdf"
                      ;;                TeX-run-discard-or-function t t :help "Run Skim"))
                      ;; (add-to-list 'TeX-command-list
                      ;;              '("Preview"
                      ;;                "open -a Preview %s.pdf"
                      ;;                TeX-run-discard-or-function t t :help "Run Preview"))
                      ;; (add-to-list 'TeX-command-list
                      ;;              '("TeXShop"
                      ;;                "open -a TeXShop %s.pdf"
                      ;;                TeX-run-discard-or-function t t :help "Run TeXShop"))
                      ;; (add-to-list 'TeX-command-list
                      ;;              '("TeXworks"
                      ;;                "synctex view -i \"%n:0:%b\" -o %s.pdf -x \"/Applications/TeXworks.app/Contents/MacOS/TeXworks --position=%%{page+1} %%{output}\""
                      ;;                TeX-run-discard-or-function t t :help "Forward search with TeXworks"))
                      ;; (add-to-list 'TeX-command-list
                      ;;              '("TeXstudio"
                      ;;                "synctex view -i \"%n:0:%b\" -o %s.pdf -x \"/Applications/texstudio.app/Contents/MacOS/texstudio --pdf-viewer-only --page %%{page+1} %%{output}\""
                      ;;                TeX-run-discard-or-function t t :help "Forward search with TeXstudio"))
                      ;; (add-to-list 'TeX-command-list
                      ;;              '("Firefox"
                      ;;                "open -a Firefox %s.pdf"
                      ;;                TeX-run-discard-or-function t t :help "Run Mozilla Firefox"))
                      ;; (add-to-list 'TeX-command-list
                      ;;              '("Chrome"
                      ;;                "open -a \"Google Chrome\" %s.pdf"
                      ;;                TeX-run-discard-or-function t t :help "Run Google Chrome"))
                      (add-to-list 'TeX-command-list
                                   '("AcroRead"
                                     "open -a \"Adobe Acrobat Reader DC\" %s.pdf"
                                     TeX-run-discard-or-function t t :help "Run Adobe Acrobat Reader DC")))))

;;
;; RefTeX with AUCTeX
;;
(with-eval-after-load 'tex-jp
  (add-hook 'LaTeX-mode-hook 'turn-on-reftex))
(setq reftex-plug-into-AUCTeX t)

(setq TeX-auto-save t)
(setq TeX-parse-self t)
;;(setq-default TeX-master nil)





;; サイズ変更の無効化
(setq font-latex-fontify-sectioning 1.0)
;; 太字を無効化
(custom-set-faces 
 '(font-latex-sectioning-5-face ((t (:inherit variable-pitch :foreground "grey22")))))
