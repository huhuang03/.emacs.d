;; For now, it's not useable.

;; Set default coding system (especially for Windows)
(set-default-coding-systems 'utf-8)

;; Add the modules folder to the load path
(add-to-list 'load-path (expand-file-name "modules/" user-emacs-directory))

;; initial straight, use this as package manager
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
  ;;; 这里下不下来怎么办？
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; use package.el to manager plugins and user a variable to define plugin list
(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-enable-at-startup nil)
  (package-initialize)
        )

(use-package org)

(require 'config-default)
(require 'config-ui)
(require 'config-window)
(require 'config-evil)
(require 'config-other)
(require 'config-languages)

;; load local with no error
;; should config SOURCE_HOME in config-local.
(require 'config-local nil)
(require 'config-key-binding nil)
(require 'config-depend-local nil)

(require 'config-end)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doc-view-ghostscript-options
   '("-dNOSAFER" "-dNOPAUSE" "-sDEVICE=png16m" "-dTextAlphaBits=4" "-dBATCH" "-dGraphicsAlphaBits=4" "-dQUIET"))
 '(doc-view-ghostscript-program "/usr/local/bin/gs")
 '(epg-gpg-program "E:/Program Files (x86)/GnuPG/bin/gpg.exe")
 '(org-agenda-files '("~/source/org/gtd.org"))
 '(package-selected-packages
   '(key-chord-mode yasnippet-snippets groovy-mode csharp-mode yaml-mode lua-mode go-mode web-mode cmake-mode markdown-mode github-modern-theme projectile json-mode neotree evil-magit htmlize tiny yasnippet flycheck ace-jump-mode evil monokai-theme key-chord general exec-path-from-shell evil-surround auto-complete auto-complete-c-headers company all-the-icons)))
 '(safe-local-variable-values
   (quote
    ((flycheck-clang-include-path quote
                                  ("/Users/th/source/cppPacman/include/"))
     (flycheck-clahg-include-path quote
                                  ("/Users/th/source/cppPacman/include/"))
     (flycheck-clahg-include-path "/Users/th/source/cppPacman/include/")
     (flycheck-clang-include-path quote
                                  ("~/source/cppPacman/include/"))
     (flycheck-clang-include-path . "~/source/cppPacman/include/")
     (flycheck-clang-includes . "~/source/cppPacman/include")
     (flycheck-clang-includes quote
                              ("~/source/cppPacman/include"))
     (flycheck-clang-includes
      (quote
       ("~/source/cppPacman/include"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 139 :width normal))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(org-table ((t nil))))
(put 'narrow-to-page 'disabled nil)
(put 'downcase-region 'disabled nil)
