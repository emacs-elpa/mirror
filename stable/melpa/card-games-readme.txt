Card games for Emacs, rendered as UNICODE text in a terminal and as
SVG cards on a graphical display.  This file is the umbrella: it
pulls in the individual games and offers a chooser.

Run `M-x card-game' for a menu, or start a game directly:

  `cg-bid'   -- 500, the four-handed partnership trick-taking game,
                played against three computer opponents.
  `cg-gaps'  -- Gaps / Montana / "Hell's Half-Acre" solitaire.

New games register themselves by adding to `card-games-list'.
