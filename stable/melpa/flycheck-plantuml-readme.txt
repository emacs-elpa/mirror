This packages integrates plantuml with flycheck to automatically check the
syntax of your plantuml files on the fly

;; Setup

(eval-after-load 'flycheck
  '(progn
     (require 'flycheck-plantuml)
     (flycheck-plantuml-setup)))
