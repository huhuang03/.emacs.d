;; This is something I didn't decide where to put
(use-package helm
    :straight t
    :bind
        (:map evil-normal-state-map
            ("<SPC>ff" . helm-find-files))
    )

(provide 'config-other)