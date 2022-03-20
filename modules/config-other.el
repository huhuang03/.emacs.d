;; This is something I didn't decide where to put


;; config 
(require 'epa-file)
(custom-set-variables '(epg-gpg-program  "/usr/local/bin/gpg"))
(setq epa-file-select-keys 0)
(setq epa-pinentry-mode 'loopback)


;; config helm
(use-package helm
    :straight t
    :init
    (helm-mode 1)
    (th/add-key "ff" 'helm-find-files)
    :bind
        (:map evil-normal-state-map
	      ("<SPC><SPC>" . helm-M-x)
	      ("<SPC>bb" . helm-buffers-list)
	      )
    )

;; docker file
(use-package dockerfile-mode
  :straight t
  :mode ("Dockfile\\'" . dockerfile-mode)
  )

(provide 'config-other)
