`consult-magit' provides a single command to switch between magit
repositories using `consult'.  It combines several sources:

- open `magit-status' buffers (with preview), and
- a history of repositories previously opened with magit, so you can
  quickly re-open a local repo even after its buffer has been killed.

Optionally (see `consult-magit-include-known-repositories') it can also
offer repositories discovered from `magit-repository-directories'.

The repository history is stored in `consult-magit-repo-history'.  To
persist it across sessions add that variable to
`savehist-additional-variables'.
