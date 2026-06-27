`mu4e-query-fragments' allows to define query snippets ("fragments") that
can be used in regular `mu4e' searches or bookmars. Fragments can be used to
define complex filters to apply in existing searches, or supplant bookmarks
entirely. Fragments compose properly with regular mu4e/xapian operators, and
can be arbitrarily nested.

To use `mu4e-query-fragments', use the following:

(require 'mu4e-query-fragments)
(setq mu4e/qf-fragments
  '(("%junk" . "maildir:/Junk OR subject:SPAM")
    ("%hidden" . "flag:trashed OR %junk")))

The terms %junk and %hidden can subsequently be used anywhere in mu4e. See
the documentation of `mu4e/qf-fragments' for more details.

Fragments are *not* shown expanded in order to keep the modeline short. To
test an expansion, use `mu4e/qf-query-expand'.
