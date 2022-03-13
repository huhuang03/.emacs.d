;; put it for now, but better is separate to somewhere else?
(use-package evil
    :straight t
    :init
        (evil-mode 1)
    :bind
        (:map evil-normal-state-map
            ("<SPC> wm" . toggle-frame-fullscreen)))

(provide 'config-evil)