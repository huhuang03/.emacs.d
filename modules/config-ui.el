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

;; set font to IntelOne Mono



(font-family-list)


;; set font size, default is 100
(set-face-attribute 'default nil :height 120)

(provide 'config-ui)
