(setq initial-buffer-choice (expand-file-name "org/gtd.org" SOURCE_HOME))

(defun go-gtd-file ()
  (interactive)
  (find-file (expand-file-name "org/gtd.org" SOURCE_HOME)))

(define-key evil-normal-state-map (kbd "<SPC>ft") 'go-gtd-file)

(provide 'config-depend-local)
