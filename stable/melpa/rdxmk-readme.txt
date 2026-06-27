rdxmk provides a few tools to make redox development easier in Emacs.
You can run make with no arguments (M-x make-narg RET), make with arguments
(M-x make-warg RET arg RET), run the built in make-qemu and make-all, or use cookbook
(M-x Cookbook RET package RET option RET.) Finally, you can stop
Emacs from inserting files all over your redox/ directory by
going to rdxmk's customization group with `M-x customize-group RET rdxmk RET`
and setting `lockfile-no-pollute` to t.

; Installation

Clone the repo in your ~/.emacs.d/, add
(add-to-list 'load-path "~/.emacs.d/rdxmk")
(load "rdxmk")
to your startup file, and install rdxmk.info to your root
dir file using the shell tool, `install-info`.
For faster load time, run `C-u M-x byte-recompile-directory`
and run it on tne ~/.emacs.d/rdxmk/ directory.
