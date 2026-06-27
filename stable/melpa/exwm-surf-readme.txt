
(use-package exwm-surf
  :config
  (setq exwm-surf-history-file "/home/me/.surf/history")
  (setq exwm-surf-bookmark-file "/home/me/.surf/bookmarks")
  (add-hook 'exwm-manage-finish-hook 'exwm-surf-init))
