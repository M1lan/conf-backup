;; Emacs just rocks the house.
;; This is my personal .emacs file, nothing special yet but quite useful already

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
 '(gnus-nntp-server "82.197.221.30")
 '(mail-archive-file-name "~/mailarchive")
 '(mail-setup-hook (quote (message-mode)))
 '(make-backup-files nil)
 '(normal-erase-is-backspace t)
 '(org-agenda-files (quote ("~/gtd/birthday.org" "~/gtd/newgtd.org")))
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
 '(org-export-latex-classes (quote (("article" "\\documentclass[12pt]{article}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{hyperref}" ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}") ("\\paragraph{%s}" . "\\paragraph*{%s}") ("\\subparagraph{%s}" . "\\subparagraph*{%s}")) ("report" "\\documentclass[12pt]{report}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{hyperref}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("book" "\\documentclass[12pt]{book}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{graphicx}
\\usepackage{longtable}
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
 '(tabbar-mode t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "SystemWindow" :foreground "SystemWindowText" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "outline" :family "Courier New"))))
 '(completions-common-part ((t (:inherit default :foreground "red"))))
 '(pp^L-highlight ((((type x w32 mac graphic) (class color)) (:underline "maroon"))))
 '(show-paren-match ((((class color) (background light)) (:background "azure2"))))
 '(tabbar-button-face ((t (:inherit tabbar-default-face :foreground "dark red"))))
 '(tabbar-default-face ((t (:inherit variable-pitch :background "black" :foreground "gray60" :height 0.8))))
 '(tabbar-selected-face ((t (:inherit tabbar-default-face :foreground "blue"))))
 '(tabbar-unselected-face ((t (:inherit tabbar-default-face)))))

;; mozrepl stuff
(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))
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

;; org-mode customization: GTD system 
(global-set-key (kbd "M-7") 'gtd)
(defun gtd ()
   (interactive)
   (find-file "~/mygtd.org")
 )

(setq org-log-done nil)
(setq org-agenda-include-diary nil)
(setq org-deadline-warning-days 7)
(setq org-timeline-show-empty-dates t)
(setq org-insert-mode-line-in-empty-file t)

(setq org-remember-templates
     '(
      ("Todo" ?t "* TODO %^{Brief Description} %^g\n%?\nAdded: %U" "~/gtd/newgtd.org" "Tasks")
      ("Private" ?p "\n* %^{topic} %T \n%i%?\n" "~/gtd/privnotes.org")
      ("WordofDay" ?w "\n* %^{topic} \n%i%?\n" "~/gtd/wotd.org")
      ))

(setq org-agenda-exporter-settings
      '((ps-number-of-columns 1)
        (ps-landscape-mode t)
        (htmlize-output-type 'css)))

(setq org-agenda-custom-commands
      '(
	
	("P" "Projects"   
	 ((tags "PROJECT")))

	("H" "Office and Home Lists"
	 ((agenda)
          (tags-todo "UNI")
          (tags-todo "HOME")
          (tags-todo "COMPUTER")
          (tags-todo "MISC")
          (tags-todo "READING")))

	("D" "Daily Action List"
	 (
          (agenda "" ((org-agenda-ndays 1)
                      (org-agenda-sorting-strategy
                       (quote ((agenda time-up priority-down tag-up) )))
                      (org-deadline-warning-days 0)
                      ))))
	)
      )
(add-hook 'org-agenda-mode-hook 'hl-line-mode)


; make whitespace-mode use just basic coloring
(setq whitespace-style (quote
  ( spaces tabs newline space-mark tab-mark newline-mark)))

;; with Emacs 23.1, you have to set this explicitly (in MS Windows)
;; otherwise it tries to send through OS associated mail client
(setq message-send-mail-function 'message-send-mail-with-sendmail)
;; we substitute sendmail with msmtp
(setq sendmail-program "c:/msmtp-1.4.18-w32/msmtp.exe")
;;need to tell msmtp which account we're using
(setq message-sendmail-extra-arguments '("-a" "milan"))

;; setup gnus for gmail access, not storing passwords here..
(setq mail-host-address "gmail.com")
(setq user-full-name "Milan Santosi")
(setq user-mail-address "milan.santosi@gmail.com")
(setq starttls-use-gnutls t)

;; misc stuff
(require 'tabbar-extension)
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(global-set-key (kbd "C-d") 'dired-other-window)
(global-set-key (kbd "M-[") 'switch-to-next-frame)

