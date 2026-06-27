Description:
  This library use font-locking to change the way Emacs displays various latex commands, like \Gamma, \Phi, etc.
  It does not actually change the content of the file, only the way it is displayed.

Quick start:
  add this file to load path, then (require 'latex-unicode)
TODO:
  The most pressing isue is a way to let not only single symbols be displayed, but also strings.
  Then we can e.g display "⟨⟨C⟩⟩" instead of atldiamond.  Currently the 5 symbols gets placed on top of
  each other, resulting in a mighty mess.  This problem might be demomposed into two types: When the replaced
  string is bigger than the string replacing it (probably the easiest case), and the converse case.

  Also it would be nice if it had some configuration possibilities. Eg the
  ability to add own abreviations through the customization interface, or
  toggle the display of math-curly-braces.
