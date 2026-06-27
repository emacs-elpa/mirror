This package provides a number of additional transient infixes and switches.

In particular, the following are defined:

 - `transient-extras-file-list-or-buffer' a defined argument that
   can be used in a transient.  It contains either the current
   buffer, the name of the current file, or the names of the files
   currently marked in `dired'.

 - The class `transient-extras-exclusive-switch', which allows for
   command line switches with defined options to be cycled through.
   This is similar to `transient-switches', but the `choices' slot
   is a list of cons cells, `(value . label)', with label used for
   display.  Ex:
     (transient-define-argument lp-transient--orientation ()
       :description "Print Orientation"
       :class 'transient-extras-exclusive-switch
       :key "o"
       :argument-format "-oorientation-requested=%s"
       :argument-regexp "\\(-oorientation-requested=\\(4\\|5\\|6\\)\\)"
       :choices '(("4" . "90°(landscape)")
                  ("5" . "-90°")
                  ("6" . "180°")))
