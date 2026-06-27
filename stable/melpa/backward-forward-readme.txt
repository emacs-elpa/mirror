Summary:
this package provides eclipse-like forward/backward navigation
bound by default to <C-left> (berry-previous-location)
and <C-right> (berry-next-location)
More Info:
backward-forward hooks onto "push-mark" operations and keeps
track of all such operations in a global list of marks called overall-mark-ring
this enables easy navigation forwards and backwards in your history
of marked locations using <C-left> and <C-right> (or feel free to change the keybindings).
Many emacs commands (such as searching or switching buffers)
invoke push-mark.  If there is an operation which you commonly do which
is not generating marks, but which you wish was, you may follow the below
template to hook a call to push-mark onto the command of your choice
     (advice-add 'ggtags-find-tag-dwim :before #'berry-push-mark-wrapper)

the above line of code runs berry-push-mark-wrapper before ggtags-find-tag-dwim
(by doing so, ggtags tag lookups become navigable in my history)

Use C-h k to see what command a given key sequence is invoking.

to use this package, install though the usual emacs package install mechanism
then put the following in your .emacs

 ;(setf evil-compatibility-mode t) ;the line to the left is optional,
 ; and recommended only if you are using evil mode

(require 'backward-forward)
(backward-forward-mode t)

| Commmand                | Keybinding |
|-------------------------+------------|
| berry-previous-location | <C-left>   |
| berry-next-location     | <C-right>  |
