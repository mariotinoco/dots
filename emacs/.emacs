;; EMACS USER-INIT-FILE

(setq package-user-dir "/home/mariotinoco/.emacs.d/elpa")

;;
;; Initialize the package system
;;

(require 'package)
(add-to-list
 'package-archives
 '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;;
;; Bindings
;;

;; live re-load user-init-file
(global-set-key [f12]
                (lambda () (interactive) (load-file user-init-file)))

;;
;; Set a backup directory
;;

(setq backup-directory-alist `(("." . "~/.emacs-backup"))) 

;;
;; Disable UI Elements
;;

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;;
;; Enable and format line numbers
;;

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;;
;;  Modernize editor
;;

(cua-mode 1)                      ;; modern key-bindings
(electric-pair-mode 1)            ;; automatically close parenthesis
(show-paren-mode 1)               ;; highlight matching parenthesis
(setq show-paren-delay 0)
(setq show-paren-style 'parenthesis)
(xterm-mouse-mode)

;;
;; auto-complete
;;

(require 'auto-complete)
(global-auto-complete-mode t)

;;
;; columns and tabs
;;

(setq-default fill-column 80)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

;;
;; powerline
;;

(require 'powerline)
(powerline-default-theme)

;;
;; Appearence
;;

;; Theme
(require 'color-theme-sanityinc-tomorrow)
(setq-default custom-safe-themes t)
(setq-default custom-enabled-themes '(sanityinc-tomorrow-eighties))
(color-theme-sanityinc-tomorrow-eighties)

;; Font
(set-default-font "Source Code Pro 12")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(package-selected-packages
   (quote
    (js2-mode gradle-mode use-package powerline neotree dimmer color-theme-sanityinc-tomorrow color-theme base16-theme auto-complete all-the-icons))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; - 
;; No Background
;; -

(defun on-after-init ()                                                ;;
  (unless (display-graphic-p (selected-frame))                         ;;
    (set-face-background 'default "unspecified-bg" (selected-frame)))) ;;
(add-hook 'window-setup-hook 'on-after-init)                           ;;


;; - 
;; neotree
;; -
(setq-default neo-show-hidden-files t)


