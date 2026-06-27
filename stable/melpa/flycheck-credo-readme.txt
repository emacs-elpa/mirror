This package adds support for credo to flycheck.

To use it, require it and ensure you have elixir-mode set up for flycheck:

  (require 'flycheck-credo)
  (add-hook 'elixir-mode-hook 'flycheck-mode)
