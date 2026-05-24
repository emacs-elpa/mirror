CoffeeScript mode is an Emacs major mode for [CoffeeScript][cs],
unfancy JavaScript.  It provides syntax highlighting, indentation
support, imenu support, a menu bar, and a few cute commands.

Installing this package enables CoffeeScript mode for file named
*.coffee and Cakefile.

Commands:

M-x coffee-compile-file compiles the current file as a JavaScript
file.  Operating on "basic.coffee" and running this command will
save a "basic.js" in the same directory.  Subsequent runs will
overwrite the file.

If there are compilation errors and we the compiler have returned a
line number to us for the first error, the point is moved to that
line, so you can investigate.  If this annoys you, you can set
`coffee-compile-jump-to-error` to `nil`.

M-x coffee-compile-buffer compiles the current buffer to JavaScript
using the command specified by the `coffee-command` variable, and
opens the contents in a new buffer using the mode configured for
".js" files.

M-x coffee-compile-region compiles the selected region to
JavaScript using the same configuration variables as
`coffee-compile-buffer`.

`C-c C-o C-s' (coffee-cos-mode) toggles a minor mode implementing
"compile-on-save" behavior.

M-x coffee-repl starts a repl via `coffee-command` in a new buffer.

Options:

`coffee-tab-width' - Tab width to use when indenting.
`coffee-command'   - CoffeeScript command for evaluating code.
                     Must be in your path.
`coffee-args-repl' - Command line arguments for `coffee-command'
                     when starting a REPL.
`coffee-args-compile'          - Arguments for `coffee-command'
                                 when compiling a file.
`coffee-compiled-buffer-name'  - Name of the scratch buffer used
                                 when compiling CoffeeScript.
`coffee-compile-jump-to-error' - Whether to jump to the first error
                                 if compilation fails.

Please file bugs at <http://github.com/defunkt/coffee-mode/issues>

Thanks:

Major thanks to http://xahlee.org/emacs/elisp_syntax_coloring.html
the instructions.

Also thanks to Jason Blevins's markdown-mode.el and Steve Yegge's
js2-mode for guidance.

TODO:
- Execute {buffer,region,line} and show output in new buffer
- Make prototype accessor assignments like `String::length: -> 10` pretty.
- mirror-mode - close brackets and parens automatically