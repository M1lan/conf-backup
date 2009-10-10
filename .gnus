;; ;; with Emacs 23.1, you have to set this explicitly (in MS Windows)
;; ;; otherwise it tries to send through OS associated mail client
;; (setq message-send-mail-function 'message-send-mail-with-sendmail)
;; ;; we substitute sendmail with msmtp
;; (setq sendmail-program "c:/msmtp-1.4.18-w32/msmtp.exe")
;; ;;need to tell msmtp which account we're using
;; (setq message-sendmail-extra-arguments '("-a" "milan"))
;; ;; you might want to set the following too
;; (setq mail-host-address "gmail.com")
;; (setq user-full-name "Milan Santosi")
;; (setq user-mail-address "milan.santosi@gmail.com")




;; ;; (require 'pop3)

;; ;; (add-to-list 'gnus-secondary-select-methods '(nnml ""))

;; ;; (setq gnus-permanently-visible-groups "mail")

;; ;; (setq gnus-posting-styles
;; ;;    '((".*" (name "Milan Santosi"))))

;; ;; (setq mail-sources					
;; ;;       '((file :path "~/Mail")
;; ;;         (pop :server "pop.gmail.com"
;; ;; 	     :port 995
;; ;; 	     :user "milan.santosi"
;; ;; 	     :connection ssl
;; ;; 	     :leave t)))

;; ;; ;; Configure outbound mail (SMTP)
;; ;; (setq smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;; ;;       smtpmail-smtp-server "smtp.gmail.com"
;; ;;       smtpmail-default-smtp-server "smtp.gmail.com"
;; ;;       send-mail-function 'smtpmail-send-it
;; ;;       message-send-mail-function 'smtpmail-send-it
;; ;;       smtpmail-smtp-service 587
;; ;;       smtpmail-auth-credentials '(("smtp.gmail.com"
;; ;; 				   587
;; ;; 				   "milan.santosi@gmail.com"
;; ;; 				   nil)))


(setq gnus-select-method '(nntp "129.143.4.1"))
(setq user-full-name "Milan Santosi")
(setq user-mail-address "milan.santosi@gmail.com")

(add-to-list 'gnus-secondary-select-methods '(nnimap "gmail"
                                  (nnimap-address "imap.gmail.com")
                                  (nnimap-server-port 993)
                                  (nnimap-stream ssl)))
