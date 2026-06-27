This packages uses MECAB-Unidic to analyse Japanese text and
automatically generate furigana to kanji.

To annotate the text, run `yomikata-region',
`yomikata-buffer', or `yomikata-at-point'.  The
furigana will be set as standard Emacs tooltips.  You can see them
by hovering the mouse pointer, or by calling
`yomikata-at-point' again at any word.

You need MECAB installed with the Unidic dictionary (alternative
dictionaries are planned but not yet supported).  On Debian you can
get them with:

   apt install mecab unidic-mecab

Note that unidic-mecab is several gigabytes in size.

Furigana tooltips are saved as text overlays.  To clear them, use
`yomikata-clear-tooltips-region' or
`yomikata-clear-tooltips-buffer'.

Annotated text is underlined by default.  To change this, customize
`yomikata-tooltip-available-face'.

The furigana generation is 100% offline, open source, and
deterministic.  No LLMs or so-called “generative AI” are used at
any point.  Automatic furigana generation is imperfect and may make
mistakes, but the mistakes are consistent and predictable.  No coal
plants had to be built to train the datafiles used by this
software.

Roadmap:
- Support more dictionary types than Unidic.
- Modify text in-place to add HTML ruby tags or Markdown ruby.
