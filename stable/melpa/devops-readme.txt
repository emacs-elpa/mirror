
`devops.el' offers utilities for running commands on local and remote
machines using org mode.

The package itself needs nothing newer than the org bundled with Emacs
29.  `devops-enable-session-async' is the exception: running shell
blocks asynchronously needs the `:async' support `ob-shell' gained in
Org 9.7 (Emacs 30.1), and turns itself off under an older org rather
than putting blocks in a session it cannot drive.  Hence no (org "9.7")
in Package-Requires: an optional feature should not force everyone to
replace their built-in org.
