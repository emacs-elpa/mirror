folgezett.el implements the Luhmann folgezettel system for org-roam.

When a new org-roam note is captured, the user is prompted to choose a
parent note.  A folgezettel ID is generated from the parent and stored in
the FOLGEZETTEL_ID property.  The parent relationship is recorded in
FOLGEZETTEL_PARENT_ID.

ID structure (alternating number/letter segments):

  Root notes:         1.1, 2.1, 3.1, ...
  Children of 1.1:    1.1a, 1.1b, 1.1c, ...
  Children of 1.1a:   1.1a1, 1.1a2, 1.1a3, ...
  Children of 1.1a1:  1.1a1a, 1.1a1b, ...

Quick start:

  (with-eval-after-load 'org-roam
    (require 'folgezett)
    (folgezett-setup))

Commands:

  folgezett-assign-id          Manually assign or reassign an ID
  folgezett-reparent           Re-parent current note (ID only)
  folgezett-reparent-subtree   Re-parent + recursively update descendants
  folgezett-goto-parent        Jump to the parent note
  folgezett-list-children      Pick and jump to a direct child
  folgezett-show-tree          Display the full folgezettel tree
