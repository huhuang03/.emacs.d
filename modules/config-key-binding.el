(defun kill-current-buffer ()
  (interactive)
  (kill-buffer nil))

(defun th/open-password-file ()
  (interactive)
  (find-file (expand-file-name "password/password.org.gpg" SOURCE_HOME))
  )

(defun th/open-password-no-pass-file ()
  (interactive)
  (find-file (expand-file-name "password/password_no_password.org" SOURCE_HOME))
  )

(defun go-gtd-file ()
  (interactive)
  (if (file-exists-p (expand-file-name "org/gtd_local.org" SOURCE_HOME))
      (find-file (expand-file-name "org/gtd_local.org" SOURCE_HOME))
    (find-file (expand-file-name "org/gtd.org" SOURCE_HOME)))
  )

(defun go-note-file ()
  (interactive)
  (if (file-exists-p (expand-file-name "org/note_local.org" SOURCE_HOME))
      (find-file (expand-file-name "org/note_local.org" SOURCE_HOME))
    (find-file (expand-file-name "org/note.org" SOURCE_HOME)))
  )

(defun go-dired ()
  (interactive)
  (dired nil))

(th/add-key "fd" 'go-dired)
(th/add-key "bk" 'kill-current-buffer)
(th/add-key "fpp" 'th/open-password-file)
(th/add-key "fpo" 'th/open-password-no-pass-file)
(th/add-key "ft" 'go-gtd-file)
(th/add-key "fn" 'go-note-file)

(with-eval-after-load 'evil
  (define-key evil-normal-state-map (kbd "/") 'helm-swoop)
  )
(provide 'config-key-binding)


;; Ok, I want do that again for keybiding change learder key
;; something like this.

;; I didn't figure out how to do this for now.
;; (setq my-keybindings ("p" . project-command-map??))
