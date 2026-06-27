This package adds support for elixir to flycheck.  It requires
elixir>=1.2.3.

To use it, add to your init.el:

(require 'flycheck-elixir)
(add-hook 'elixir-mode-hook 'flycheck-mode)
