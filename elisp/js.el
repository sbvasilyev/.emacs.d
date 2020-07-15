(require 'flycheck)
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint json-jsonlist)))
(flycheck-add-mode 'javascript-eslint 'web-mode)

(add-to-list 'auto-mode-alist '("\\.jsx?$" . web-mode))
(setq web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))

(defun web-mode-init-hook ()
  "Hooks for Web mode"
  (setq web-mode-markup-indent-offset 4)
  (add-node-modules-path)
  (js2-jsx-mode)
  (emmet-mode))
  
(add-hook 'web-mode-hook  'web-mode-init-hook)
