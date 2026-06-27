
This package only provide a single function that return a contrast
color using CIEDE2000 algorithm.  The contrast color will be picked
from ‘contrast-color-color-candidates’ variable.  The default
colors are based on Google’s material design palette
(https://material.google.com/style/color.html)

Usage:

  (contrast-color "#ff00ff") ; -> "#4caf50"

                 or

  (contrast-color "Brightmagenta") ; -> "#4caf50"
