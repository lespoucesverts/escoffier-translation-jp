(require 'undohist)
(undohist-initialize)
(setq undohist-ignored-files
   '("/tmp/""COMMIT_EDITMSG"));

;Undo-tree
(global-undo-tree-mode t)
(setq undo-tree-mode-lighter "")
(global-set-key (kbd "M-/") 'undo-tree-redo)
