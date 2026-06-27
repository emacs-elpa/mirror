This package provides a major mode for editing SysML v2 (Systems Modeling Language)
files with syntax highlighting based on the OMG SysML v2 normative specification.

SysML v2 specification: https://www.omg.org/spec/SysML/2.0/
Normative example: https://www.omg.org/cgi-bin/doc?ptc/25-04-31.sysml

Features:
- Syntax highlighting for keywords, operators, types
- Comment support (single-line // and multi-line /* */)
- Documentation blocks (doc /* ... */)
- Indentation support
- Integration with validate-sysml.sh for on-save validation

Installation:
Add to your .emacs or init.el:
  (load-file "/path/to/sysml-mode.el")
  (add-to-list 'auto-mode-alist '("\\.sysml\\'" . sysml-mode))
