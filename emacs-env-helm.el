;; emacs helm ����.

;; path ����
(add-to-list 'load-path "~/.emacs.d/library/helm")
;; helm configure
(require 'helm-config)
;; delay 0.1 ��
(setq helm-idle-delay 0.1)
(setq helm-input-idle-delay 0.1)
;; ����Ű�� M-t
(global-set-key (kbd "M-t") 'helm-for-files)
