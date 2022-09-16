;; parse the keybinding



(with-eval-after-load 'evil
    (dolist (item th/my-keymap)
	(progn
	    (define-key evil-normal-state-map (kbd (concat "<SPC>" (car item))) (car (cdr item))))
	)
    )

(provide 'config-end)
