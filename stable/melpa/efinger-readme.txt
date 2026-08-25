Efinger is a client for the Finger user information protocol
(RFC 1288) with an Elfeed-inspired reader.  Configure a list of
accounts once and browse their `.plan' files from a two-pane
interface: a list of accounts on one side and the fingered content
on the other.

Finger, born at Stanford in 1971, is arguably the first social
network: your whole profile lives in a plain-text `.plan' file that
anyone can read with `finger you@your-host'.  John Carmack famously
kept his development diary this way.

Usage:

  (setq efinger-accounts
        '(("random" "random@happynetbox.com")
          ("Andros" "me@andros.dev")))

  M-x efinger         - open the two-pane reader
  M-x efinger-finger  - finger a single account

In the account list, move with `n' and `p' to preview each `.plan'
in the other pane, press RET to jump into the content, `l' to go
back to the list and `q' to close both panes.
