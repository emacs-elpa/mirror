
Lookup and download bibliographic records from Bibsonomy.

Installation:

  1. Install biblio.el (`M-x package-install` biblio.el)
  2. Install biblio-bibsonomy.el
  3. Create an account on www.bibsonomy.org
  4. In the Settings tab of the account page, find your API key under the API heading
  5. Set the following variables in your Emacs init file:

     (require 'biblio-bibsonomy)

     (setq
      biblio-bibsonomy-api-key "my-api-key"
      biblio-bibsonomy-username "my-user-name")

Usage:

  M-x biblio-lookup
