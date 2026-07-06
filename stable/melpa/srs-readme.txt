┌─────────┐
│ Summary │
└─────────┘
This package implements a Spaced Repetition System (SRS) for
creating and reviewing flashcards.  Flashcards can be embedded
among your notes, or any text file, so long as you tell
`srs.el' where to look for them--by setting
`srs-path-list'. Implements Free Spaced Repetition Scheduler
(FSRS) algorithm.
https://github.com/open-spaced-repetition/fsrs4anki/wiki/ABC-of-FSRS

┌──────────────┐
│ Installation │
└──────────────┘
Example Elpaca + use-package instalation

 (use-package srs
   :ensure (:host github :repo "Duncan-Britt/srs.el")
   :config
   (add-to-list 'srs-path-list (expand-file-name "~/notes/*.org")))

┌────────────────────────────┐
│ Usage -- Making Flashcards │
└────────────────────────────┘
You can embed flashcards in any text file.  A typical flashcard
looks like this:
┌──────────────────────────────────────────┐
│ in some text file...                     │
│                                          │
│ FC: 1F933760-D6B3-4A59-A9E2-09EC19A500CB │
│ What is the powerhouse of the cell?      │
│                                          │
│ Mitochondria.                            │
│                                          │
│ file continues...                        │
└──────────────────────────────────────────┘
The empty line between the question and answer marks the end of the
question, and the empty line after the answer marks the end of the
answer.

This is a "cloze" (fill in the blank) flashcard:
┌─────────────────────────────────────────────────────┐
│ ...whatever comes before                            │
│                                                     │
│ FC: 4D55B42A-1389-45CF-B242-E8EBFE7E0784            │
│ The {{mitochondria}} is the powerhouse of the cell. │
│                                                     │
│ rest of the file...                                 │
└─────────────────────────────────────────────────────┘
Again, the empty line afterward marks the end of the flashcard.

To create flash cards like the above, first write your question and
answer, or cloze statement:
┌─────────────────────────────────────┐
│ ...                                 │
│ What is the powerhouse of the cell? │
│                                     │
│ Mitochondria.                       │
│                                     │
│ ...                                 │
└─────────────────────────────────────┘

Then, with your cursor on the question, invoke

  M-x srs-card-make-at-point

Now you should see an id
┌──────────────────────────────────────────┐
│ ...                                      │
│ FC: 1F933760-D6B3-4A59-A9E2-09EC19A500CB │
│ What is the powerhouse of the cell?      │
│                                          │
│ Mitochondria.                            │
│ ...                                      │
└──────────────────────────────────────────┘

The flash card is made.  The metadata associated with the flashcard
is saved in `srs-history-file' (by default,
"<user-emacs-directory>/srs-history.org").

BUT--in order to review your newly created flashcard, make sure the
file in which you wrote your flashcard is among those specified by
`srs-path-list'.  This is how `srs.el' knows where to
look for flashcards.

Some examples:
(add-to-list 'srs-path-list (expand-file-name "~/path/to/your/notes/*"))
(add-to-list 'srs-path-list (expand-file-name "~/only/org/files/*.org"))
(add-to-list 'srs-path-list (expand-file-name "~/a/specific/file.txt"))
(add-to-list 'srs-path-list (expand-file-name "~/even/source/code.el"))

┌───────────────────────────────┐
│ Usage -- Reviewing Flashcards │
└───────────────────────────────┘
 M-x srs-review

This is how you can review flashcards which are "due".

┌─────────────────────────────┐
│ Usage -- Editing Flashcards │
└─────────────────────────────┘
Just revise the text of your card where you wrote it.  You don't
need to run any additional commands.  As long as the id is still
present above your card, all is well.

┌──────────────────────────────┐
│ Usage -- Deleting Flashcards │
└──────────────────────────────┘
 M-x srs-card-delete-at-point

Run this command with your cursor is over the line with <DESIGNATOR>: <ID>

┌─────────────────────────┐
│ Usage -- Transient Menu │
└─────────────────────────┘
M-x srs-menu provides a transient menu for accessing
srs commands.
