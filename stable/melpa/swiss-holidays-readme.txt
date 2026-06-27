
The list of official Swiss holidays. With regional holidays included.

Installation:

To use `swiss-holidays' in your calendar

 (setq holiday-other-holidays swiss-holidays)

If you'd like to add regional holidays, use the following:

 (setq holiday-other-holidays
       (append swiss-holidays swiss-holidays-catholic))

The code was inspired by russian-holidays.el and
https://www.emacswiki.org/emacs/CalendarLocalization#toc34
