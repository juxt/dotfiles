;; Delete trailing whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(show-paren-mode 1)

(add-hook 'text-mode-hook 'turn-on-visual-line-mode)
(add-to-list 'auto-mode-alist '("\\.adoc\\'" . text-mode))

;(require 'cider)
;(require 'clj-refactor)

(defun cljr-clojure-mode-hook ()
    (clj-refactor-mode 1)
    (yas-minor-mode 1) ; for adding require/use/import statements
    ;; This choice of keybinding leaves cider-macroexpand-1 unbound
    (cljr-add-keybindings-with-prefix "C-c C-m"))

(global-set-key "\C-x\C-b" 'ibuffer)
(global-set-key "\C-xg" 'magit-status)
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
;(global-set-key (kbd "C-c r") 'reset)

;;(add-hook 'clojure-mode-hook #'cljr-clojure-mode-hook)
(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'cider-repl-mode-hook #'paredit-mode)
(add-hook 'lisp-mode-hook #'paredit-mode)
(add-hook 'emacs-lisp-mode-hook #'paredit-mode)

;; Window navigation

(windmove-default-keybindings) ; move with Shift-arrow

;; This is less intuitive but doesn't require arrow keys (your fingers
;; can remain on their home keys)

(defun prev-window ()
  (interactive)
  (other-window -1))

(global-set-key (kbd "C-.") #'other-window)
(global-set-key (kbd "C-,") #'prev-window)

;; Window navigation extras (requires package: buffer-move)

(global-set-key (kbd "<M-S-up>") #'buf-move-up)
(global-set-key (kbd "<M-S-down>") #'buf-move-down)
(global-set-key (kbd "<M-S-left>") #'buf-move-left)
(global-set-key (kbd "<M-S-right>") #'buf-move-right)
