;;yascroll.el

(when window-system
  (setq-default left-fringe-width 12)
  (setq-default right-fringe-width 1)
  (setq solarized-distinct-fringe-background t)
  (global-yascroll-bar-mode 1)
  (setq yascroll:delay-to-hide 3)
)
