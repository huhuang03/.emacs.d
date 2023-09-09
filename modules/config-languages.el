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
;; yaml
(use-package yaml-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist
		'("\\.yml\\'" . yaml-mode)
		'("\\.yaml\\'" . yaml-mode)
	       ))

(provide 'config-languages)
