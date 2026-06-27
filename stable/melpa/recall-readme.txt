This package `advice-add's `make-process' and friends to store
metadata like; working directory, stdout, start time, end time,
exit code and version control revision for any Emacs subprocesses.

It defines commands to view and manage both currently running
processes and historical processes, accessible via the minibuffer
and a specialized `tabulated-list' buffer.

Joining the functionality of bash reverse-i-search with `proced'.

Enable process surveillance with `recall-mode'.

Includes integration with `embark' and `consult'.

Note:
As this package advices core functionality, usage might have
unintended consequences.  Disable `recall-mode' at the
first signs of process spawning troubles.

Package is inspired by detached.el
