(defvar *_defp_git-modes* "git-modes")
(defvar *_defp_magit* "magit")

(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_git-modes*))
(add-to-list 'load-path (concat *_def_libraries_all_path* *_defp_magit*))
;;(add-to-list 'load-path "~/.emacs.d/library/magit")

(eval-after-load 'info
  '(progn (info-initialize)
          (add-to-list 'Info-directory-list (concat *_def_libraries_all_path* *_defp_magit*))))

(require 'magit)
