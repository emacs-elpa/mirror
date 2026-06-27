To espy is to see something at a distance which is what this package is about.
This package allows users to fetch a password from a file without visiting
it. It gathers all headers containing passwords defined by
`espy-header-prefix' and `espy-password-prefix' and presents them to the user.
The choosen password gets added to the kill ring.

For example using a password file with the content of
(with no whitespace before any prefix)

   *** Header1
   >> Password1

and running

   (espy)

would result in one entry `Header1' being selectable. Choosing this entry
results in `Password1' being copied to the kill-ring
