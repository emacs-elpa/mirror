Handle backspace/delete like IntelliJ IDEs.
Does a simple deletion when:
* Called with an argument
* Inside a string literal
* Have non-spacing characters before/after point, respectively

Deletes region when region is active and delete-active-region
is non-nil.

Otherwise does a smart delete:

When smart deleting backward:
If after indentation level, go back to indentation
If at or before indentation level, delete to end of previous
line

When smart deleting forward:
Delete spaces after point
Smart delete backward at next line

Some ideas taken from https://github.com/itome/smart-backspace
Most of the code was taken from `delete-forward-char' and
`delete-backward-char'

Usage:

(global-set-key (kbd "<backspace>") 'smart-delete-backward)
(global-set-key (kbd "<delete>") 'smart-delete-forward)
