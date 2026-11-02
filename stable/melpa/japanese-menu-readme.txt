Translate Emacs GUI menu labels into Japanese by rewriting menu keymaps.
Also translates popup menus (x-popup-menu / popup-menu) using a translated
deep copy so originals are not mutated.

Usage:
  (add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp/"))
  (require 'japanese-menu)
  (japanese-menu-setup)
