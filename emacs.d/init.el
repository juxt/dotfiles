(require 'package)

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("melpa" . "https://stable.melpa.org/packages/")
	))

;; (add-to-list
;;  'package-archives
;;  '("melpa" . "https://stable.melpa.org/packages/"))
(package-initialize)

(add-hook 'after-init-hook '(lambda nil (load-file "~/.emacs.d/post-init.el")))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(allout-auto-activation t)
 '(allout-primary-bullet "=")
 '(cider-prompt-for-symbol nil)
 '(clojure-toplevel-inside-comment-form t)
 '(custom-enabled-themes (quote (deeper-blue)))
 '(dired-dwim-target t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (helm helm-ghq clj-refactor paredit magit spinner cider)))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
