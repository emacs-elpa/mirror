Ariadne is a tool that provides a "go-to-definition" functionality
for Haskell source files.  See https://github.com/feuerbach/ariadne
for more information on Ariadne.

ariadne.el is an Ariadne plugin for Emacs.

Dependencies:

`ariadne.el' depends on `bert.el', BERT serialization library for
Emacs, which can be found at https://github.com/manzyuk/bert-el.

Usage:

The key function is `ariadne-goto-definition', which queries the
Ariadne server about the location of the definition of a name at
point and jumps to that location.  You may wish to bind
`ariadne-goto-definition' to a key, e.g.

(add-hook 'haskell-mode-hook
          (lambda ()
            (define-key haskell-mode-map "\C-cd" 'ariadne-goto-definition)))
