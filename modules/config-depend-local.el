(setq initial-buffer-choice (expand-file-name "org/gtd.org" SOURCE_HOME))

(add-to-list 'load-path (expand-file-name "th-posts.emacs" SOURCE_HOME))

(require 'th-posts-mode)

(provide 'config-depend-local)
