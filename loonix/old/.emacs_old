;; Emacs just rocks the house.
;; This is my personal .emacs file, nothing special yet but quite useful already
(setenv "ERGOEMACS_KEYBOARD_LAYOUT" "dv") ; US Dvorak layout
(load-file "~/.emacs.d/ergoemacs_1.6.2/site-lisp/site-start.el")

;; custom-set stuff is added automatically by M-x customize, personal customizations are below
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(auto-raise-tool-bar-buttons t t)
 '(auto-resize-tool-bars t t)
 '(calendar-week-start-day 1)
 '(case-fold-search t)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(ecb-options-version "2.32")
 '(flyspell-default-dictionary "en_GB")
 '(gnus-nntp-server "82.197.221.30")
 '(ispell-local-dictionary "en_GB")
 '(mail-archive-file-name "~/mailarchive")
 '(mail-setup-hook (quote (message-mode)))
 '(make-backup-files nil)
 '(mouse-autoselect-window t)
 '(mouse-avoidance-mode (quote animate) nil (avoid))
 '(mouse-drag-copy-region t)
 '(normal-erase-is-backspace t)
 '(org-agenda-files (quote ("~/Dropbox/gtd/birthday.org" "~/Dropbox/gtd/newgtd.org")))
 '(org-agenda-ndays 7)
 '(org-agenda-repeating-timestamp-show-all nil)
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-show-all-dates t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-sorting-strategy (quote ((agenda time-up priority-down tag-up) (todo tag-up))))
 '(org-agenda-start-on-weekday nil)
 '(org-agenda-todo-ignore-deadlines t)
 '(org-agenda-todo-ignore-scheduled t)
 '(org-agenda-todo-ignore-with-date t)
 '(org-agenda-window-setup (quote other-window))
 '(org-deadline-warning-days 7)
 '(org-export-html-style "<link rel=\"stylesheet\" type=\"text/css\" href=\"mystyles.css\">")
 '(org-export-latex-classes (quote (("article" "\\documentclass[12pt]{article} \\usepackage[utf8]{inputenc}
 \\usepackage[T1]{fontenc} \\usepackage{graphicx}
 \\usepackage{longtable} \\usepackage{hyperref}" ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}") ("\\paragraph{%s}" . "\\paragraph*{%s}") ("\\subparagraph{%s}" . "\\subparagraph*{%s}")) ("report" "\\documentclass[12pt]{report} \\usepackage[utf8]{inputenc}
 \\usepackage[T1]{fontenc} \\usepackage{graphicx}
 \\usepackage{longtable} \\usepackage{hyperref}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("book" "\\documentclass[12pt]{book}
 \\usepackage[utf8]{inputenc} \\usepackage[T1]{fontenc}
 \\usepackage{graphicx} \\usepackage{longtable}
 \\usepackage{hyperref}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))))
 '(org-fast-tag-selection-single-key nil)
 '(org-log-done (quote (done)))
 '(org-refile-targets (quote (("newgtd.org" :maxlevel . 1) ("someday.org" :level . 2))))
 '(org-reverse-note-order nil)
 '(org-tags-column -78)
 '(org-tags-match-list-sublevels nil)
 '(org-time-stamp-rounding-minutes 5)
 '(org-use-fast-todo-selection t)
 '(org-use-tag-inheritance nil)
 '(shell-file-name "/usr/bin/zsh")
 '(tabbar-scroll-left-button (quote (("<<< ") "")))
 '(tabbar-scroll-right-button (quote ((" >>>") "")))
 '(tabbar-separator (quote ("     ")))
 '(temporary-file-directory "~/.emacs.d/tmp")
 '(word-wrap t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "bitstream" :family "Bitstream Vera Sans Mono"))))
 '(completions-common-part ((t (:inherit default :foreground "red"))))
 '(minibuffer-prompt ((((background dark)) (:background "black" :foreground "green"))))
 '(mode-line ((((class color) (min-colors 88)) (:background "darkolivegreen" :foreground "white"))))
 '(pp^L-highlight ((((type x w32 mac graphic) (class color)) (:underline "maroon"))))
 '(show-paren-match ((((class color) (background light)) (:background "azure2"))))
 '(show-paren-match-face ((t nil)) t)
 '(skype--face-my-message ((t (:background "grey22"))))
 '(skype--face-other-message ((t (:background "grey22"))))
 '(tabbar-button-face ((t (:inherit tabbar-default-face :foreground "dark red"))))
 '(tabbar-default-face ((t (:inherit variable-pitch :background "gray11" :foreground "white" :height 0.8))))
 '(tabbar-selected-face ((t (:inherit tabbar-default-face :foreground "green"))))
 '(tabbar-unselected-face ((t (:inherit tabbar-default-face)))))

;;=======================================================================================
;; My customizations
;;=======================================================================================


