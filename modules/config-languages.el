;; yaml
(use-package yaml-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist
		'("\\.yml\\'" . yaml-mode)
		'("\\.yaml\\'" . yaml-mode)
	       ))

(provide 'config-languages)
