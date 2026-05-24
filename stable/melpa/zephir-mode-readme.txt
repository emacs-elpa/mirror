  GNU Emacs major mode for editing Zephir code.  Provides syntax
  highlighting, indentation, movement, Imenu and navigation support.

  Zephir -- is a high level language that eases the creation and
maintainability of extensions for PHP.  Zephir extensions are
exported to C code that can be compiled and optimized by major C
compilers such as gcc/clang/vc++.  Functionality is exposed to the
PHP language.  For more information see URL `https://zephir-lang.com'.

;; Subword Mode:

  GNU Emacs comes with `subword-mode', a minor mode that allows you to
navigate the parts of a “camelCase” as if they were separate words.  For
example, Zephir Mode treats the variable “fooBarBaz” as a whole name by
default.  But if you enable `subword-mode' then Emacs will treat the variable
name as three separate words, and therefore word-related commands
(e.g. “M-f”, “M-b”, “M-d”, etc.) will only affect the “camelCase” part of the
name under the cursor.

  If you want to always use `subword-mode' for Zephir files then you can add
this to your Emacs configuration:

   (add-hook 'zephir-mode-hook
     #(lambda () (subword-mode 1)))

;; Imenu:

  There is a support to jump to namespaces, classes, functions, properties
and constant declarations.

;; Movement:

  Move to the beginning or end of the current block with `beginning-of-defun'
(“C-M-a”) and `end-of-defun' (“C-M-e”) respectively.

;; Indentation:

  Automatic indentation with indentation cycling is provided, it allows you
to navigate different available levels of indentation by hitting “TAB”
several times.  There are two options to use auto-indentation when inserting
newlines:

1) Enable the minor-mode `electric-indent-mode' (enabled by default) and use
   “RET”.  If this mode is disabled use `newline-and-indent', bound to “C-j”.

2) Add the following hook in your init file:

   (add-hook 'zephir-mode-hook
     #'(lambda ()
         (define-key zephir-mode-map "\C-m" 'newline-and-indent)))

  The first option is prefered since you'll get the same behavior for all
modes out-of-the-box.

  `zephir-indent-tabs-mode' can be changed to insert tabs for indentation in
Zephir Mode.  `zephir-indent-level' can be used to contol indentation level
of Zephir statements.

;; Syntax checking:

  Presently flymake/flycheck support is NOT provided.

;; Support:

  Bug tracking is currently handled using the GitHub issue tracker at
`https://github.com/sergeyklay/zephir-mode/issues'.  Feel free to ask
question or make suggestions in our issue tracker.

;; History:

  History is tracked in the Git repository rather than in this file.  See URL
`https://github.com/zephir-lang/zephir-mode/blob/master/NEWS'.

;; Customize && Help:

  See “M-x apropos-command RET ^zephir- RET” for a list of all commands and
“M-x customize-group RET zephir RET” for a list of customizable variables.