;; mozrepl stuff: see http://hyperstruct.net/projects/mozrepl/emacs-integration
(add-to-list 'auto-mode-alist '("\\.js$" . espresso-mode))
(autoload 'inferior-moz-mode "moz" "MozRepl Inferior Mode" t)
(autoload 'moz-minor-mode "moz" "MozRepl Minor Mode" t)
(add-hook 'espresso-mode-hook 'espresso-custom-setup)
(add-hook 'javascript-mode-hook 'javascript-moz-setup)
(defun javascript-moz-setup () (moz-minor-mode 1))
(defun espresso-custom-setup ()(moz-minor-mode 1))

;; auto-install from emacswiki
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/auto-install/")
(auto-install-update-emacswiki-package-name t)
(add-to-list 'load-path "~/.emacs.d/auto-install/")

;; org-mode customization: GTD system 
;; thankfully adopted from   http://members.optusnet.com.au/~charles57/GTD/
(global-set-key (kbd "M-7") 'gtd)
(defun gtd ()
   (interactive)
   (find-file "~/Dropbox/gtd/newgtd.org")
 )
(setq org-log-done nil)
(setq org-agenda-include-diary nil)
(setq org-deadline-warning-days 7)
(setq org-timeline-show-empty-dates t)
(setq org-insert-mode-line-in-empty-file t)
(setq org-remember-templates
      '(("Todo" ?t "* TODO %^{Brief Description} %^g\n%?\nAdded: %U" "~/Dropbox/gtd/newgtd.org" "Tasks")
      ("Private" ?p "\n* %^{topic} %T \n%i%?\n" "~/Dropbox/gtd/privnotes.org")
      ("WordofDay" ?w "\n* %^{topic} \n%i%?\n" "~/Dropbox/gtd/wotd.org")))
(setq org-agenda-exporter-settings
      '((ps-number-of-columns 1)
        (ps-landscape-mode t)
        (htmlize-output-type 'css)))
(setq org-agenda-custom-commands
      '(("P" "Projects"   
	 ((tags "PROJECT")))
	("H" "Office and Home Lists"
	 ((agenda)
          (tags-todo "UNI")
          (tags-todo "HOME")
          (tags-todo "PC")
          (tags-todo "MISC")
          (tags-todo "READING")))
	("D" "Daily Action List"
	 ((agenda "" ((org-agenda-ndays 1)
(org-agenda-sorting-strategy
(quote ((agenda time-up priority-down tag-up) )))
(org-deadline-warning-days 0)))))))
(add-hook 'org-agenda-mode-hook 'hl-line-mode)

;; org-remember mode setup
(org-remember-insinuate)
   (setq org-directory "~/Dropbox/gtd/")
   (setq org-default-notes-file (concat org-directory "/newgtd.org"))
   (define-key global-map "\C-cr" 'org-remember)



;; Always end a file with a newline
(setq require-final-newline t)
;; Stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)


;; make whitespace-mode use just basic coloring
;; Thanks to http://xahlee.org/emacs/whitespace-mode.html
(setq whitespace-style (quote
  ( spaces tabs newline space-mark tab-mark newline-mark)))

;; Email stuff -> http://www.emacswiki.org/cgi-bin/wiki/GnusMSMTP
;; with Emacs 23.1, you have to set this explicitly (in MS Windows)
;; otherwise it tries to send through OS associated mail client
(setq message-send-mail-function 'message-send-mail-with-sendmail)
;; need to tell msmtp which account we're using
(setq message-sendmail-extra-arguments '("-a" "milan"))
;; setup for gmail access, not storing passwords here..
(setq mail-host-address "gmail.com")
(setq user-full-name "Milan Santosi")
(setq user-mail-address "milan.santosi@gmail.com")
(setq starttls-use-gnutls t)

;; tabbar-extension.el from emacswiki
;;(require 'tabbar-extension)
;;(tabbar-mode 1)

;; I dont like the ugly gui elements: the toolbar is buttugly and
;; useless, the menubar makes you wanna grab the mouse and search for
;; whatever you hope to find there (in vain) instead of using internal
;; apropos / help / customize / describe features... scrollbar also
;; makes you wanna grab the mouse and takes up screen estate for each
;; split window
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(setq org-startup-truncated t)

;; window layout undo and redo
(winner-mode)

;; word counting 
(defun wc ()
  (interactive)
  (message "Word count: %s" (how-many "\\w+" (point-min) (point-max))))




;;(add-to-list 'load-path "/usr/share/emacs/site-lisp/w3m/")

;; trying to set up org-babel. I have the feeling something is utterly wrong here.
(add-to-list 'load-path "~/repositories/org-mode/contrib/babel/lisp/")
(add-to-list 'load-path "~/repositories/org-mode/contrib/babel/lisp/langs")
(require 'org-babel)
(require 'org-babel-lob)
(require 'org-babel-exp)
(require 'org-babel-tangle)
(require 'org-babel-R)
(require 'org-babel-ref)
(require 'org-babel-comint)

;; Whoever broke this deserves eternal punishment in hell.
(custom-set-variables '(mouse-drag-copy-region t))

;; a few bindings I use quite often
(global-set-key (kbd "C-d") 'dired)
;;(global-set-key (kbd "<apps>") 'dired-other-window)
;;(global-set-key (kbd "C-D") 'dired-other-frame)
(global-set-key (kbd "M-[") 'switch-to-next-frame)

;; toggle hidden files etc.
(require 'dired-x)
(setq dired-omit-files
      (rx (or (seq bol (? ".") "#")         ;; emacs autosave files
              (seq bol "." (not (any "."))) ;; dot-files
              (seq "~" eol)                 ;; backup-files
              (seq bol "CVS" eol)           ;; CVS dirs
              )))

(setq dired-omit-extensions
      (append dired-latex-unclean-extensions
              dired-bibtex-unclean-extensions
              dired-texinfo-unclean-extensions))

(add-hook 'dired-mode-hook (lambda () (dired-omit-mode 1))) 