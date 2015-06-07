;;; How Packages work in Emacs 24
;;; http://emacswiki.org/emacs/ELPA#toc4

;;; Package repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

;;; Basic configuration
(set-frame-font "Monaco-16")
(tool-bar-mode -1)

;;-------------------------------------
;; Allow access from emacsclient
;;-------------------------------------
(require 'server)
(unless (server-running-p)
        (server-start))

;;; ==================== non-ELPA packages =============
;; Enable yasnippet
(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;; basic initialization, (require) non-ELPA packages, etc.
(setq package-enable-at-startup nil)
(package-initialize)
;; (require) your ELPA packages, configure them as normal

;;; ==================== ELPA packages =============
;; Config Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands) ;; this is your old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; After init hook
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook 'smartparens-global-mode)
(add-hook 'after-init-hook 'smartparens-global-mode)
(add-hook 'after-init-hook 'ido-mode)


