This is a strict and robust bencode encoder and decoder. Encoding
is done precisely, carefully taking into account character encoding
issues. As such, the encoder always returns unibyte data. When
encoding strings and keys, UTF-8 is used by default for both
encoding and decoding, but this can be configured via
`coding-system-for-write' and `coding-system-for-read'.

The API entrypoints are:
* `bencode-encode'
* `bencode-encode-to-buffer'
* `bencode-decode'
* `bencode-decode-from-buffer'
Variables:
* `bencode-dictionary-type'
* `bencode-list-type'
