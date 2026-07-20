flex-x adds a completion style based on the built-in `flex' style.

Features:

- Space-separated AND filtering.
- Sorting by minibuffer history and flex score.
- Whole-candidate highlighting for high-score matches.
- Optional regexp expanders for non-ASCII candidates, such as migemo or pyim.

Add `flex-x' to `completion-styles' to enable it:

  (add-to-list 'completion-styles 'flex-x)
