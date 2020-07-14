;; Smex
(setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)


;; Ido
(ido-mode t)
(setq ido-enable-flex-matching t
      ido-use-virtual-buffers t)


;; Projectile
(require 'projectile)

(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(projectile-mode +1)
(setq projectile-project-search-path '("~/Projects/"
				       "~/Projects/farlans"))


;; Company
(require 'company)

(setq company-tooltip-align-annotations t)
(add-hook 'prog-mode-hook 'company-mode)


;; Menu, toolbars, etc..
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq make-backup-files nil)
(defalias 'yes-or-no-p 'y-or-n-p)
(show-paren-mode t)
(setq column-number-mode t)
(windmove-default-keybindings)
(setq create-lockfiles nil)
