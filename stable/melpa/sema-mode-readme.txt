A major mode for editing Sema (.sema) files — a Lisp dialect with
first-class LLM primitives.  Provides syntax highlighting, indentation,
and REPL integration.

Install:
  (add-to-list 'load-path "/path/to/sema/editors/emacs")
  (require 'sema-mode)

Or with use-package:
  (use-package sema-mode
    :load-path "/path/to/sema/editors/emacs"
    :mode "\\.sema\\'")

Homepage: https://sema-lang.com
