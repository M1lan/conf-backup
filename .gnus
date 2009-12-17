;;(setq gnus-select-method '(nntp "129.143.4.1"))
(setq user-full-name "Milan Santosi")
(setq user-mail-address "milan.santosi@gmail.com")

(add-to-list 'gnus-secondary-select-methods '(nnimap "gmail"
                                  (nnimap-address "imap.gmail.com")
                                  (nnimap-server-port 993)
                                  (nnimap-stream ssl)))
