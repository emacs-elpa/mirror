
This package contains

* defuns for downloading and uploading a change
  git-review is used for this
* open-reviews section in magit
    The gerrit changes for the current project are queried using the rest API

    section local keymap:
       RET - opens change in browser
* defun for setting assignee of a gerrit change using rest api `gerrit-rest--set-assignee

(load 'gerrit)
(add-hook 'after-init-hook #'gerrit-mode)
(global-set-key (kbd "C-x i") 'gerrit-upload)
(global-set-key (kbd "C-x o") 'gerrit-download)
(add-hook 'magit-status-sections-hook #'gerrit-magit-insert-status t)

TODOS:
when uploading a new patchset for a change (via `gerrit-upload`) show votes
include votes in  open gerrit review lines
press "ret" on line opens change in browser
parse commit messages and show jira tickets (ret on jira tickets opens them)
write some testcases
reviewers (cache each teammember seperately) -> store it in history file
           make it possible to have named groups of reviewers (e.g. pyeven, pyodd, cpp, web, jobdeck)
           allow to configure it via an *.el file
           add/remove single reviewers from selected group (using +/- key bindings)
           ...;
use (gerrit-rest--get-gerrit-usernames) instead of gerrit-upload-reviewer-history
