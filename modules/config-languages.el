;; csharp

(use-package csharp-mode
  :ensure t
  :config
  ;; (add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-tree-sitter-mode)))
  (add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-mode)))

(use-package tex
  :ensure auctex)
;; (use-package auctex
;;   :ensure t)

(provide 'config-languages)
