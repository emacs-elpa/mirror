
This package is a wrapper around eimp.el and provides a complete UI
around all possible imagemagick mogrify commands with a lot of
commands also having autocompletion and hints

Switch the eimp minor mode on programmatically with:

    (eimp-mode 1)

or toggle interactively with M-x eimp-mode RET.

Switch the minor mode on for all image-mode buffers with:

    (autoload 'eimp-mode "eimp" "Emacs Image Manipulation Package." t)
    (add-hook 'image-mode-hook 'eimp-mode)

Then once eimp-mode is enabled, call

    (blimp-interface)

in order to add commands to be executed on the image.
The added commands can be executed with

    (blimp-execute-command-stack)

and cleared with

    (blimp-clear-command-stack)

The prefix of the command can also be changed with

    (blimp-toggle-prefix)
