;; (straight-use-package 'doom-themes)
(use-package doom-themes
    :straight t
    :config
    (load-theme 'doom-one t))


;; set font size, default is 100
(set-face-attribute 'default nil :height 120)

(provide 'config-ui)
