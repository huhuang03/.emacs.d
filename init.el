;; use package.el to manager plugins and user a variable to define plugin list
(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-enable-at-startup nil)
  (package-initialize)
  (setq package-archives '(
                          ("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                          ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                          ("elpy" . "https://jorgenschaefer.github.io/packages/")
                          ("org" . "https://orgmode.org/elpa/")
			  )))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package org
  :ensure t)

(setq use-package-always-ensure t)

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doc-view-ghostscript-options
   (quote
    ("-dNOSAFER" "-dNOPAUSE" "-sDEVICE=png16m" "-dTextAlphaBits=4" "-dBATCH" "-dGraphicsAlphaBits=4" "-dQUIET")))
 '(doc-view-ghostscript-program "/usr/local/bin/gs")
 '(org-agenda-files (quote ("~/source/org/gtd.org")))
 '(package-selected-packages
   (quote
    (epa-file elfeed jedi flycheck htmlize ox-reveal counsel ace-window org-bullets try use-package helm-projectile magit yaml-mode evil monokai-theme key-chord hungry-delete which-key general groovy-mode elpy smali-mode exec-path-from-shell markdown-mode helm-swoop csharp-mode omnisharp evil-surround auto-complete yasnippet auto-complete-c-headers projectile all-the-icons lua-mode)))
 '(projectile-mode t nil (projectile))
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
       ("~/source/cppPacman/include")))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(org-table ((t nil))))
(put 'narrow-to-page 'disabled nil)
