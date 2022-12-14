;; csharp

(use-package csharp-mode
  :ensure t
  :config
  ;; (add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-tree-sitter-mode)))
  (add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-mode)))

(provide 'config-languages)
