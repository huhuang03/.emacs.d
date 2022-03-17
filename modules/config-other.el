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
    :bind
        (:map evil-normal-state-map
              ("<SPC>ff" . helm-find-files)
	      ("<SPC><SPC>" . helm-M-x)
	      ("<SPC>bb" . helm-buffers-list)
	      )
	;; (:map helm-swoop-map
	;;       ("C-p" . helm-previous-line)
	;;       ("C-n" . helm-next-line)
	;;       )
    )

(provide 'config-other)
