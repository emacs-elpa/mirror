Visually summarize progress information in org-mode files.

org-dashboard makes a new dynamic block available in org
files. When the block is updated, progress information is fetched
from files in `org-agenda-files' and used to generate a visual
progress summary with progress bars and hyperlinked labels.

For example, if one of your `org-agenda-files' contains the
following:

    * Project: Better Health
   :PROPERTIES:
   :CATEGORY: health
   :END:

    ** Milestones
    *** [33%] run 10 km/week
    **** TODO learn proper warmup
    **** DONE look for jogging partner
    **** TODO run 10 minutes on monday

    * Project: Super Widget
   :PROPERTIES:
   :CATEGORY: widget
   :END:

    ** Milestones
    *** [1/6] release 0.1
    **** DONE git import
    **** TODO create github project
    **** TODO add readme
    **** TODO publish

And any org file contains the following block:

    #+BEGIN: block-display-dashboard
    #+END:

Updating the block (`C-c C-c' anywhere on its first line) will
search agenda files for headings that include a "progress cookie"
(e.g. [33%], [1/6]) and generate the following:

   #+BEGIN: block-display-dashboard

   health                run 10 km/week [███████████                      ]  33%
   widget                   0.1 release [██████                           ]  18%

   #+END:

Labels link back to the trees where they were found. The first
column displays categories; you can turn categories off by
customizing the `org-dashboard-display-category' option. Note that,
if not set per-tree through a property or per-file through a
keyword, the category defaults to the file name without extension.

This module was inspired by Zach Peter's "A Dashboard for your
Life"
(http://thehelpfulhacker.net/2014/07/19/a-dashboard-for-your-life-a-minimal-goal-tracker-using-org-mode-go-and-git/)
