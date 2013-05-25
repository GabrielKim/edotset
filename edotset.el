;;; edotset.el -- .emacs configuration for Emacs.

;; Copyright (C) 2013 Doohoon Kim.

;; Original Author: Doohoon Kim(Gabriel) <invi@labex2.org>
;; Version: 0.1
;; Keywords: .emacs, dotemacs

;; edotset is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; edotset is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
;; or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
;; License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with edotset. If not, see <http://www.gnu.org/licenses/>.

;; Introduce (English) :
;; edotset is a part of module as other library that mixing into .emacs file,
;; constitution that will able to automatically update.
;; it remaked by seorenn dotemacs set.

;; Introduce (Korean) :
;; edotset은 emacs의 설정을 각 module로 나눈 .emacs 집합으로써, Automatic update가 가능하도록
;; 구성이 되어있습니다. 
;; seorenn님의 dotemacs를 변형하여 제작하였습니다.

;; Note :
;; edotset version 0.1 isn't include Automatically Update function,
;; than version 0.2 will include it function.

;; Contents of Library Packages Information
;; 1. helm (Incremental completion and selection narrowing framework for Emacs, https://github.com/emacs-helm/helm)
;; 2. unicad (Universal Charset Auto Detector, http://www.emacswiki.org/Unicad)
;; 3. autopair (Useful to insert parentheses, braces, quotes and the like in matching pairs, http://www.emacswiki.org/emacs/AutoPairs)
;; 4. magit (Emacs mode for interacting with the Git version control system, http://www.emacswiki.org/emacs/Magit)
;; 5. yasnippet (Template system for Emacs, https://github.com/capitaomorte/yasnippet)
;; 6-1. popup (Visual popup user interface library for Emacs (dependant at Auto-complete), https://github.com/auto-complete/popup-el)
;; 6-2. Auto-complete (The most intelligent auto-completion extension for GNU Emacs, http://cx4a.org/software/auto-complete/)
;; 7. ecb (Emacs Code Browser, http://ecb.sourceforge.net/)
;; 8. Ring+ (Extensions to Ring Module, http://www.emacswiki.org/emacs/ring+.el)
;; 9. facemenu+ (Extensions to facemenu module, http://www.emacswiki.org/emacs-en/download/facemenu%2b.el)
;; 10. color-theme (emacs-lisp mode for skinning your emacs. http://www.nongnu.org/color-theme/#sec5)
;; 11. SMEX (M-x enhancement for Emacs, https://github.com/nonsequitur/smex/)


(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/library")

;; type check. OSX와 Windows, Linux를 Chack한다.
;(cond
; ((eq system-type 'darwin) (load-library "type-osx"))
; ((eq system-type 'windows-nt) (load-library "type-windows"))
; ((eq system-type 'gnu/linux) (load-library "type-gnu_linux")))

;; 가장 중요한 함수들.
(load-library "emacs-env-MustHave")
(load-library "emacs-env-UtilityFunc")

;; 1. emacs를 사용할 전체 환경 load 영역.

;; (1) emacs Key Binding 및 환경 설정 영역.

;; emacs 전체 기능 및 UI 환경 설정.
(load-mylib "emacs-env-master")
;; display에 대한 설정.
(load-mylib "emacs-env-disp")
;; search
(load-mylib "emacs-env-search")
;; file Explorer
(load-mylib "emacs-env-fileExplorer")
;; moving
(load-mylib "emacs-env-moveregion")
;; grep 설정
(load-mylib "emacs-env-grep")
;; ibuffer
(load-mylib "emacs-env-ibuffer")
;; ido
(load-mylib "emacs-env-ido")

;; (2) 외부 프로그램 환경 설정.

;; cygwin에 대한 설정(for windows System).
;(load-mylib "emacs-env-cygwin")

;; 2. library 영역.

;; (1) helm 설정.
(load-mylib "emacs-env-helm")
;; (2) unicad 설정.
(load-mylib "emacs-env-unicad")
;; (3) autopair 설정.
(load-mylib "emacs-env-autopair")
;; (4) magit 설정.
(load-mylib "emacs-env-magit")
;; (5) yasnippet 설정.
(load-mylib "emacs-env-yasnippet")
;; (6-1) popup-el 설정(independant for autocomplete module).
(load-mylib "emacs-env-popup-el")
;; (6-2) autocomplete 설정.
(load-mylib "emacs-env-autocomplete")
;; (7) ECB 설정.
(load-mylib "emacs-env-ecb")
;; (8) Ring+ 설정.
;(load-mylib "emacs-env-ring+")
;; (9) facemenu+ 설정.
;(load-mylib "emacs-env-facemenu+")
;; (10) Color Theme 설정.
(load-mylib "emacs-env-colortheme")
;; (11) SMEX 설정(require IDO).
(load-mylib "emacs-env-SMEX")
