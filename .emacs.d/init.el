(setq user-package-list '(
                          auctex
                          magit
                          ))

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package user-package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'ido)
(ido-mode t)
(setq ido-auto-merge-work-directories-length -1)

;;;; swap ctrl and meta
;; (setq x-ctrl-keysym 'meta)
;; (setq x-meta-keysym 'ctrl)

;;;; org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-startup-folded t)

;; custom keybindings
(global-set-key (kbd "<f5>") 'ibuffer)
(global-set-key (kbd "<f6>") 'whitespace-mode)

;; zero-width chars
(update-glyphless-char-display
  'glyphless-char-display-control
  '((format-control . empty-box) (no-font . hex-code)))

;; emacs
(load-theme 'adwaita t)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq inhibit-startup-screen t)
(setq column-number-mode t)
(setq display-line-numbers-width-start t)
(setq c-default-style "linux")
;; one line at a time
(setq mouse-wheel-scroll-amount '(3 ((shift) . 3)))
;; don't accelerate scrolling
(setq mouse-wheel-progressive-speed nil)
;; scroll window under mouse
(setq mouse-wheel-follow-mouse 't)

(setq-default fill-column 80)
(setq-default cursor-type 'bar)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)

(global-display-line-numbers-mode 1)
(show-paren-mode 1)
(electric-pair-mode 1)
(global-whitespace-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(delete-selection-mode 1)
(winner-mode 1)

;; c and cpp
(eval-after-load 'cc-mode
  '(define-key c-mode-base-map (kbd "C-c o") 'ff-find-other-file))

;; auctex
(defun my-LaTeX-autoload ()
  (auto-fill-mode)
  (flyspell-mode))

(add-hook 'LaTeX-mode-hook 'my-LaTeX-autoload)
(setq font-latex-fontify-script nil)
(setq font-latex-fontify-sectioning 1.0)

;;(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; slime
;;(setq inferior-lisp-program "/usr/bin/sbcl")
;;(setq slime-contribs '(slime-fancy))

(custom-set-faces
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#FFFFFF" :foreground "#2E3436" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "JB" :family "JetBrains Mono NL"))))
 '(font-lock-comment-face ((t (:foreground "dark gray"))))
 '(whitespace-empty ((t (:background "gray91" :foreground "firebrick"))))
 '(whitespace-indentation ((t (:foreground "gainsboro"))))
 '(whitespace-line ((t nil)))
 '(whitespace-line-column ((t nil)))
 '(whitespace-space ((t (:foreground "gainsboro"))))
 '(whitespace-tab ((t (:foreground "gainsboro")))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(custom-set-variables
 '(package-selected-packages '(magit auctex)))
