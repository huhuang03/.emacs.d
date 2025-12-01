(setq use-package-always-ensure t)

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
         ;; if you want which-key integration
         (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package yaml-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist
		'("\\.yml\\'" . yaml-mode)
		'("\\.yaml\\'" . yaml-mode)
	       ))

(use-package rust-mode
  :ensure t
  :mode "\\.rs\\'"
  :defer t)

(use-package json-mode
  :ensure t
  :mode "\\.json\\'")

(use-package powershell
  :ensure t
  :mode "\\.ps1\\'")

(use-package just-mode
  :ensure t
  :mode "^justfile$")

(use-package groovy-mode
  :ensure t
  :mode ("\\.gradle\\'" . groovy-mode))

(use-package toml-mode
  :ensure t
  :mode "\\.tmol\\'")

(use-package kotlin-mode
  :mode "\\.kt\\'")


(use-package cmake-mode
  :ensure t
  :mode (("CMakeLists\\.txt\\'" . cmake-mode)
         ("\\.cmake\\'" . cmake-mode)))

(use-package bazel
  :ensure t
  :mode (("BUILD\\(\\.bazel\\)?\\'" . bazel-mode)
         ("WORKSPACE\\'" . bazel-mode)
         ("\\.bazel\\'" . bazel-mode)
         ("\\.bzl\\'" . bazel-mode)))

(use-package prettier-js)
(add-hook 'js-mode-hook 'pretty-js-mode)
(add-hook 'web-mode-hook 'pretty-js-mode)

(add-hook 'asm-mode-hook
	  (lambda ()
	    (setq tab-width 4)))



; latex
;; 启用 org-mode 的 LaTeX 预览功能
(setq org-startup-with-latex-preview t)  ;; 打开 org 文件就显示预览
(setq org-latex-create-formula-image-program 'dvisvgm) ;; 使用 SVG 显示（更清晰）
(setq org-format-latex-options (plist-put org-format-latex-options :scale 1.0)) ;; 放大公式

;; 可选：自动预览新公式（Org 9.4+ 支持）
(setq org-preview-latex-default-process 'dvisvgm)


(provide 'config-languages)
