Add support to saving and reopening last known pdf position.

To enable, add the following hooks:
  (add-hook 'kill-buffer-hook 'pdf-view-restore-save)
  (add-hook 'kill-emacs-hook 'pdf-view-restore-save)
  (add-hook 'pdf-view-mode-hook 'pdf-view-restore)
