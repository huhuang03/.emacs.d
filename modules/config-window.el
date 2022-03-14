;; for now we define in the 'evil-normal-state-map

(with-eval-after-load 'evil
  (define-key evil-normal-state-map (kbd "<SPC>wm") 'toggle-frame-maximized))
(provide 'config-window)
