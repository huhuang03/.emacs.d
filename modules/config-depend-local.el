(setq initial-buffer-choice
      (if (file-exists-p (expand-file-name "org/gtd_local.org" SOURCE_HOME))
	  (expand-file-name "org/gtd_local.org" SOURCE_HOME)
	  (expand-file-name "org/gtd.org" SOURCE_HOME)
	))

(add-to-list 'load-path (expand-file-name "th-posts.emacs" SOURCE_HOME))

(require 'th-posts-mode nil 'noerror)

(provide 'config-depend-local)
