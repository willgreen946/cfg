(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "fixed" :foundry "misc" :slant normal :weight medium :height 113 :width normal)))))


;; Set default font
(set-face-attribute
 'default (selected-frame) :font
 "-misc-fixed-medium-r-normal--15-140-75-75-c-90-koi8-r")

;; Set up package.el to work with MELPA
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))

;; Enable Evil
(require 'evil)
(evil-mode 1)

;; Emacs to save files in this directory
(setq backup-directory-alist `(("." . "~/.saves")))

;; Set the width of tab stops
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)

;; Disable scroll bar
(scroll-bar-mode -1)

;; Disable tool bar
(tool-bar-mode -1)

;; Disable menu bar
(menu-bar-mode 1)

;; Default C indentation style
(setq c-default-style "bsd"
  c-basic-offset 2)

;; Disable startup splash screen
(setq inhibit-splash-screen t)

;; Dired at startup
(add-hook 'emacs-startup-hook
  (lambda ()
  (kill-buffer "*scratch*")
  (dired "~/")
  ))
