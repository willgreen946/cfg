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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruvbox-dark-medium))
 '(custom-safe-themes
   '("046a2b81d13afddae309930ef85d458c4f5d278a69448e5a5261a5c78598e012" "d445c7b530713eac282ecdeea07a8fa59692c83045bf84dd112dd738c7bcad1d" default))
 '(package-selected-packages '(gruvbox-theme evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Set width of tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Emacs to save files in this directory
(setq backup-directory-alist `(("." . "~/.saves")))

;; Set C / C++ indentation style
(setq c-default-style "bsd"
  c-basic-offset 2)
  
;; Disable scroll bar
(scroll-bar-mode -1)

;; Startup hook
(add-hook 'emacs-startup-hook (lambda ()
                                (when (get-buffer "*scratch*")
                                  (kill-buffer "*scratch*"))))
(put 'dired-find-alternate-file 'disabled nil)
