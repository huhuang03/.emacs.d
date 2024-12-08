(use-package yaml-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist
		'("\\.yml\\'" . yaml-mode)
		'("\\.yaml\\'" . yaml-mode)
	       ))

(use-package rust-mode
  :ensure t
  :mode "\\.rs\\'"
  :defer t)

(use-package json-mode
  :ensure t
  :mode "\\.json\\'")

(provide 'config-languages)
