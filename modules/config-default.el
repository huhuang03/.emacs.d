;; auto matic rever buffer when chaned out of emacs
(global-auto-revert-mode 1)

;; try change end_of_file to lr
;; https://stackoverflow.com/questions/9760290/emacs-change-default-line-ending
(setq-default buffer-file-coding-system 'utf-8-unix)

;; auto complete parentheses
(electric-pair-mode 1)

;; don't gen back file xx~
(setq make-backup-files nil)
(setq create-lockfiles nil)

;; Config keybinding
(setq th/my-keymap '())

(defun th/add-key (key binding)
  (setq th/my-keymap (append th/my-keymap (list (list key binding)))))

(server-start)

(provide 'config-default)
