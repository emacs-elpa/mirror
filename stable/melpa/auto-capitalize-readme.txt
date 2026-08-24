In `auto-capitalize' minor mode, the first word at the beginning of a paragraph or
sentence (i.e. at `left-margin' on a line following `paragraph-separate', after
`paragraph-start' at `left-margin', or after `sentence-end') is automatically
capitalized when a following whitespace or punctuation character is inserted. The same
is true of the first word of a comment or a string in any `prog-mode' buffers where
`auto-capitalize-mode' is enabled.

The `auto-capitalize-words' variable can be customized so that commonly used proper
nouns and acronyms are capitalized or upcased, respectively.

The `auto-capitalize-yank' option controls whether words in yanked text should by
capitalized in the same way.

To install auto-capitalize.el, copy it to a `load-path' directory, `M-x
byte-compile-file' it, and add this to your site-lisp/default.el or ~/.emacs file:
(autoload 'auto-capitalize-mode "auto-capitalize" "Toggle `auto-capitalize' minor mode
in this buffer." t) (autoload 'turn-on-auto-capitalize-mode "auto-capitalize" "Turn on
`auto-capitalize' minor mode in this buffer." t) (autoload 'enable-auto-capitalize-mode
"auto-capitalize" "Enable `auto-capitalize' minor mode in this buffer." t)

To turn on (unconditional) capitalization in all Text modes, add this to your
site-lisp/default.el or ~/.emacs file: (add-hook 'text-mode-hook
'turn-on-auto-capitalize-mode) To enable (interactive) capitalization in all Text
modes, add this to your site-lisp/default.el or ~/.emacs file: (add-hook
'text-mode-hook 'enable-auto-capitalize-mode)

Or, with `use-package':

(use-package auto-capitalize
    :init
    (auto-capitalize-global-mode))

to enable the mode globally, or

(use-package auto-capitalize

    :hook
    (prog-mode-hook . turn-on-auto-capitalize-mode)
    (text-mode-hook . turn-on-auto-capitalize-mode))

to only enable the mode in specific modes (text- and prog-mode here).

To trigger capitalization for contractions (such as I’ve, I’m, etc.) in text-mode
    buffers, add the following to your init.el:

    (modify-syntax-entry ?' ". " text-mode-syntax-table) ; For ASCII-style apostrophe
    (modify-syntax-entry ?’ ". " text-mode-syntax-table) ; For UNICODE curly apostrophe

This effectively makes the apostrophe a word component, meaning it stops being a word
boundary, and "I’ve", "I’m" etc get counted as a single word.

To prevent a word from ever being capitalized or upcased
(e.g. "http"), simply add it (in lowercase) to the
`auto-capitalize-words' list.

Conversely, to get a word to always get capitalized, regardless of context, insert it,
in uppercase to the same list.

If a word is included, in upper case, in `auto-capitalize-words', and you want to
prevent it from getting capitalized one time, type the word, then use `quoted-insert'
(bound to `C-q' by default) followed by the next punctuation or space character.
