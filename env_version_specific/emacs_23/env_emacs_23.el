;; 아마 여기에는 emacs 23에 안되는 것들에 대한 것들을 강제로 되게 만들게끔 setting을 해야 한다.
;; 우선적으로 없는 라이브러리 셋팅들을 해야한다.

;; 1. Library의 Path를 만들어 준다.
(defvar *_defp_emacs_23_libraries* (concat "libraries" *_def_slash*) ; for emacs 23

;; 2. emacs 23용 설정의 완전한 경로.
(defvar *_defp_emacs_23_libraries_all_path* (concat (concat *_def_env-version-specific* *_defp_emacs_23*) *_defp_emacs_23_libraries*))

;; 3. Path를 생성해 list를 add 해준다.
(add-to-list 'load-path *_defp_emacs_23_libraries_all_path*)

;; 4. 디렉터리들을 검사한다.
;; 우선은 cygwin, linux, unix system들은 파일시스템 표시들을 drwxrwxrwx 같은 방식으로 표현한다(그런데 사실상 이건 모든 File System에서 마찬가지다. 그러므로 모두 같다고 볼 수 있다.). 그중에 디렉터리에 관련된 것만 정규식으로 추출하여 디렉터리인지 아닌지를 구분한다.
;; Reg Expr. : [\\-d]
;; 

;; 5. 디렉터리만 리스트에 넣는다.

;; 6. 그 안에 있는 (디렉터리 네임).el 파일을 불러온다.

;; 

;;(load-library "env_emacs_23_libraries")

;; emacs 23에는 cl-lib이 없는데, 이것을 강제로 생성하여 넣어주어야 한다.
;;(require 'cl-lib)
