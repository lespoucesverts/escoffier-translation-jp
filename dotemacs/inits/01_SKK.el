;;SKK

(global-set-key "\C-x\C-j" 'skk-mode)
;; (autoload 'skk-mode "skk-mode" nil t)
;; (autoload 'skk-auto-fill-mode "skk-auto-fill-mode" nil t)

;; Enter キーを押したときには確定する
(setq skk-egg-like-newline t)
;; 句読点に ．， を使う
;; (setq skk-kutouten-type 'en)
;; 送り仮名が厳密に正しい候補を優先して表示する
(setq skk-henkan-strict-okuri-precedence t)
;; 辞書登録のとき、余計な送り仮名を送らないようにする
(setq skk-check-okurigana-on-touroku 'auto)
;; look コマンドを使った検索をする(これ便利)
(setq skk-use-look t)
;; migemo を使うから skk-isearch にはおとなしくしていて欲しい
;(setq skk-isearch-start-mode 'latin)
;; 複数の Emacsen を起動して個人辞書を共有する
(setq skk-share-private-jisyo t)
;;; 西暦で表示
(setq skk-date-ad t)
;;; 半角数字
(setq skk-number-style nil)
;;句読点を半角カンマとピリオドにする
;; (setq skk-kuten-touten-alist
;;       (cons '(my-en ". " . ", ")
;; 	    skk-kuten-touten-alist))
;; (setq-default skk-kutouten-type 'my-en)
;; (setq skk-kuten-touten-alist
;;       '(
;; 	(jp . (". " . ", "))
;; 	(en . ("." . ", "))
;; 	))
;; (setq skk-kutouten-type 'en)

(add-hook 'skk-load-hook
          (lambda ()
            ;; コード中では自動的に英字にする。
            (require 'context-skk)
	    ;; ユーザー辞書と自動補完
(if is-mac
    (progn (setq skk-server-host "localhost" ; AquaSKK のサーバー機能を利用
                 skk-server-portnum 1178)    ; ポートは標準
           (add-to-list 'skk-completion-prog-list
                        '(skk-comp-from-jisyo "~/Library/Application Support/AquaSKK/skk-jisyo.utf8"))
	  (setq skk-large-jisyo "~/Library/Application Support/AquaSKK/SKK-JISYO.L"))
  )

            ;; 半角で入力したい文字
;;            (setq skk-rom-kana-rule-list
;;                  (nconc skk-rom-kana-rule-list
;;                         '((";" nil nil)
;;                           (":" nil nil)
;;                           ("?" nil nil)
;;                           ("!" nil nil))))
))

; 閉じ括弧の自動入力
(setq skk-auto-insert-paren t)

;; (defun my-skk-set-kutouten-en ()
;;   (interactive)
;;   (setq skk-kutouten-type 'my-en))
;; (defun my-skk-set-kutouten-jp ()
;;   (interactive)
;;   (setq skk-kutouten-type 'jp))

;; 変換候補をインラインに （XEmacs では機能しません）
;;   nil => 表示しない (デフォルト)
;;   t   => 表示する
;;   'vertical => 縦型インラインに表示する
(setq skk-show-candidates-always-pop-to-buffer t)
(setq skk-show-inline t)

;;(setq skk-show-annotation t)
;; (when skk-show-inline
;;   ;; 変換候補の装飾に変数 `skk-treat-candidate-appearance-function' を利用
;;   ;; するならば、skk-inline-show-face を nil に設定すること
;;   (setq skk-inline-show-face nil
;; 	skk-inline-show-background-color     "#ffffff"	;偶数ラインの背景色
;; 	skk-inline-show-background-color-odd "#888888")) ;奇数ラインの背景色


  
;; 動的補完で候補を複数表示する
;;(setq skk-dcomp-multiple-activate t
;;      skk-dcomp-multiple-rows 20)
;; ローマ字 prefix をみて補完する
;;(setq skk-comp-use-prefix nil)
;; 補完時にサイクルする
;;(setq skk-comp-circulate t)
;; 動的補完時に↓で次の補完へ
;;(define-key skk-j-mode-map (kbd "<down>") 'skk-completion-wrapper)
;; (add-hook 'skk-load-hook
;;           (lambda ()
;;             ;; コード中では自動的に英字にする。
;;             (require 'context-skk)

;;             ;; 半角で入力したい文字
;;             (setq skk-rom-kana-rule-list
;;                   (nconc skk-rom-kana-rule-list
;;                          '((";" nil nil)
;;                            (":" nil nil)
;;                            ("?" nil nil)
;;                            ("!" nil nil))))));; 個人辞書の文字コードを指定する

;; 動的補完
;;(setq skk-dcomp-activate t)


;;Macのコントロールキーを拒否
(setq mac-pass-control-to-system nil)

;; key
(setq skk-kakutei-key (kbd "C-j"))
;(setq mac-pass-control-to-system nil)

;; skkserv
;;(setq skk-server-host "localhost")
;;(setq skk-server-portnum 1178)

;; user dic
(setq skk-jisyo-code 'utf-8)
;; (setq skk-jisyo (concat (getenv "HOME") "/Dropbox/skk/skk-jisyo.utf8"))
(setq skk-share-private-jisyo t)
(setq skk-save-jisyo-instantly t)


;; AZIKを使用する
;; (setq skk-use-azik t)
;; (setq skk-azik-keyboard-type 'us101)



;; isearch
(add-hook 'isearch-mode-hook 'skk-isearch-mode-setup) ; isearch で skk のセットアップ
(add-hook 'isearch-mode-end-hook 'skk-isearch-mode-cleanup) ; isearch で skk のクリーンアップ
(setq skk-isearch-start-mode 'latin)

;; Do not use C-x C-j as dired's binding
(setq dired-bind-jump nil)

;; SKK Cursor Solarized Flavour
(setq skk-use-color-cursor t)
(setq skk-cursor-default-color "#dddddd")
(setq skk-cursor-hiragana-color "#d33682")
(setq skk-cursor-katakana-color "#859900")
(setq skk-cursor-jisx0201-color "#6c71c4")
(setq skk-cursor-jisx0208-latin-color "#b58990")
(setq skk-cursor-latin-color "#bbbbbb")
(setq skk-cursor-abbrev-color "#268bd2")
