;;; Package repositories
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   (quote
    (("marmalade" . "https://marmalade-repo.org/packages/")
     ("melpa" . "http://melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(package-initialize)

;;; Config font
(set-frame-font "Monaco-16")
(tool-bar-mode -1)

;;; ido settings
(require 'ido)
(ido-mode t)

;;; Load smartparens
(smartparens-global-mode t)

;;; Config Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands) ;; this is your old M-x
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;; Config company
(add-hook 'after-init-hook 'global-company-mode)

;;; Enable yasnippet
(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

