This package provides the logic and macros for redirecting Emacs files
to XDG-compliant directories.  By using the redirection functions and
macros provided here, packages can be configured to store their
persistence files (like history, bookmarks, or caches) outside of the
main Emacs configuration folder, typically under ~/.local/share,
~/.cache, or /run/user.

Usage:

To obtain a path inside one of the XDG directories, use the
`locate-user-emacs-*-file' functions:

  (setq my-cache (locate-user-emacs-cache-file "pkg-name/cache"))

To redirect an existing variable containing a file path to its
corresponding XDG directory, use the `xdg-redirect-to-emacs-*' macros:

  (xdg-redirect-to-emacs-data some-package-data-file)
