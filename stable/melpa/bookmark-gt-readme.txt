
bookmark-gt is a bookmark manager layered on built-in `bookmark.el'
with tags, non-file bookmark types (URL, EWW, Dired, Info, Org
heading, PDF), a `tabulated-list-mode' buffer, and integration
with consult / marginalia / orderless when they are available.

Design principles: records are the only persistent mutable
state, one registry per axis (handlers, filters, sorts), and
bookmark files round-trip with built-in bookmark.el.
Architectural notes for maintainers live under
`ai/architecture.md' in the source repository.

This file is the entry point.  It provides the master switch
`bookmark-gt-mode' and shared utilities used by the other
bookmark-gt-*.el files.
