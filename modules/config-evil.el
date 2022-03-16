;; this need some better define
(defun go-config-home ()
  (interactive)
  (find-file (expand-file-name "modules/" user-emacs-directory)))


(use-package evil
    :straight t
    :init
        (evil-mode 1)
    :bind
        ;; put it for now, but better is separate to somewhere else?
        (:map evil-normal-state-map
            ("<SPC> fc" . go-config-home)
	    ;; how to do on iwn?
            ("s-/" . comment-line)
            ("C-/" . comment-line)
	    ;; any better idea to put a lambda here?
	    ;; or any better idea to set by some keymap
            )
    ;; :config
    ;; how to let this only work in org-mode?
	;; (evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle)
    )

(use-package key-chord
  :straight t
  :after evil
  :config
    (key-chord-mode 1)
    (setq key-chord-two-keys-delay 0.5)
    (key-chord-define evil-insert-state-map "jk" 'evil-normal-state))

(provide 'config-evil)
