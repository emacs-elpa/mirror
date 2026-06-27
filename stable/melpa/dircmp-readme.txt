Add to your Emacs startup file:

   (load "/path/to/dircmp.el")

Then:

   M-x compare-directories RET dir1 RET dir2 RET

The author uses dircmp-mode with git-diffall (https://github.com/thenigan/git-diffall) as follows:

   git diffall -x /path/to/dircmp-mode/emacs-git-difftool.sh
