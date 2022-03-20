(defun kill-current-buffer ()
  (interactive)
  (kill-buffer nil))
(with-eval-after-load 'evil
  (define-key evil-normal-state-map (kbd "<SPC>bk") 'kill-current-buffer))
(provide 'config-key-binding)


;; Ok, I want do that again for keybiding change learder key
;; something like this.

;; I didn't figure out how to do this for now.
;; (setq my-keybindings ("p" . project-command-map??))
