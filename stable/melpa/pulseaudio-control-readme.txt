`pulseaudio-control' controls PulseAudio volumes from Emacs, via `pactl`.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Issues](#issues)
- [License](#license)

## Installation

Install [pulseaudio-control from MELPA](http://melpa.org/#/pulseaudio-control), or put `pulseaudio-control.el` in your load-path and do a `(require 'pulseaudio-control)'.

## Usage

Use C-x / to access the `pulseaudio-control' keymap.  The default keybindings in that keymap are:

* + : Increase the volume of the currently-selected sink by `pulseaudio-control-volume-step' (`pulseaudio-control-increase-volume').

* - : Decrease the volume of the currently-selected sink by `pulseaudio-control-volume-step' (`pulseaudio-control-decrease-volume').

* v : Directly specify the volume of the currently-selected sink (`pulseaudio-control-set-volume').  The value can be:

  * a percentage, e.g. '10%';
  * in decibels, e.g. '2dB';
  * a linear factor, e.g. '0.9' or '1.1'.

* m : Toggle muting of the currently-selected sink (`pulseaudio-control-toggle-current-sink-mute').

* x : Toggle muting of a sink, specified by index (`pulseaudio-control-toggle-sink-mute-by-index').

* e : Toggle muting of a sink, specified by name (`pulseaudio-control-toggle-sink-mute-by-name').

* i : Select a sink to be the current sink, specified by index (`pulseaudio-control-select-sink-by-index').

* n : Select a sink to be the current sink, specified by name (`pulseaudio-control-select-sink-by-name').

Customisation options, including `pulseaudio-control-volume-step', are available via the `pulseaudio-control' customize-group.

## Issues / bugs

If you discover an issue or bug in `pulseaudio-control' not already noted:

* as a TODO item, or

* in [the project's "Issues" section on GitHub](https://github.com/flexibeast/pulseaudio-control/issues),

please create a new issue with as much detail as possible, including:

* which version of Emacs you're running on which operating system, and

* how you installed `pulseaudio-control'.

## License

[GNU General Public License version 3](http://www.gnu.org/licenses/gpl.html), or (at your option) any later version.
