Jump to any directory zoxide remembers, from a Consult prompt.

  M-x consult-zoxide

Entries keep zoxide's frecency order and are annotated with their score
and, for git checkouts, the branch that is currently out.  Narrowing
keys select subsets: `g' git checkout roots, `w' worktrees, `d' entries
whose directory no longer exists.

A prefix argument lists the vanished entries too, which is how they get
pruned: narrow with `d', then `embark-act-all' the removal action.
Removal refuses to take more than one still-existing directory at a
time, so a mis-narrowed `embark-act-all' cannot empty the database.

Embark integration lives in the optional `consult-zoxide-embark'
file, which registers itself as soon as Embark loads.

`consult-zoxide-read' is the library entry point: it prompts and
returns a directory without visiting it, for callers such as an
Eshell `z' command.
