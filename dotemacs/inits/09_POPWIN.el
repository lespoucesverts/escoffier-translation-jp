;;popwin

(popwin-mode 1)
;; (push '(direx:direx-mode :position left :width 40 :dedicated t)
;;       popwin:special-display-config)
;; (global-set-key (kbd "C-c d") 'direx:jump-to-directory-other-window)
;; (global-set-key (kbd "C-x C-d") 'direx:jump-to-directory-other-window)

;; (make-face 'direx-face)
;; (set-face-font 'direx-face "Source Code Pro-13")
;; (setq direx:direx-mode-hook '(lambda () (buffer-face-set 'direx-face)))

;;;helm+popwin
;;(push '("^\\*helm" :regexp t :width 55 :position :left) popwin:special-display-config)

;(setq popwin:special-display-config '(("*tex-shell*")))
; (push '("*tex-shell*" :noselect t :height 7 :position bottom) popwin:special-display-config)
;(push '("*Occur*" :position right) popwin:special-display-config)
