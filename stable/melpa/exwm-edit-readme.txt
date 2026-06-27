;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Similar to atomic-chrome https://github.com/alpha22jp/atomic-chrome
except this package is made to work with EXWM
and works with any editable element of any app

The idea is very simple - when you press the keybinding,
it simulates [C-a (select all) + C-x (cut)],
the opens a buffer and yanks the content - so you can edit it,
after you done - it grabs (now edited text) and pastes back to the original app

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Prerequisites:
in order for it to work properly, you're gonna need to install https://github.com/DamienCassou/gpastel
