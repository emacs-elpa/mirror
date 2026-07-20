Track and display modification dates automatically in `org-mode`
buffers with this minor mode.

It uses Git version control to make automatic commits whenever you
save a buffer (per-day with --amend).

A special feature allows auto-enabling the mode for current opened
file in current directory by using `.dir-locals.el`, removing the
need to manually list tracked files.

;; Features:

- Automatically commits buffer changes to a per-file Git repository
in the background (using `--amend` to group daily changes)
- Prompts for confirmation only once per file
- Efficient performance even with large files, thanks to caching
and asynchronous Git operations

;; Configuration:

(add-to-list 'load-path "/path-to/emacs-org-history")
(require 'org-history)

If you dont like using .dir-locals.el, you may disable this feature
 in ~/.emacs:
(setopt org-history-dir-locals-flag nil)

;; Activation: M-x org-history

;; Customization: M-x customize-group RET org-history

Hint: You may use "C-h ." at the end of header to get hint without
 using “mouse over” to see it.

Built-in Emacs alternative: M-x vc-annotate

;; How this works:

We accuratelly do "git commit --amend" for same date or create new
 commit if date changed.
