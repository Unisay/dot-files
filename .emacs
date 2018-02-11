
 '(fansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark)))
 '(desktop-path (quote ("~/.emacs.d/")))
 '(desktop-save-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages (quote (evil fontawesome all-the-icons neotree intero)))
 '(ring-bell-function (quote ignore))
 '(tool-bar-mode nil)
 '(visible-bell t))

;; Disable bell sound
(setq ring-bell-function 'ignore)

;; MELPA repository
(require 'package)
(add-to-list
    'package-archives
      '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; Install Intero
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-smart-open t)
(setq projectile-switch-project-action 'neotree-projectile-action)

(require 'evil)
(evil-mode 0)
