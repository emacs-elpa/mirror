
This package defines a command, `ipe-insert-pair-edit', which
offers a more feature rich alternative to the standard 'M-(' Emacs
keybinding, `insert-parentheses'.  The `ipe-insert-pair-edit'
command allows for the interactive insertion, update and deletion
of `customize'-able PAIRs via the use of overlays.

Executing the `ipe-insert-pair-edit' command will first prompt the
user to enter a `customize'-able MNEMONIC (See: `ipe-pairs' /
`ipe-mode-pairs'), that selects a 'major-mode dependent' PAIR to be
inserted around point.  The PAIR consists of OPEN and CLOSE strings
which delimit text in some fashion.

The OPEN and CLOSE strings are then added to the buffer as
overlays, and the "Insert Pair Edit (ipe)" (`ipe-edit-mode') minor
mode is activated.

The `ipe-edit-mode' supplies commands to interactively and
independently move the overlays representing the OPEN and CLOSE
strings for the inserted PAIR about the buffer, and to either
insert (`ipe-edit--insert-pair'), or discard (`ipe-edit--abort')
them once they have been correctly positioned.

Movement of the OPEN and CLOSE overlays is based upon 'movement
units'.  The 'movement units' are either: characters, words, lines,
or lists (S-expressions).  (For the full list of movement / editing
commands, see the documentation for `ipe-edit-mode'.)

Certain characters between the OPEN and CLOSE overlays can also be
ESCAPE-d.  These characters will be replaced by overlays, which
will be updated by the `ipe-edit-mode' movement commands, and
inserted when the `ipe-edit--insert-pair' command is invoked.

Additional commands are supplied to operate on the CONTENTS of the
PAIR (i.e. the text between the OPEN and CLOSE overlays.)  Text can
be copied, deleted, replaced and case converted.

Full Emacs Menu and Mouse support is included.

Customizations for the mode can be found under the `ipe' group.

-------------------------------------------------------------------
