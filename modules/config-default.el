;; auto matic rever buffer when chaned out of emacs
(global-auto-revert-mode 1)

;; try change end_of_file to lr
;; https://stackoverflow.com/questions/9760290/emacs-change-default-line-ending
(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
;; (setq-default buffer-file-coding-system 'utf-8-unix)

;; auto complete parentheses
(electric-pair-mode 1)

;; don't gen back file xx~
(setq make-backup-files nil)
(setq create-lockfiles nil)

(defvar th/my-keymap '()
  "type-of value is '(item-value item-desc)
and type-of item-value is")

(defun th/add-key (key binding &optional doc)
  "KEY is the string sequence
BINDING is the symbol which function to call
DOC is the doc"
  (setq th/my-keymap (append th/my-keymap (list (list key binding doc)))))

(server-start)

(defun th/detect_src_home ()
  (if (file-exists-p (expand-file-name "~/source"))
      (expand-file-name "~/source")
    "")
  )

(setq SORUCE_HOME (th/detect_src_home))

(provide 'config-default)
