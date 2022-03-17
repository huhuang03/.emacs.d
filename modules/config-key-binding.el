(defun kill-current-buffer ()
  (interactive)
  (kill-buffer nil))

(defun open-password-file ()
  (interactive)
  (find-file (expand-file-name SOURCE_HOME "password/password.org.gpg"))
  )

(with-eval-after-load 'evil
  (define-key evil-normal-state-map (kbd "<SPC>bk") 'kill-current-buffer)
  (define-key evil-normal-state-map (kbd "/") 'helm-swoop)
  (define-key evil-normal-state-map (kbd "<SPC> fpp") 'open-password-file)
  )
(provide 'config-key-binding)
