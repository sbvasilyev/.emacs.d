;; User settings
(setq user-full-name "Sergey Vasilyev")
(setq user-mail-address "sbvasilyev@gmail.com")

;; Packages
(load "package")
(package-initialize)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(defvar ij/packages '(smex
		      projectile
		      company
		      sml-mode
		      paredit
		      flycheck
		      clojure-mode
		      rust-mode
		      racer
		      flycheck-rust
		      zenburn-theme
		      ))

(defun ij/packages-installed-p ()
  (cl-loop for pkg in ij/packages
        when (not (package-installed-p pkg)) do (cl-return nil)
        finally (cl-return t)))

(unless (ij/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg ij/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; Keybinds
(global-set-key (kbd "C-;") 'comment-or-uncomment-region)

;; Theme
(load-theme 'zenburn t)

;; Load minor files
(add-to-list 'load-path "~/.emacs.d/elisp/")
(load-library "lisps")
(load-library "misc")
(load-library "rust")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (clojure-mode sml-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

