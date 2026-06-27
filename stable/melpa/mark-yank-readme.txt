
When enabled, yank commands are advised to record the point and mark.  The
command `mark-yank' will set the region to the recorded location and activate
the region.

Immediately after yanking, you can press C-x C-x to activate the mark, but
this mode is useful for setting the same region even after you've moved
around and even made changes.

This mode does not bind any keys.  I recommend C-M-y which is unused, similar
to C-y used for yank, and similar to other C-M mark keys like C-M-SPC for
mark sexp.

IMPORTANT: Do not defer loading until you want to mark since the mode must be
enabled to monitor the location of the last yank.  If you are using
use-package, be sure to add `:demand t' to force it to load immediately even
though a key is bound:

   (use-package mark-yank
     :ensure t
     :demand t
     :bind ("C-M-y" . 'mark-yank)
     :config (mark-yank-mode 1))
