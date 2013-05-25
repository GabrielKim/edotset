(add-to-list 'load-path "~/.emacs.d/library/auto-complete")

(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/library/auto-complete/ac-dict")
(require 'auto-complete-config)
(ac-config-default)

;(require 'auto-complete-etags))
