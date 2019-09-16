(setq user-package-list '(
                          go-mode
                          magit
                          ws-butler
                          ))

;;(require 'package)
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

;;;; org-mode
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; custom keybindings
(global-set-key (kbd "<f5>") 'ibuffer)
(global-set-key (kbd "<f6>") 'whitespace-mode)

(eval-after-load 'cc-mode
  '(define-key c-mode-base-map (kbd "C-c o") 'ff-find-other-file))

;; other settings
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq inhibit-startup-screen t)
(setq column-number-mode t)
(setq display-line-numbers-width-start t)
(setq-default cursor-type 'bar)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(defalias 'yes-or-no-p 'y-or-n-p)
(global-display-line-numbers-mode 1)
(show-paren-mode 1)
(electric-pair-mode 1)
(global-whitespace-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(delete-selection-mode 1)


(setq c-default-style "k&r")

(setq-default indent-tabs-mode nil)

;; slime
;;(setq inferior-lisp-program "/usr/bin/sbcl")
;;(setq slime-contribs '(slime-fancy))

;; zero-width chars
(update-glyphless-char-display
  'glyphless-char-display-control
  '((format-control . empty-box) (no-font . hex-code)))

;; one line at a time
(setq mouse-wheel-scroll-amount '(3 ((shift) . 3)))

;; don't accelerate scrolling
(setq mouse-wheel-progressive-speed nil)

;; scroll window under mouse
(setq mouse-wheel-follow-mouse 't)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (adwaita)))
 '(custom-safe-themes
   (quote
    ("359d1f63e27651772d5da107ed5dbd8efbf63e01966d5d927b253ab6eb64292b" "f6488c7a896356e5c9a8705090aacd0f5dc83fd05489c30bbad32315172c3821" "e5adab5efa251152918287a3115de34d7f1af9749620ecaeebbf08e0183f1ca2" "e4497ab32364d452a04da3702342860a57c4938a1ee20d0ee9025656aac7de41" "4dfbfa46029121f31a540fc394cd914e4ebaa7f3ffc2513101fead62a44e333f" default)))
 '(global-display-line-numbers-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (cmake-mode flycheck helm-gtags xcscope auctex ws-butler magit go-mode)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 113 :width normal))))
 '(whitespace-empty ((t (:background "gray91" :foreground "firebrick"))))
 '(whitespace-indentation ((t (:background "gray91" :foreground "gainsboro"))))
 '(whitespace-line ((t nil)))
 '(whitespace-line-column ((t nil)))
 '(whitespace-space ((t (:foreground "gainsboro"))))
 '(whitespace-tab ((t (:foreground "gainsboro")))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
