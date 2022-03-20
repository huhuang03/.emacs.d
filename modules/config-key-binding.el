(defun kill-current-buffer ()
  (interactive)
  (kill-buffer nil))

(defun open-password-file ()
  (interactive)
  (find-file (expand-file-name "password/password.org.gpg" SOURCE_HOME))
  )

(with-eval-after-load 'evil
  (define-key evil-normal-state-map (kbd "<SPC>bk") 'kill-current-buffer)
  (define-key evil-normal-state-map (kbd "/") 'helm-swoop)
  (define-key evil-normal-state-map (kbd "<SPC> fpp") 'open-password-file)
  )
(provide 'config-key-binding)


;; Ok, I want do that again for keybiding change learder key
;; something like this.

;; I didn't figure out how to do this for now.
;; (setq my-keybindings ("p" . project-command-map??))
