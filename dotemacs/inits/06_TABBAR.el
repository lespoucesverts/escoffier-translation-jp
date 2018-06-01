;;Tabbar

(require 'tabbar)
(tabbar-mode)

(tabbar-mwheel-mode nil)                  ;; マウスホイール無効
(setq tabbar-buffer-groups-function nil)  ;; グループ無効
(setq tabbar-use-images nil)              ;; 画像を使わない

;;--------------------------------------------------------------------------------
;; tabbar
;; (install-elisp "http://www.emacswiki.org/emacs/download/tabbar.el")
;;--------------------------------------------------------------------------------
;;(require 'tabbar)
(when window-system
(tabbar-mode 1)
;; タブ上でマウスホイール操作無効
(tabbar-mwheel-mode -1)
;; グループ化しない
(setq tabbar-buffer-groups-function nil)
;; 省略表示
(setq tabbar-auto-scroll-flag nil)
;; 左に表示されるボタンを無効化
(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-left-button
               tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))
;; タブ同士の間隔
(setq tabbar-separator '(1.0))


(set-face-attribute
'tabbar-default nil
;; :background "#292929"
;;  :background "#242e32"
 :background "#222222"
 :height 1.0
;; :box '(:line-width 15 :color "#292929"))
;;  :box '(:line-width 15 :color "#242e32"))
;; :box '(:line-width 15 :color "222222"))
 :box nil)
(set-face-attribute
  'tabbar-selected nil
;;  :background "#292929"
  ;;   :background "#242e32"
  :background "#222222"
  :foreground "#cb4b16"
  :height 1.0
;;  :box '(:line-width 15 :color "#292929"))
 ;; :box '(:line-width 15 :color "#242e32"))
 ;;:box '(:line-width 15 :color "222222"))
  :box nil)
(set-face-attribute
  'tabbar-unselected nil
;;  :background "#292929"
  ;;   :background "#242e32"
  :background "#222222"
  :foreground "#93a1a1"
  :height 1.0
 ;; :box '(:line-width 15 :color "#292929"))
  ;; :box '(:line-width 15 :color "#242e32"))
  ;; :box '(:line-width 15 :color "222222"))
  :box nil)

(set-face-attribute
   'tabbar-modified nil
 ;;  :background "#292929"
   ;;  :background "#242e32"
     :background "#222222"

   :foreground "#859900"
   :height 1.0
;;   :box '(:line-width 15 :color "#292929"))
;;  :box '(:line-width 15 :color "#242e32"))
;;   :box '(:line-width 15 :color "222222"))
   :box nil)

;;Remove Border
(set-face-attribute 'vertical-border
                    nil
		     :foreground "#282a2e";; 242e32
		     :background "#222222");;:foreground "#252e32");;

;; タブに表示させるバッファの設定
(defvar my-tabbar-displayed-buffers
 '("*swift-repl*" "*eww*" "*Packages*" "*Backtrace*" "*Colors*" "*Faces*" "*Customize" "*vc-")
  "*Regexps matches buffer names always included tabs.")
(defun my-tabbar-buffer-list ()
  "Return the list of buffers to show in tabs.
Exclude buffers whose name starts with a space or an asterisk.
The current buffer and buffers matches `my-tabbar-displayed-buffers'
are always included."
  (let* ((hides (list ?\  ?\*))
         (re (regexp-opt my-tabbar-displayed-buffers))
         (cur-buf (current-buffer))
         (tabs (delq nil
                     (mapcar (lambda (buf)
                               (let ((name (buffer-name buf)))
                                 (when (or (string-match re name)
                                           (not (memq (aref name 0) hides)))
                                   buf)))
                             (buffer-list)))))
    ;; Always include the current buffer.
    (if (memq cur-buf tabs)
        tabs
      (cons cur-buf tabs))))
(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)
)
(global-set-key (kbd "<C-tab>") 'tabbar-forward-tab)
