; This currently only works for GNU/Linux, not tested for Mac OS X and Windows.

;; Kiwix installation

http://www.kiwix.org

;; Config:

(use-package kiwix
  :ensure t
  :after org
  :commands (kiwix-launch-server kiwix-at-point)
  :bind (:map document-prefix ("w" . kiwix-at-point))
  :init (setq kiwix-server-use-docker t
              kiwix-server-port 8080
              kiwix-default-library "wikipedia_zh_all_2015-11.zim"))

;; Usage:

1. [M-x kiwix-launch-server] to launch Kiwix server.
2. [M-x kiwix-at-point] to search the word under point or the region selected string.
