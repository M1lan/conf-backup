(setq user-full-name "Your Name")
(setq user-mail-address "your.email@gmail.com")

(add-to-list 'gnus-secondary-select-methods '(nnimap "gmail"
                                  (nnimap-address "imap.gmail.com")
                                  (nnimap-server-port 993)
                                  (nnimap-stream ssl)))
