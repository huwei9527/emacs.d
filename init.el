;;; init.el --- emacs init file -*- lexical-binding : t ; byte-compile-dynamic : t -*-

;;; Code:

(setq emacs-load-start-time (current-time))

;; Must before any configuration package.

;;; Commentary:
;; 

(require 'global-custom
         ;; Specify the file because load-path is set after it is loaded.
         (expand-file-name "lisp/custom/global-custom.el" user-emacs-directory))

(require 'test-custom)

(let* ((file-name-handler-alist nil)) ; Accelerate loading.
  (require 'config-elpa)
  (require 'config-ui)
  (require 'config-auto-save)
  (require 'config-spell)
  (require 'config-evil)
  (require 'config-ace-link)
  (require 'config-ace-jump-mode)
  (require 'config-ivy)
  (require 'config-ffip)
  (require 'config-rainbow-delimiters)
  (require 'config-which-key)
  (require 'config-paredit)
  (require 'config-hideshow)
  (require 'config-company)
  (require 'config-miscellany)
  ;; (require 'config-desktop)
  (require 'config-emacs-lisp)
  (require 'config-tex)
  (require 'test)
  )

;; (require 'evil-surround)
;; (require 'evil-visualstar)
;; (require 'evil-mark-replace)
;; (require 'evil-escape)
;; (require 'etags-select)
;; (require 'evil-matchit)
;; (require 'expand-region)
;; (require 'magit)
;; (require 'hippie-expand)
;; (require 'flymake-find-file-hook)


(defvar emacs-load-time (time-to-seconds (time-since emacs-load-start-time)))
(message "%f" emacs-load-time)
(setq initial-scratch-message (format ";; %f\n" emacs-load-time))

(provide 'init)

;;; init.el ends here
