;; �Ƹ� ���⿡�� emacs 23�� �ȵǴ� �͵鿡 ���� �͵��� ������ �ǰ� ����Բ� setting�� �ؾ� �Ѵ�.
;; �켱������ ���� ���̺귯�� ���õ��� �ؾ��Ѵ�.

;; 1. Library�� Path�� ����� �ش�.
(defvar *_defp_emacs_23_libraries* (concat "libraries" *_def_slash*) ; for emacs 23

;; 2. emacs 23�� ������ ������ ���.
(defvar *_defp_emacs_23_libraries_all_path* (concat (concat *_def_env-version-specific* *_defp_emacs_23*) *_defp_emacs_23_libraries*))

;; 3. Path�� ������ list�� add ���ش�.
(add-to-list 'load-path *_defp_emacs_23_libraries_all_path*)

;; 4. ���͸����� �˻��Ѵ�.
;; �켱�� cygwin, linux, unix system���� ���Ͻý��� ǥ�õ��� drwxrwxrwx ���� ������� ǥ���Ѵ�(�׷��� ��ǻ� �̰� ��� File System���� ����������. �׷��Ƿ� ��� ���ٰ� �� �� �ִ�.). ���߿� ���͸��� ���õ� �͸� ���Խ����� �����Ͽ� ���͸����� �ƴ����� �����Ѵ�.
;; Reg Expr. : [\\-d]
;; 

;; 5. ���͸��� ����Ʈ�� �ִ´�.

;; 6. �� �ȿ� �ִ� (���͸� ����).el ������ �ҷ��´�.

;; 

;;(load-library "env_emacs_23_libraries")

;; emacs 23���� cl-lib�� ���µ�, �̰��� ������ �����Ͽ� �־��־�� �Ѵ�.
;;(require 'cl-lib)
