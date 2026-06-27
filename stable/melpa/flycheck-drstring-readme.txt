This package adds support for linting documentation in Swift files
using DrString (https://github.com/dduan/DrString/). Add something
like the following to your init.el:

(require 'flycheck-drstring)
(flycheck-drstring-setup)

DrString is a CLI tool that can be installed using your favorite
package manager. For example, if you use Homebrew:
$ brew install dduan/formulae/drstring
