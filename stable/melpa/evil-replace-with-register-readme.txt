
Port of vim plugin ReplaceWithRegister
(http://www.vim.org/scripts/script.php?script_id=2703)

Installation:

put evil-ReplaceWithRegister.el somewhere in your load-path and add these
lines to your .emacs:
(require 'evil-replace-with-register)
;; change default key bindings (if you want) HERE
;; (setq evil-ReplaceWithRegister-key (kbd "gr"))
(evil-ReplaceWithRegister-install)
