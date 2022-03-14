(defun kill-current-buffer ()
  (interactive)
  (kill-buffer nil))
(with-eval-after-load 'evil
  (define-key evil-normal-state-map (kbd "<SPC>bk") 'kill-current-buffer))
(provide 'config-key-binding)
