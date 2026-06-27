; Suppose you have a collection of linked notes (a "zettelkasten"). I find
; that the value of such a collection is in the links between notes as much as
; in the notes themselves! It's easy to write a new note, but it can be tricky
; to appropriately link it with other existing notes. You may have forgotten
; what notes you've already written, or you may overlook a non-obvious
; connection.
;
; Docsim uses an external tool to suggest connections between your current
; note and others in your collection. The collection is parsed and notes are
; ranked and displayed according to their textual similarity. The process is
; quite snappy and results are displayed in a buffer.
;
; First, you'll need to install the `docsim' command-line tool.
;
; Next, tell docsim where to find your notes by configuring `(setq
; docsim-search-paths '("~/documents/notes"))'.
;
; Docsim happens to know about Denote links because its author uses and likes
; it. If you are, too, you can tell docsim not to include notes that are
; already linked from a note in its list of similar results. Set that up with
; `(setq docsim-omit-denote-links t)'.
;
; Docsim performs best with English-language notes, since it can take
; advantage of a built-in stoplist and a stemming algorithm. It'll still work
; with non-English notes, of course, but it may not be quite as accurate. Just
; `(setq docsim-assume-english nil)' if you're using another language.
;
; By default docsim shows the 10 most similar notes, but you can modify that
; by setting `(setq docsim-limit 5)'
