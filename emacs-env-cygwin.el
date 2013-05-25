; For emacs using cygwin shell - begin

(require 'ansi-color)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(let* ((cygwin-root "c:/SystemEmulator/cygwin")
       (cygwin-bin (concat cygwin-root "/bin")))
  (when (and (eq 'windows-nt system-type)
             (file-readable-p cygwin-root))
    (if (require 'cygwin-mount nil t)
        (progn
          (setq cygwin-mount-cygwin-bin-directory "C:/SystemEmulator/cygwin/bin")
          (cygwin-mount-activate)))
    (setenv "PATH" (concat "C:\\SystemEmulator\\cygwin\\bin;" (getenv "PATH")))
    (setq exec-path (cons "c:/SystemEmulator/cygwin/bin" exec-path))

    ;; NT-emacs assumes a Windows shell. Change to baash.
    (setq shell-file-name "bash")
    (setq shell-command-switch "-c")
    (let* ((explicit-shell-file-name shell-file-name)
           (explicit-bash-args '("--noediting" "-c"))))
    
    (setenv "SHELL" explicit-shell-file-name)
    (setq explicit-shell-file-name shell-file-name)

    ;; This removes unsightly ^M characters that would otherwise
    ;; appear in the output of java applications.
    (add-hook 'comint-output-filter-functions 'comint-strip-ctrl-m)))

;; For emacs using cygwin shell - end
