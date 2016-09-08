;;; init-vc.el -- init version control setup

;;; Commentary:
;;; git setup

;;; Code:
(require 'use-package)

(use-package git-timemachine
  :commands (git-timemachine))

(use-package gitattributes-mode)

(use-package gitconfig-mode)

(use-package gitignore-mode)

(use-package magit
  :bind ("C-x g" . magit-status))

(provide 'init-vc)
;;; init-vc.el ends here
