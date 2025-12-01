;; (straight-use-package 'doom-themes)
(use-package doom-themes
    :straight t
    :config
    (load-theme 'doom-one t))

;; frist try set font to intel mono
;; print all mono font
(defun th-print-mono-font-family ()
  (interactive)
  (message
   "%s"
   (seq-filter (lambda (font)
		(when-let ((info (font-info font)))
		(string-match-p "spacing=100" (aref info 1))))
		(font-family-list))))

;; hide toolbars
(tool-bar-mode -1)

;; set font to IntelOne Mono
(provide 'config-ui)
