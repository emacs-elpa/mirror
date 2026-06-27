Inspired by Justine Tunney's disaster.el (http://github.com/jart/disaster‎).

iasm provides a simple interactive interface objdump and ldd which makes it
much easier to explore program disassembly. It also provides tools to speed
up the edit-compile-disasm loop.

This mode currently only supports Linux because it relies rather heavily on
objdump and ldd. I also have not tested it on anything but x86 assembly which
means that some of the regex may not work on other architectures.

Note that this is my first foray into elisp so monstrosities abound. Go forth
at your own peril. If you wish to slay the beasts that lurk within this
source file or simply add a few functionalities, contributions are more then
welcome (see the TODO section for ideas).
