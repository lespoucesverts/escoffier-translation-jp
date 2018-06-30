;;
;; whitespace
;;
;; ;(require 'whitespace)
;; (setq whitespace-style '(face           ; faceで可視化
;;                          trailing       ; 行末
;;                          tabs           ; タブ

;;                          empty          ; 先頭/末尾の空行
;;                          space-mark     ; 表示のマッピング
;;                          tab-mark
;;                          ))

;; (setq whitespace-display-mappings
;;       '((tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

(global-whitespace-mode 1)
