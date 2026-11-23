ert-gwt adds Given-When-Then (GWT) structure to ERT, the standard
testing framework for Emacs Lisp.  Instead of encoding the shape of
a test in a long symbol name you write the structure directly as
macro clauses:

    (ert-gwt-deftest
      (:given ((user (make-user "alice" "secret"))))
      (:when  (login user))
      (:then  (login-redirects-to-home-p user)))

The macro generates a unique ERT test name: either `test-gwt-N'
or, when a `:describe' string clause is present, a slugified
`test-<slug>' name that reads well in ERT reports.

`:given' accepts `let'-style bindings followed by arbitrary setup
forms.  `:when' holds the action under test.  Each `:then' form is
wrapped in `should', so plain ERT expectations apply.

There are no dependencies beyond ERT itself.  One macro, one
counter, one `provide'.
