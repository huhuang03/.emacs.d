;; This is something I didn't decide where to put


;; config 
(require 'epa-file)
;; check and config.
(if (eq system-type 'windows-nt)
    (custom-set-variables '(epg-gpg-program  "E:/Program Files (x86)/GnuPG/bin/gpg.exe"))
  (custom-set-variables '(epg-gpg-program  "/usr/local/bin/gpg")))

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

(use-package helm-swoop
  :straight t)

;; docker file
(use-package dockerfile-mode
  :straight t
  :mode ("Dockfile\\'" . dockerfile-mode)
  )

(use-package command-log-mode
  :straight t
  )

(use-package lsp-mode
  :straight t
  :init
  ;; look like you can set back by something else.
  (setq lsp-mode-prefix "C-c l")
  ;; To defer LSP server startup(and DidOpen notifications)
  ;; until the buffer is visible
  ;; how can I deisable fly-check only in python mode?
  :hook (python-mode . lsp-deferred)
  :commands (lsp-deferred)
  )
;; (use-package python-mode
;;   :hook (python-mode . lsp-defered))

;; For now, I don't know what helm-lsp is.
;; So you can delete it if you like
(use-package helm-lsp
  :straight t
  :commands helm-lsp-workspace-symbol)

;; give presentation with org-mode
(defun th/presentation-setup ()
  (setq text-sacle-set 3)
  ;; (org-display-inline-images)
  )

(defun th/presentation-end ()
  (text-scale-set 1))

(use-package org-tree-slide
  :straight t
  :bind (
	 ("<f9>" . 'org-tree-slide-move-previous-tree)
	 ("<f10>" . 'org-tree-slide-move-next-tree)
	 )
  :hook ((org-tree-slide-play . th/presentation-setup)
	 (org-tree-slide-stop . th/presentation-end))
  :custom
  (org-image-actual-width nil))

;; enable some org things
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))
(setq org-src-preserve-indentation t)

(provide 'config-other)

