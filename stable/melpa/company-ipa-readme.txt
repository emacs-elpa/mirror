This package adds an easy way of inserting ipa into a document

Usage
=====

To install, either clone this package directly

To activate: (add-to-list 'company-backends 'company-ipa)

To use: type '¬' and you should get completions

To change the prefix, execute:
(setq company-ipa-symbol-prefix "·")
before loading this file

If you want to change the list of symbols you should either do it here
or (setq ipa-symbol-list-basic '((...)))
before calling this file

For best performance you should use this with company-flx:
(company-flx-mode +1)
