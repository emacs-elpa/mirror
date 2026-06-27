## Key binding

Put the following into your .emacs file (~/.emacs.d/init.el)

    (bind-key "M-N" 'untitled-new-buffer-with-select-major-mode)

## Customize

    (setq untitled-new-buffer-major-modes '(php-mode enh-ruby-mode python-mode sql-mode text-mode prog-mode markdown-mode))
