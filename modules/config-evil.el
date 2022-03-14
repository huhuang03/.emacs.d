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
            ("<SPC> wm" . toggle-frame-fullscreen)
            ("<SPC> fc" . go-config-home)
	    ;; any better idea to put a lambda here?
	    ;; or any better idea to set by some keymap
            ))

(provide 'config-evil)
