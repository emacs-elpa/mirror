# spdx.el

`spdx.el` provides SPDX license header insertion.

## Installation

Put `spdx.el` in your Emacs system. Add the following to your `.emacs`:

```elisp
(require 'spdx)
(define-key prog-mode-map (kbd "C-c i l") #'spdx-insert)
```

Or using [straight.el](https://github.com/raxod502/straight.el) with
[use-package](https://github.com/jwiegley/use-package):

``` emacs-lisp
(use-package spdx
  :ensure t
  :straight (:host github :repo "condy0919/spdx.el")
  :bind (:map prog-mode-map
         ("C-c i l" . spdx-insert))
  :custom
  (spdx-copyright-holder 'auto)
  (spdx-project-detection 'auto))
```

Then you can press `C-c i l` to trigger `spdx-insert`

Or manual run:

    M-x spdx-insert

Then, `spdx.el` will ask you to select a license. It's done by
`completing-read'.

After that, the copyright and license header will be written. An example
follows.

`;Copyright (C) 2020  spdx.el Authors`
`;SPDX-License-Identifier: AGPL-1.0-only`

## Customization

- `spdx-copyright-holder'
- `spdx-project-detection'
