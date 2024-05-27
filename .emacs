;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Download Gruvbox color scheme 
(unless (package-installed-p 'gruvbox-theme)
  (package-install 'gruvbox-themes))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-light-hard))
 '(custom-safe-themes
   '("a5270d86fac30303c5910be7403467662d7601b821af2ff0c4eb181153ebfc0a" "046a2b81d13afddae309930ef85d458c4f5d278a69448e5a5261a5c78598e012" "d445c7b530713eac282ecdeea07a8fa59692c83045bf84dd112dd738c7bcad1d" default))
 '(package-selected-packages '(gruvbox-themes gruvbox-theme evil))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Liberation Mono" :foundry "1ASC" :slant normal :weight regular :height 113 :width normal)))))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Set width of tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Emacs to save files in this directory
(setq backup-directory-alist `(("." . "~/.saves")))

;; Set C / C++ indentation style
(setq c-default-style "bsd"
  c-basic-offset 2)

;; Disable menu bar
(menu-bar-mode -1)

;; Disable scroll bar
(scroll-bar-mode -1)

;; Disable tool bar
(tool-bar-mode -1)

;; Enable the tab bar
(tab-bar-mode)

;; Evil mode key bindings
(define-key evil-normal-state-map (kbd "C-f") 'dired)
(define-key evil-normal-state-map (kbd "C-t") 'ansi-term)

;; So that we can use the a key to follow directorys
(put 'dired-find-alternate-file 'disabled nil)
