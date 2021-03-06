;;; init-web.el -- setup web stuff

;;; Commentary:
;;; setup web development related stuff

;;; Code:
(require 'use-package)

(use-package emmet-mode
  :commands (emmet-mode)
  :diminish emmet-mode
  :init
  (add-hook 'css-mode-hook  'emmet-mode)
  (add-hook 'sgml-mode-hook 'emmet-mode))

(use-package rainbow-mode
  :commands (rainbow-mode)
  :diminish rainbow-mode
  :init
  (add-hook 'css-mode-hook 'rainbow-mode)
  (add-hook 'scss-mode-hook 'rainbow-mode))

(use-package scss-mode
  :mode ("\\.scss\\'" . scss-mode))

(use-package stylus-mode
  :mode ("\\.styl\\'" . stylus-mode))

(use-package web-mode
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-attr-indent-offset 2)
  (with-eval-after-load 'evil
    (evil-define-key 'insert web-mode-map (kbd "C-y ,") 'emmet-expand-line))
  :init
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode)))

(setq-default css-indent-offset 2)

(provide 'init-web)
;;; init-web.el ends here
