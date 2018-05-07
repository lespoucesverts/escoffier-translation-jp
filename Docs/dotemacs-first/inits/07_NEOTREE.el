;;Neotree


(global-set-key (kbd "C-x C-d") 'neotree-toggle)
;;隠しファイルをデフォルトで表示
(setq neo-show-hidden-files t)
;;
(setq neo-smart-open t)
;;Work with Projectile



;; neotree でファイルを新規作成した後、自動的にファイルを開く
(setq neo-create-file-auto-open t)

(make-face 'neotree-face)
(set-face-font 'neotree-face "Lucida Sans-12")
 ;;(set-face-background 'neotree-face "#242e32");;282a2e
;; (set-face-background 'neotree-face "#263238");;282a2e


(setq neotree-mode-hook '(lambda () (buffer-face-set 'neotree-face)))
                                        ;(setq neo-theme 'nerd)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-window-width 23)

(custom-set-faces
;; ;;;Neotree
  '(neo-banner-face ((t (:foreground "#93a1a1" :weight normal :height 0.9))))
  '(neo-header-face ((t (:foreground "#93a1a1"))))
  '(neo-root-dir-face ((t (:foreground "#cb4b16"))))
  ;;'(neo-root-dir-face ((t (:foreground "#263238"))))
  '(neo-dir-link-face ((t (:foreground "#2aa198"))))
  '(neo-file-link-face ((t (:foreground "#93a1a1"))))
  '(neo-vc-default-face ((t (:foreground "#93a1a1"))))

  );;end custom-set-faces


;(neotree-toggle)
