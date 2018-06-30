(package-initialize)
(init-loader-load)

(global-set-key [?\C\ ] 'set-mark-command)


;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(ansi-color-names-vector
;;    ["#26292c" "#ff4a52" "#40b83e" "#f6f080" "#afc4db" "#dc8cc3" "#93e0e3" "#f8f8f8"])
;;  '(compilation-message-face (quote default))
;;  '(cua-global-mark-cursor-color "#2aa198")
;;  '(cua-normal-cursor-color "#839496")
;;  '(cua-overwrite-cursor-color "#b58900")
;;  '(cua-read-only-cursor-color "#859900")
;;  '(custom-enabled-themes (quote (solarized-dark)))
;;  '(custom-safe-themes
;;    (quote
;;     ("1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "718fb4e505b6134cc0eafb7dad709be5ec1ba7a7e8102617d87d3109f56d9615" "c90fd1c669f260120d32ddd20168343f5c717ca69e95d2f805e42e88430c340e" default)))
;;  '(fci-rule-color "#202325")
;;  '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
;;  '(highlight-symbol-colors
;;    (--map
;;     (solarized-color-blend it "#002b36" 0.25)
;;     (quote
;;      ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
;;  '(highlight-symbol-foreground-color "#93a1a1")
;;  '(highlight-tail-colors
;;    (quote
;;     (("#073642" . 0)
;;      ("#546E00" . 20)
;;      ("#00736F" . 30)
;;      ("#00629D" . 50)
;;      ("#7B6000" . 60)
;;      ("#8B2C02" . 70)
;;      ("#93115C" . 85)
;;      ("#073642" . 100))))
;;  '(hl-bg-colors
;;    (quote
;;     ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
;;  '(hl-fg-colors
;;    (quote
;;     ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
;;  '(hl-paren-background-colors (quote ("#2492db" "#95a5a6" nil)))
;;  '(hl-paren-colors (quote ("#ecf0f1" "#ecf0f1" "#c0392b")))
;;  '(magit-diff-use-overlays nil)
;;  '(nrepl-message-colors
;;    (quote
;;     ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
;;  '(package-selected-packages
;;    (quote
;;     (solarized-theme material-theme package-utils init-loader ddskk)))
;;  '(pos-tip-background-color "#073642")
;;  '(pos-tip-foreground-color "#93a1a1")
;;  '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
;;  '(sml/active-background-color "#34495e")
;;  '(sml/active-foreground-color "#ecf0f1")
;;  '(sml/inactive-background-color "#dfe4ea")
;;  '(sml/inactive-foreground-color "#34495e")
;;  '(term-default-bg-color "#002b36")
;;  '(term-default-fg-color "#839496")
;;  '(vc-annotate-background "#1f2124")
;;  '(vc-annotate-background-mode nil)
;;  '(vc-annotate-color-map
;;    (quote
;;     ((20 . "#ff0000")
;;      (40 . "#ff4a52")
;;      (60 . "#f6aa11")
;;      (80 . "#f1e94b")
;;      (100 . "#f5f080")
;;      (120 . "#f6f080")
;;      (140 . "#41a83e")
;;      (160 . "#40b83e")
;;      (180 . "#b6d877")
;;      (200 . "#b7d877")
;;      (220 . "#b8d977")
;;      (240 . "#b9d977")
;;      (260 . "#93e0e3")
;;      (280 . "#72aaca")
;;      (300 . "#8996a8")
;;      (320 . "#afc4db")
;;      (340 . "#cfe2f2")
;;      (360 . "#dc8cc3"))))
;;  '(vc-annotate-very-old-color "#dc8cc3")
;;  '(weechat-color-list
;;    (quote
;;     (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
;;  '(xterm-color-names
;;    ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
;;  '(xterm-color-names-bright
;;    ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
;; ;;(custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;; ;; '(font-latex-sectioning-5-face ((t (:inherit variable-pitch :foreground "blue4"))))
;; ;; '(markdown-header-list ((t (:inherit defualt :height 0.8))))
;; ;; '(neo-banner-face ((t (:foreground "#93a1a1" :weight normal :height 0.9))))
;; ;; '(neo-dir-link-face ((t (:foreground "#2aa198"))))
;; ;; '(neo-file-link-face ((t (:foreground "#93a1a1"))))
;; ;; '(neo-header-face ((t (:foreground "#93a1a1"))))
;; ;; '(neo-root-dir-face ((t (:foreground "#cb4b16"))))
;; ;; '(neo-vc-default-face ((t (:foreground "#93a1a1"))))
;; ;; '(tabbar-button ((t (:height 0.9 :button nil))))
;; ;; '(tabbar-default ((t (:background "#073642" :foreground "#93a1a1" :height 0.9 :box nil))))
;; ;; '(tabbar-selected ((t (:background "#073642" :foreground "#d33682" :height 0.9 :box nil))))
;; ;; '(tabbar-separator ((t (:background "#073642" :height 0.9 :box nil))))
;; ;; '(tabbar-unselected ((t (:background "#073642" :foreground "#93a1a1" :height 0.9 :box nil))))
;; ;; '(yascroll:thumb-fringe ((t (:background "#2a2933" :foreground "#d33682")))))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(font-latex-sectioning-5-face ((t (:inherit variable-pitch :foreground "blue4"))))
;;  '(neo-banner-face ((t (:foreground "#93a1a1" :weight normal :height 0.9))))
;;  '(neo-dir-link-face ((t (:foreground "#2aa198"))))
;;  '(neo-file-link-face ((t (:foreground "#93a1a1"))))
;;  '(neo-header-face ((t (:foreground "#93a1a1"))))
;;  '(neo-root-dir-face ((t (:foreground "#cb4b16"))))
;;  '(neo-vc-default-face ((t (:foreground "#93a1a1"))))
;;  '(tabbar-button ((t (:height 0.9 :button nil))))
;;  '(tabbar-default ((t (:family "Helvetica Neue" :background "#222222" :foreground "#93a1a1" :height 0.9 :box nil))))
;;  '(tabbar-selected ((t (:background "#222222" :foreground "#d33682" :height 0.9 :box nil))))
;;  '(tabbar-separator ((t (:background "#292929" :height 5 :box nil))))
;;  '(tabbar-unselected ((t (:background "#292929" :foreground "#93a1a1" :height 0.9 :box nil)))))
