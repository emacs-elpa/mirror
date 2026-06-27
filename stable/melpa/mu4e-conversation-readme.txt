In this file we define mu4e-conversation-mode (+ helper functions), which is
used for viewing all e-mail messages of a thread in a single buffer.

TODO: Overrides are not commended.  Use unwind-protect to set handlers?  I don't think it would work.
TODO: Mark visible messages as read.
TODO: Indent user messages?
TODO: Detect subject changes.
TODO: Support fill-paragraph.  See `mu4e-view-fill-long-lines'.
