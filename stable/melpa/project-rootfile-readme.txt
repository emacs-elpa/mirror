A project backend that uses a root file (e.g. Gemfile) for detection.

Usage:
If you prefer VCS root over root file for project detection, add the following to your init file:

     (add-to-list 'project-find-functions #'project-rootfile-try t)

Otherwise, if you prefer a root file, add the following:

     (add-to-list 'project-find-functions #'project-rootfile-try)

TODO:
- Support Emacs version < 28.1?
  `project-root' is introduced from this version
- Add more files to `project-rootfile-list'.
