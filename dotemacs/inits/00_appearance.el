;(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")))
;;        ("org" . "http://orgmode.org/elpa/")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (solarized-theme material-theme package-utils init-loader ddskk))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(setq max-specpdl-size 10000) ;; デフォルト 1300
(setq max-lisp-eval-depth 10000) ;; デフォルト 600

(defvar is-mac (or (eq window-system 'mac) (featurep 'ns)))

;;(if is-mac (add-hook 'after-init-hook 'mac-change-language-to-us))
(when window-system
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8-unix)
;;    (cond
;;      (is-mac
;;        (require 'ucs-normalize)
;;        (setq file-name-coding-system 'utf-8-hfs)
;;        (setq locale-coding-system 'utf-8-hfs)
;;      )
;;    (t
;;      (setq file-name-coding-system 'utf-8)
;;      (setq locale-coding-system 'utf-8)
;;      )
;;  )
;;(require 'ucs-normalize)
;;(setq file-name-coding-system 'utf-8-hfs)
;;(setq locale-coding-system 'utf-8-hfs)

;;load theme
;;(load-theme 'darcula t)
(load-theme 'solarized-dark t)
;;(load-theme 'solarized-light t)
;;(load-theme 'faff t)
;;(load-theme 'misterioso t)
;;(load-theme 'material t)
;;(load-theme 'dracula t)
;;(load-theme 'flatland t)
;;(load-theme 'flatui-dark t)
;;(load-theme 'ample-zen t)

;; ;;;Solarized theme
;; ;; make the fringe stand out from the background
;;(setq solarized-distinct-fringe-background t)

;; ;; Don't change the font for some headings and titles
;;(setq solarized-use-variable-pitch nil)
;; ;; make the modeline high contrast
;;(setq solarized-high-contrast-mode-line t)

;; ;; Use less bolding
;;(setq solarized-use-less-bold t)


;; ;; Use more italics
;;(setq solarized-use-more-italic t)

;; ;; Use less colors for indicators such as git:gutter, flycheck and similar
;;(setq solarized-emphasize-indicators nil)

;; ;; Don't change size of org-mode headlines (but keep other size-changes)
;; (setq solarized-scale-org-headlines nil)

;; ;; Avoid all font-size changes
;; (setq solarized-height-minus-1 1)
;; (setq solarized-height-plus-1 1)
;; (setq solarized-height-plus-2 1)
;; (setq solarized-height-plus-3 1)
;; (setq solarized-height-plus-4 1)

;;(load-theme 'flatland t)
;;(load-theme 'jazz t)

;; フォント設定
(if is-mac
    (set-face-attribute 'default nil
	     ;:family "Menlo" ;; font
	     :family "Source Code Pro"
             :height 150)    ;; font size
       (set-face-attribute 'default nil
			   ;:family "Inconsolata"
			   :family "Menlo" ;;font
			   :height 130))
;; 日本語フォント
(if is-mac
 (set-fontset-font
  nil 'japanese-jisx0208
   (font-spec :family "Hiragino Kaku Gothic ProN")) ;; font
; (set-fontset-font (frame-parameter nil 'font)
;  'japanese-jisx0208
;  '("TakaoExGothic" . "unicode-bmp")))
;;(setq face-font-rescale-alist
;;      '((".*Hiragino_Kaku_Gothic_pro.*" . 1.0)))
)
;;行間
(setq default-line-spacing 0.2)
;; 起動時のディスプレイサイズ変更(環境に応じて適宜変更)
;;(set-frame-height (next-frame) 49);24.3の場合は46にすること
;;(set-frame-width (next-frame) 84);)
(setq initial-frame-alist
      (append
       '((left . 930)
	 (top . 0)
	 ;;(top . 528)
	 	 (width . 105)
;;	(width . 80)
	 ;;	 (height . 49)
	 (height . 60 )
	 ;;(height . 25)
	 (alpha . (100 72))
	 ;;(alpha . (95 70))
	 (vertical-scroll-bars . nil))
       initial-frame-alist))
(setq default-frame-alist initial-frame-alist)

)


;;ツールバー非表示とターミナルモードでメニューバーを非表示
(if window-system (tool-bar-mode -1) (menu-bar-mode -1))
;;(tool-bar-mode -1)
;;(menu-bar-mode -1)
;スクロールバーを無効化(速度向上)
(when window-system (scroll-bar-mode -1))
;; yes or noをy or n
(fset 'yes-or-no-p 'y-or-n-p)



(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8)

(require 'ucs-normalize)
(set-file-name-coding-system 'utf-8-hfs)
(setq locale-coding-system 'utf-8-hfs)

(fringe-mode (0))

(setq global-whitespace-mode t)


;; タブにスペースを使用する
(setq-default tab-width 4 indent-tabs-mode nil)
