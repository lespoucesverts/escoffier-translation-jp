(setq max-specpdl-size 10000) ;; デフォルト 1300
(setq max-lisp-eval-depth 10000) ;; デフォルト 600

(defvar is-mac (or (eq window-system 'mac) (featurep 'ns)))

(when window-system
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8-unix)
;;日本語コーディング設定Mac用
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8)
(require 'ucs-normalize)
(set-file-name-coding-system 'utf-8-hfs)
(setq locale-coding-system 'utf-8-hfs)

;;load theme
(load-theme 'solarized-dark t)
;;(load-theme 'solarized-light t)
;;(load-theme 'misterioso t)
;;(load-theme 'material t)
;;(load-theme 'ample-zen t)

;; ;;;Solarized theme
;; ;; make the fringe stand out from the background
;;(setq solarized-distinct-fringe-background t)

;; ;; Don't change the font for some headings and titles
(setq solarized-use-variable-pitch nil)
;; ;; make the modeline high contrast
(setq solarized-high-contrast-mode-line t)

;; ;; Use less bolding
(setq solarized-use-less-bold t)
;; ;; Use more italics
(setq solarized-use-more-italic t)

;; ;; Use less colors for indicators such as git:gutter, flycheck and similar
(setq solarized-emphasize-indicators nil)

;; ;; Don't change size of org-mode headlines (but keep other size-changes)
;; (setq solarized-scale-org-headlines nil)

;; ;; Avoid all font-size changes
 (setq solarized-height-minus-1 1)
 (setq solarized-height-plus-1 1)
 (setq solarized-height-plus-2 1)
 (setq solarized-height-plus-3 1)
 (setq solarized-height-plus-4 1)

;; フォント設定Mac用
(if is-mac
    (set-face-attribute 'default nil
             :family "Source Code Pro"
             :height 150)    ;; font size
    (set-face-attribute 'default nil
               :family "Menlo" ;;font
               :height 130))
;; 日本語フォント
(if is-mac
 (set-fontset-font
  nil 'japanese-jisx0208
   (font-spec :family "Hiragino Kaku Gothic ProN")) ;; font
)

;;行間
(setq default-line-spacing 0.2)
;; 起動時のディスプレイサイズ変更(環境に応じて適宜変更)
(setq initial-frame-alist
      (append
       '((left . 930)
         (top . 0)
         (width . 105)
         (height . 60 )
         (alpha . (100 72))
         (vertical-scroll-bars . nil))
       initial-frame-alist))
(setq default-frame-alist initial-frame-alist)
)

;;ツールバー非表示とターミナルモードでメニューバー、スクロールバーを無効化
(if window-system (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1))
;; yes or noをy or n
(fset 'yes-or-no-p 'y-or-n-p)


;; タブにスペースを使用する
(setq-default tab-width 4 indent-tabs-mode nil)
