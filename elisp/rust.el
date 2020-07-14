(require 'rust-mode)
(setq rust-format-on-save t)
(define-key rust-mode-map (kbd "C-c C-c") #'rust-run)
(define-key rust-mode-map (kbd "C-c C-t") #'rust-test)
(define-key rust-mode-map (kbd "C-c C-b") #'rust-compile)

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

(define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
