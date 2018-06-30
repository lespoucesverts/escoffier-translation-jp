;;Pandoc-mode


(add-hook 'markdown-mode-hook 'pandoc-mode)
(add-hook 'LaTeX-mode-hook 'pandoc-mode)

(add-hook 'pandoc-mode-hook 'pandoc-load-default-settings)

(setq markdown-command 
      "pandoc -f markdown -t html -s --mathjax --highlight-style=pygments")

(define-key markdown-mode-map (kbd "C-c C-p") #'command)
