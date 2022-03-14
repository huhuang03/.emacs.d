;; This is something I didn't decide where to put

;; config helm
(use-package helm
    :straight t
    :init
    (helm-mode 1)
    :bind
        (:map evil-normal-state-map
              ("<SPC>ff" . helm-find-files)
	      ("<SPC><SPC>" . helm-M-x)
	      ("<SPC>bb" . helm-buffers-list)
	      )
    )

(provide 'config-other)
