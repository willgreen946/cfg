(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(ef-themes spacemacs-theme evil)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Packages
(setq package-list
			'(ef-themes evil spacemacs-theme))

;; ansi-term on startup
(add-hook 'emacs-startup-hook
					(lambda ()
						(kill-buffer "*scratch*")
						(ansi-term "/bin/bash")
						))

;; Disable startup splash
(setq inhibit-splash-screen t)

;; Stop making auto save file
(setq auto-save-default nil)

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

;; Add a tab bar
(tab-bar-mode)

;; Fonts
(add-to-list 'default-frame-alist
						 '(font . "spleen-16"))

;; Jazz Theme
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(load-theme 'jazz t)

;; EF-bio theme
(ef-themes-select-dark 'ef-bio)

;; Default C indentation style
(setq c-default-style "bsd"
      c-basic-offset 2)
