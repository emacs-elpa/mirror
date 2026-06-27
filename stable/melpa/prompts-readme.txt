Prompt provides utilities for working with text prompts and read completion.

For an example of prompt's enhanced completing-read,
see `prompt-completing-read-variable', which supports reading any variable
with a predicate, for example to prompt for a keymap with completion, you
could use:

   (prompt-completing-read-variable "Enter keymap: " 'keymapp)
