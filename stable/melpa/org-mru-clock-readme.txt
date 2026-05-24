; Do you often clock in to many different little tasks? Are you
; annoyed that you can't just clock in to one of your most recent
; tasks after restarting Emacs? This package replaces functions like
; `org-clock-select-task' and `org-clock-in-last' with functions
; `org-mru-clock-select-recent-task' and `org-mru-clock-in', which
; first ensure that `org-clock-history' is filled with your
; `org-mru-clock-how-many' most recent tasks, and let you pick from
; a list before clocking in.

; It also uses `completing-read-function' (overridable with
; `org-mru-clock-completing-read') on `org-mru-clock-in' to make
; clocking in even faster.

; To use, require and bind whatever keys you prefer to the
