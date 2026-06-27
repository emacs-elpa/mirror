* flycheck-aspell :README:

** IMPORTANT FOR USERS

This repository now also contains the =flymake-aspell= package,
which is what I currently use for spellchecking.
Documentation regarding said package can be found in its =.el=
file.

The =flymake-aspell= package is more recent and written in a more
consistent style, which might make it faster and more featureful
than =flycheck-aspell=.

However =flycheck-aspell= should still remain usable for the
forseeable future.

![[file:screenshot.png][flycheck-aspell in action]]

This package adds support for spell checking to flycheck using
the [[http://aspell.net][GNU aspell]] application.

It is a successor (and complete rewrite) to my
[[https://github.com/leotaku/flycheck-hunspell][flycheck-hunspell]]
project, which was crippled by the bad performance of hunspell when
used with larger files.
(aspell performs aproximately 30x faster in the cases I tested.)

Aspell also seems to be a bit more flexible than hunspell with regard
to filters, which might prove to be useful in the future.

** Installation

I recommend using [[https://github.com/raxod502/straight.el][straight.el]] for
installing non-(m)elpa sources.

** Usage

Simply register your preferred checkers with flycheck and then start =flycheck-mode=
in the buffer you would like to spell-check.
(see [[Features]] for supported filetypes)

#+begin_src elisp
(require 'flycheck-aspell)
(add-to-list 'flycheck-checkers 'tex-aspell-dynamic)
#+end_src

The dictionary the checkers use is determined by the value of
`ispell-local-dictionary` or `ispell-dictionary`.

It might be wise to skim the [[https://www.flycheck.org/en/latest/][flycheck docs]]
to learn how to efficently use and configure flycheck.

You also need to install the GNU =aspell= and =sed= binaries.
=sed= is needed for preprocessing the file that is sent to aspell
with high performance.

All major linux distributions should package these and there are
probably working macports or something.

** Configuration

For seamless Ispell integration, I recommend setting the following variables:

#+begin_src elisp
(setq ispell-dictionary "some_dictionary"
      ispell-program-name "aspell"
	  ispell-silently-savep t)
#+end_src

[[https://blog.binchen.org/posts/what-s-the-best-spell-check-set-up-in-emacs.html][This post]]
might also be of interest.

You may also want to advice `ispell-pdict-save` for instant feedback when inserting
new entries into your local dictionary:

#+begin_src elisp
(advice-add 'ispell-pdict-save :after 'flycheck-maybe-recheck)
(defun flycheck-maybe-recheck (_)
  (when (bound-and-true-p flycheck-mode)
   (flycheck-buffer))
#+end_src

** TODO Features

+ [X] initial featureset
+ [X] checkers for all filters (all with url support)
  - [X] TeX
  - [X] markdown
  - [X] nroff
  - [X] html
  - [X] texinfo
  - [X] email (message-mode)
+ [ ] tests
+ [X] honor Ispell localwords (they are marked as info)

* bottom footer :code:
