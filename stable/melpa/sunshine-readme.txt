1) Copy this file somewhere in your Emacs `load-path'.  To see what
   your `load-path' is, run inside emacs: C-h v load-path<RET>

2) Add the following to your .emacs file:

   (require 'sunshine)

3) Configure your location by setting the variable
   `sunshine-location'.  You can provide a string, like "New York,
   NY" or a ZIP code, like "90210".  This variable is available
   through the Customize facility.

To display the forecast for your location, call
`sunshine-forecast'.

If you are using a GUI Emacs, you may like to display the weather
forecast icons automatically. To do so, set `sunshine-show-icons'
to t.
