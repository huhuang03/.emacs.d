;; auto matic rever buffer when chaned out of emacs
(global-auto-revert-mode 1)

;; try change end_of_file to lr
;; https://stackoverflow.com/questions/9760290/emacs-change-default-line-ending
(setq default-buffer-file-coding-system 'utf-8-unix)

(provide 'config-default)
