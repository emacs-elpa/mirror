This mode marginally derived from `asm-mode' by Eric Raymond et al.

It defines a private abbrev table that can be used to save abbrevs
for assembler mnemonics.  It binds just five keys:

TAB		tab to next tab stop
:		outdent preceding label, tab to tab stop
comment char	place or move comment
		`pyasm-comment-char' specifies which character this is;
		you can use a different character in different
		Asm mode buffers.
C-j, C-m	newline and tab to tab stop

Code is indented to the first tab stop level.

This mode runs two hooks:
  1) `pyasm-mode-set-comment-hook' before the part of the initialization
     depending on `asm-comment-char', and
  2) `pyasm-mode-hook' at the end of initialization.
