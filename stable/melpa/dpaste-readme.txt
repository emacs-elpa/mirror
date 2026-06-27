dpaste.el provides functions to post a region or buffer to
<http://dpaste.com> and put the paste URL into the kill-ring.

Inspired by gist.el

Current dpaste.com API usage example:

    curl -si -F 'content=<-' http://dpaste.com/api/v1/ | \
        grep ^Location: | colrm 1 10

Thanks to Paul Bissex (http://news.e-scribe.com) for a great paste
service.

Installation:

Put this file in a directory where Emacs can find it. On GNU/Linux
it's usually /usr/local/share/emacs/site-lisp/ and on Windows it's
something like "C:\Program Files\Emacs<version>\site-lisp". Then
add the follow instructions in your .emacs.el:

    (autoload 'dpaste "dpaste" nil t)
    (global-set-key (kbd "C-c p") 'dpaste-region-or-buffer)

Then with C-c p you can run `dpaste-region-or-buffer'. With a prefix
argument (C-u C-c p), your paste will use the hold option.

Todo:

- Use emacs lisp code to post paste instead curl (version 0.3)
