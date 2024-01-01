(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ansi-term on startup
(add-hook 'emacs-startup-hook
					(lambda ()
						(kill-buffer "*scratch*")
						(ansi-term "/bin/oksh")
						))

;; Disable startup splash
(setq inhibit-splash-screen t)

;; Stop making backups
(setq make-backup-files nil)

;; VI keys 
(require 'evil)
(evil-mode 1)

;; Disable bars
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Two tab indentation
(setq-default tab-width 2)

;; Fonts
(add-to-list 'default-frame-alist
						 '(font . "spleen-16"))

;; Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'jazz t)

;; Default C indentation style
(setq c-default-style "bsd"
      c-basic-offset 2)
