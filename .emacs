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

;; Download Gruvbox color scheme 
(unless (package-installed-p 'gruvbox-theme)
  (package-install 'gruvbox-themes))

;; Download nerd icons
(unless (package-installed-p 'nerd-icons)
  (package-install 'nerd-icons))

;; Download treemacs-icons-dired 
(unless (package-installed-p 'treemacs-icons-dired)
  (package-install 'treemacs-icons-dired))

(add-hook 'dired-mode-hook 'treemacs-icons-dired-mode)

;; Download doom-modeline
(unless (package-installed-p 'doom-modeline)
  (package-install 'doom-modeline))

;; Enable doom-modeline
(require 'doom-modeline)
(doom-modeline-mode 1)

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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-light-hard))
 '(custom-safe-themes
   '("b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19" "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69" "a5270d86fac30303c5910be7403467662d7601b821af2ff0c4eb181153ebfc0a" "046a2b81d13afddae309930ef85d458c4f5d278a69448e5a5261a5c78598e012" "d445c7b530713eac282ecdeea07a8fa59692c83045bf84dd112dd738c7bcad1d" default))
 '(package-selected-packages
   '(treemacs-icons-dired spaceline doom-modeline gruvbox-themes gruvbox-theme evil))
 '(tab-bar-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrainsMono Nerd Font Mono" :foundry "JB" :slant normal :weight regular :height 113 :width normal)))))
