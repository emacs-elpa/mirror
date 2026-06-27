Usage: Foe example if we want to add it to envrc files
  (require 'cloak-mode)
  (setq cloak-mode-patterns '((envrc-file-mode . "[a-zA-Z0-9_]+[ \t]*=[ \t]*\\(.*+\\)$")))
  (add-hook 'envrc-mode-hook 'cloak-mode)
