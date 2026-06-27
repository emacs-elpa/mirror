* org-picklink's README                        :README:

This package contains the command `org-picklink' which pops
up a org-agenda window as link chooser, user can
pick a headline in this org-agenda window, then insert
its link to origin org-mode buffer.

[[./snapshots/org-picklink.gif]]

The simplest installation method is to call:

#+begin_example
(define-key org-mode-map "\C-cl" 'org-picklink)
(org-picklink-enable)
#+end_example

This will bind "C-c l" in org-mode buffer to `org-picklink'.

This can also be done manually, e.g.:

#+begin_example
(define-key org-agenda-mode-map "q" 'org-picklink-quit-window)
(define-key org-agenda-mode-map (kbd "C-RET") 'org-picklink-push-link)
(define-key org-agenda-mode-map (kbd "RET") 'org-picklink-push-link-and-quit-window)
(define-key org-mode-map "\C-cl" 'org-picklink)
#+end_example
