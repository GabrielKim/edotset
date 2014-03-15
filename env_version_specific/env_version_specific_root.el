(defvar *_defp_emacs_23* "emacs_23") ; for emacs 23
(defvar *_defp_emacs_23* "emacs_24") ; for emacs 24

(add-to-list 'load-path (concat *_def_env-version-specific* *_defp_emacs_23*))
(add-to-list 'load-path (concat *_def_env-version-specific* *_defp_emacs_24*))

;; for emacs 23
(when (eq emacs-major-version < 24)
  (load-library "env_emacs_23"))
;; for emacs 24
(when (eq emacs-major-version > 23)
  (load-library "env_emacs_24"))

;;(directory-files-and-attributes "")
