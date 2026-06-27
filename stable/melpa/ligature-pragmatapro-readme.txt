`ligature-pragmatapro' provides pre-baked `ligature'[0] configuration
for the PragmataPro[1] programming font.

Support is configured for all programming modes, but not enabled by
default. In the simplest configuration, simply enable
`global-ligature-mode':

  (require 'ligature-pragmatapro)
  (global-ligature-mode)

To be more selective, just use mode hooks:

  (add-hook 'haskell-mode-hook 'ligature-mode)

For even more advanced custom configuration, the full list of RX
ligatures is available in `ligature-pragmatapro-ligatures'.

[0] ligature: https://github.com/mickeynp/ligature.el
[1] PragmataPro: https://fsd.it/shop/fonts/pragmatapro/
