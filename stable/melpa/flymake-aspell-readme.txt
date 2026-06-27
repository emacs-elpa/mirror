

This file provides a flymake spell-checker for documents using
"aspell" as a backend.  You must be running Emacs 26 or newer.
Enable it by adding the following to your init file:

  (add-hook 'text-mode-hook #'flymake-aspell-setup)
