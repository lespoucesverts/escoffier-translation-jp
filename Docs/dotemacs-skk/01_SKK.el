;;SKK

(global-set-key "\C-x\C-j" 'skk-mode)
;; Enter キーを押したときには確定する
(setq skk-egg-like-newline t)
;; 句読点に ．， を使う
;; (setq skk-kutouten-type 'en)
;; 送り仮名が厳密に正しい候補を優先して表示する
(setq skk-henkan-strict-okuri-precedence t)
;; 辞書登録のとき、余計な送り仮名を送らないようにする
(setq skk-check-okurigana-on-touroku 'auto)
;; look コマンドを使った検索をする
(setq skk-use-look t)
;; migemo を使うから skk-isearch にはおとなしくしていて欲しい
;(setq skk-isearch-start-mode 'latin)
;; 複数の Emacsen を起動して個人辞書を共有する
;;(setq skk-share-private-jisyo t)
;;; 西暦で表示
(setq skk-date-ad t)
;;; 半角数字
(setq skk-number-style nil)

;; 閉じ括弧の自動入力
(setq skk-auto-insert-paren t)

;; user dic
(setq skk-jisyo-code 'utf-8)
(setq skk-share-private-jisyo t)
(setq skk-save-jisyo-instantly t)

(add-hook 'skk-load-hook
          (lambda ()
            ;; コード中では自動的に英字にする。
            (require 'context-skk)
            ;; ユーザー辞書
            (if is-mac
                (progn (setq skk-server-host "localhost" ; AquaSKK のサーバー機能を利用
                 skk-server-portnum 1178)    ; ポートは標準
                       (add-to-list 'skk-completion-prog-list
                        '(skk-comp-from-jisyo "~/Library/Application Support/AquaSKK/skk-jisyo.utf8"))
           (setq skk-large-jisyo "~/Library/Application Support/AquaSKK/SKK-JISYO.L"))
  )))

;; 半角で入力したい文字
;; (setq skk-rom-kana-rule-list
;;       (nconc skk-rom-kana-rule-list
;;              '((";" nil nil)
;;                (":" nil nil)
;;                ("?" nil nil)
;;                ("!" nil nil))))


;;インラインに変換候補
(setq skk-show-candidates-always-pop-to-buffer t)
(setq skk-show-inline t)

;; 動的補完
;(setq skk-dcomp-activate t)


;;Macのコントロールキーを拒否
(setq mac-pass-control-to-system nil)

;; key
(setq skk-kakutei-key (kbd "C-j"))


;; isearch
(add-hook 'isearch-mode-hook 'skk-isearch-mode-setup) ; isearch で skk のセットアップ
(add-hook 'isearch-mode-end-hook 'skk-isearch-mode-cleanup) ; isearch で skk のクリーンアップ
(setq skk-isearch-start-mode 'latin)

;; Do not use C-x C-j as dired's binding
(setq dired-bind-jump nil)


;; ;; SKK Cursor Solarized Flavour
(setq skk-use-color-cursor t)
(setq skk-cursor-default-color "#dddddd")
(setq skk-cursor-hiragana-color "#d33682")
(setq skk-cursor-katakana-color "#859900")
(setq skk-cursor-jisx0201-color "#6c71c4")
(setq skk-cursor-jisx0208-latin-color "#b58990")
(setq skk-cursor-latin-color "#bbbbbb")
(setq skk-cursor-abbrev-color "#268bd2")
;(set-face-foreground 'skk-emacs-hiragana-face skk-cursor-hiragana-color)
;(set-face-foreground 'skk-emacs-katakana-face skk-cursor-katakana-color)
;(set-face-foreground 'skk-emacs-jisx0201-face skk-cursor-jisx0201-color)
