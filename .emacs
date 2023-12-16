(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Evil mode for vi keys
(require 'evil)
(evil-mode 1)

;; Two tab stops
(setq-default tab-width 2)

;; Stop startup screen
(setq inhibit-splash-screen t)

;; Default C indendation style
(setq c-default-style "gnu"
			c-basic-offset 2)
