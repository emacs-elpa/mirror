A major mode for viewing HTTP Archive (HAR) files.  Provides a
tabulated list of all captured requests and responses with commands
to inspect headers, request/response bodies, and copy entries as
cURL commands.

Usage:
Open a .har file and press C-c v to launch the HAR viewer.

Keybindings in `har-viewer-mode':

  RET    Display request and response headers
  C-c r  Display response body
  C-c R  Display request body
  C-c c  Copy entry as a cURL command (also: yc in evil normal state)
  C-c n  Narrow list by URL regex

Optional integrations:

  restclient  -- header buffers use restclient-mode when available
  web-beautify -- body buffers are auto-formatted when available
  evil         -- adds RET and yc normal-state bindings when available
