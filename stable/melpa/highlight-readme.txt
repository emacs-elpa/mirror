
   Highlighting commands.

   More description below.

(@> "Index")

 Index
 -----

 If you have library `linkd.el' and Emacs 22 or later, load
 `linkd.el' and turn on `linkd-mode' now.  It lets you easily
 navigate around the sections of this doc.  Linkd mode will
 highlight this Index, as well as the cross-references and section
 headings throughout this file.  You can get `linkd.el' here:
 http://dto.freeshell.org/notebook/Linkd.html.

 (@> "Things Defined Here")
 (@> "Documentation")
   (@* "Library `facemenu+.el' Puts Highlight on the Menu")
   (@* "User Option `hlt-use-overlays-flag'")
   (@* "Commands")
   (@* "User Option `hlt-act-on-any-face-flag'")
   (@* "Hiding and Showing Text")
   (@* "What Gets Highlighted: Region, Buffer, New Text You Type")
   (@* "Interference by Font Lock")
   (@* "Suggested Bindings")
   (@* "Relation to Hi-Lock Mode")
   (@* "Commands That Won't Work in Emacs 20")
   (@* "To Do")
 (@> "Change log")
 (@> "Menu-Bar Region Menu")
 (@> "Variables and Faces")
 (@> "Misc Functions - Emacs 20+")
 (@> "Misc Functions - Emacs 21+")
 (@> "Functions for Use with Icicles - Emacs 21+")
 (@> "Functions for Highlighting Propertized Text - Emacs 21+")
 (@> "General functions")

(@* "Things Defined Here")

 Things Defined Here
 -------------------

 Commands defined here:

   `hlt-choose-default-face', `hlt-choose-faces',
   `hlt-choose-invisible-faces', `hlt-choose-visible-faces',
   `hlt-eraser', `hlt-eraser-mouse', `hlt-hide',
   `hlt-hide-default-face', `hlt-hide-only', `hlt-highlight',
   `hlt-highlight-all-prop', `hlt-highlighter',
   `hlt-highlighter-mouse', `hlt-highlight-property-with-value',
   `hlt-highlight-regexp-region', `hlt-highlight-regexp-to-end',
   `hlt-highlight-region', `hlt-highlight-single-quotations',
   `hlt-mouse-face-each-line', `hlt-next-highlight',
   `hlt-previous-highlight', `hlt-replace-highlight-face',
   `hlt-show', `hlt-show-default-face', `hlt-show-only',
   `hlt-toggle-act-on-any-face-flag',
   `hlt-toggle-link-highlighting',
   `hlt-toggle-property-highlighting',
   `hlt-toggle-use-overlays-flag', `hlt-unhighlight-all-prop',
   `hlt-unhighlight-region', `hlt-unhighlight-region-for-face'.

 User options (variables) defined here:

   `hlt-act-on-any-face-flag', `hlt-max-region-no-warning',
   `hlt-use-overlays-flag'.

 Faces defined here:

   `hlt-property-highlight', `minibuffer-prompt' (for Emacs 20).

 Non-interactive functions defined here:

   `hlt-add-listifying', `hlt-add-to-invisibility-spec',
   `hlt-delete-highlight-overlay', `hlt-highlight-faces-in-buffer',
   `hlt-flat-list', `hlt-highlight-faces-in-buffer',
   `hlt-listify-invisibility-spec',
   `hlt-mouse-toggle-link-highlighting',
   `hlt-mouse-toggle-property-highlighting', `hlt-no-op',
   `hlt-region-or-buffer-limits', `hlt-set-intersection',
   `hlt-set-union'.

 Internal variables defined here:

   `hlt-last-face', `hlt-last-regexp',
   `hlt-previous-use-overlays-flag-value',
   `hlt-prop-highlighting-state'.

(@* "Documentation")

 Documentation
 -------------

(@* "Library `facemenu+.el' Puts Highlight on the Menu")
 ** Library `facemenu+.el'  Puts Highlight on the Menu **

 If you load library `facemenu+.el' after you load library
 `highlight.el', then the commands defined here will also be
 available on a Highlight submenu in the Text Properties menus.

(@* "User Option `hlt-use-overlays-flag'")
 ** User Option `hlt-use-overlays-flag'

 You can highlight text in two ways using this library, depending
 on the value of user option `hlt-use-overlays-flag':

  - non-nil means to highlight using overlays
  - nil means to highlight using text properties

 Overlays are independent from the text itself.  They are not
 picked up when you copy and paste text.  By default, highlighting
 uses overlays.

 Although highlighting recognizes only nil and non-nil values for
 `hlt-use-overlays-flag', other actions can have different
 behavior, depending on the non-nil value.  If it is `only' (the
 default value), then only overlay highlighting is affected.  If it
 is any other non-nil value, then both overlay highlighting and
 text-property highlighting are effected.  This is the case, for
 instance, for unhighlighting and for navigating among highlights.

 For example, for unhighlighting, if `hlt-use-overlays-flag' is
 non-nil, then overlay highlighting is removed.  If it is not
 `only', then text-property highlighting is removed.  A value of
 nil thus removes both overlays and text properties.

 Keep this sensitivity to the value of `hlt-use-overlays-flag' in
 mind.  For example, if you change the value after adding some
 highlighting, then that highlighting might not be removed by
 unhighlighting, unless you change the value back again.

 You can toggle the value of `hlt-use-overlays-flag' at any time
 between nil and its previous non-nil value, using command
 `hlt-toggle-use-overlays-flag'.

(@* "Commands")
 ** Commands **

 You can use any face to highlight, and you can apply a mouse face
 instead of a face, if you like.  A mouse face shows up only when
 the mouse pointer is over it.

 The commands you will use the most often are probably
 `hlt-highlight', `hlt-highlighter', `hlt-next-highlight', and
 `hlt-previous-highlight'.  You might also often use the various
 commands to hide and show highlighted text.

 You can use command `hlt-highlight' to highlight the region,
 highlight a regexp throughout the region, or unhighlight the
 region, depending on the prefix argument.  It combines most of the
 behavior of commands `hlt-highlight-regexp-region',
 `hlt-highlight-region', and `hlt-unhighlight-region'.  Command
 `hlt-highlight-regexp-to-end' highlights a regexp from the text
 cursor position to the end of the buffer.

 Command `hlt-highlighter' lets you highlight text by simply
 dragging the mouse, just as you would use a highlighter (marker).
 You can thus highlight text the same way that you drag the mouse
 to define the region.

 If you use Emacs 21 or later, you can use various commands that
 highlight and unhighlight text that has certain text properties
 with given values.  You can use them to highlight all text in the
 region or buffer that has a given property value.  An example is
 highlighting all links (text with property `mouse-face').  These
 commands are:

 `hlt-highlight-all-prop' - Highlight text that has a given
                            property with any (non-nil) value.

 `hlt-highlight-property-with-value' - Highlight text that has a
                            given property with certain values.

 `hlt-unhighlight-all-prop' - Unhighlight highlighted propertized
                            text.

 `hlt-mouse-toggle-link-highlighting' - Alternately highlight and
                            unhighlight links on a mouse click.

 `hlt-toggle-link-highlighting' - Alternately highlight and
                            unhighlight links.

 `hlt-mouse-toggle-property-highlighting' - Alternately highlight
                            and unhighlight propertized text on a
                            mouse click.

 `hlt-toggle-property-highlighting' - Alternately highlight and
                            unhighlight propertized text.

 As always for library `highlight.el', this "highlighting" can use
 property `mouse-face' instead of `face'.  You could, for example,
 highlight, using `mouse-face', all text that has property `foo' -
 or that has property `face', for that matter.

 If you use Emacs 21 or later, you can use commands
 `hlt-next-highlight' and `hlt-previous-highlight' to navigate
 among highlights of a given face.

 You can unhighlight the region using command
 `hlt-unhighlight-region' (or using `C--' with `hlt-highlight').
 If you use overlay highlighting, then you can use command
 `hlt-unhighlight-region-for-face' to unhighlight the region for an
 individual highlighting face - other highlighting faces remain.

 You can replace a highlighting face in the region by another,
 using command `hlt-replace-highlight-face'.  With a prefix
 argument, property `mouse-face' is used, not property `face'.

 Command `hlt-eraser' lets you delete highlighting by dragging the
 mouse.  However, its behavior is quite different for overlays and
 text properties, and it is perhaps different from you expect - see
 the `hlt-eraser' doc string.

(@* "User Option `hlt-act-on-any-face-flag'")
 ** User Option `hlt-act-on-any-face-flag' **

 Library `highlight' generally acts only on faces that it controls,
 that is, faces that you have explicitly asked it to use for
 highlighting.  It sets the text property or overlay property
 `hlt-highlight' on such highlighted text, so that it can recognize
 which faces it has responsibility for.

 Sometimes, you might want to hide and show text other than that
 controlled by library `highlight'.  Similarly, you might sometimes
 want to navigate among faces other than those used for
 highlighting.  You can control this using option
 `hlt-act-on-any-face-flag', which you can toggle at any time using
 command `hlt-toggle-act-on-any-face-flag'.

(@* "Hiding and Showing Text")
 ** Hiding and Showing Text **

 You can hide and show text that you have highlighted.  You will
 want to read the Emacs-Lisp manual (Elisp), section Invisible
 Text, to understand better what this entails.  In particular, you
 should understand that for library `highlight.el', hiding text
 means adding the symbol naming the face to be hidden to both:

 1. a text or overlay `invisible' property, making the text or
    overlay susceptible to being hidden by buffer-local variable
    `buffer-invisibility-spec', and

 2. the buffer's `buffer-invisibility-spec', so that it in fact
    becomes hidden.

 After text has been hidden this way, and unless the highlighting
 as been removed completely by unhighlighting the text, the
 `invisible' property of that text keeps the names of the faces
 that have been applied to that text and hidden previously, even
 after you show that text again.  Showing a hidden face simply
 removes it from the `buffer-invisibility-spec'; it does not change
 any `invisible' properties.

 For example, if you hide face `foo' at some buffer position:

 1. The `invisible' property of the text or overlay at that
    position is updated to include `foo'.  If there are no other
    faces that have been applied to this text and then hidden, the
    `invisible' property is just (`foo').

 2. `buffer-invisibility-spec' is also updated to include `foo'.
    This hides all text properties and overlay properties with
    `invisible' property `foo', throughout the buffer.  If there
    are no other invisible faces in the buffer, then
    `buffer-invisibility-spec' has value (foo).

 If you then show face `foo' at that same buffer position, there is
 no change to the `invisible' property.  `buffer-invisibility-spec'
 is updated, by removing `foo': if it was (foo), it becomes ().

 There are several commands for hiding and showing highlighted
 text.  The basic commands for hiding and showing are
 `hlt-hide-default-face' and `hlt-show-default-face', which you can
 use to hide and show the face last used for highlighting.  With a
 prefix argument, you are prompted for a different face to hide; it
 then becomes the default face for highlighting.  You can also
 change the default highlighting face at any time using command
 `hlt-choose-default-face'.

 The other hide and show commands depend on your also using
 Icicles, which is a set of libraries that offer enhanced
 completion.  The Icicles-dependent commands are the following:

 `hlt-choose-faces', `hlt-choose-invisible-faces',
 `hlt-choose-visible-faces', `hlt-hide', `hlt-hide-only',
 `hlt-show', `hlt-show-only'.

 These are all multi-commands, which means that they each let you
 choose multiple completion candidates or all candidates that match
 your current input (a regexp).  You can use command `hlt-hide' to
 hide any number of visible faces.  Any text is hidden that has
 that face as a text property or an overlay property, depending on
 the value of `hlt-use-overlays-flag'.

 Command `hlt-show' is the opposite of `hlt-hide': it shows
 invisible text that has the faces you choose.  Neither `hlt-hide'
 nor `hlt-show' has any effect on other faces, besides those you
 choose to hide or show, respectively; they each do only one thing,
 hide or show.

 Command `hlt-hide-only' hides the faces you choose, and shows all
 other faces, and command `hlt-show-only' does the opposite.  You
 can thus use these commands to specify exactly what faces should
 be invisible and visible.  Empty input means none: If you choose
 no faces to hide (that is, hit `RET' with an empty minibuffer),
 then all faces will be made visible; if you choose no faces to
 show, then all will be hidden.

 Currently, face attributes for highlighting are combined when
 overlays overlap, but the same is not true for text properties.
 For example, if you highlight a word with face `foo', and then you
 highlight it with face `bar', only `bar' remains as the face for
 that word.  With overlays, the attributes of the two faces are
 composed.  When you hide or show faces, this behavior difference
 has an effect.

 You can hide text using the commands in this library for any of
 the purposes that you might use invisible text in Emacs.  This
 gives you an easy, interactive way to control which sections of
 text are seen by search and other Emacs tools.  Use the regexp
 highlighting commands, for instance, to highlight text
 syntactically, and then hide that highlighted text.  Or use
 `hlt-highlighter' to sweep over text that you want to hide with
 the mouse.

 Hiding and showing faces also provides a "conditional text"
 feature similar to that available in desktop publishing
 applications such as Adobe's Framemaker.  Publishers often use
 such a feature to produce different output documents from the same
 source document ("single sourcing").  You can use this feature
 similarly, if you have an application (printing is one example)
 that is sensitive to whether text is visible or invisible.  One
 caveat: Emacs faces are not saved when you save your file.

(@* "What Gets Highlighted: Region, Buffer, New Text You Type")
 ** What Gets Highlighted: Region, Buffer, New Text You Type **

 All mention of the "region" in this commentary should really say
 "region or buffer".  If the region is active and non-empty, then
 only the text in the region is targeted by the commands in this
 library.  This lets you easily control the scope of operations.

 If the region is not active or it is empty, then:

 - If `hlt-use-overlays-flag' is nil and there is no prefix arg,
   then the face is applied to the next characters that you type.

 - Otherwise, the face is applied to the entire buffer (or the
   current restriction, if the buffer is narrowed).

(@* "Interference by Font Lock")
 ** Interference by Font Lock **

 If you use Emacs 22 or later, then you can use this library in
 conjunction with library `font-lock+.el'.  That will prevent
 font-locking from removing any highlighting face properties that
 you apply using the commands defined here.

 Otherwise, when `hlt-use-overlays-flag' is nil, font-lock
 highlighting will interfere with the highlighting of this library.
 In most cases, you will be able to highlight text, but sooner or
 later font-lock will erase that highlighting when it refontifies
 the buffer.  If `hlt-use-overlays-flag' is non-nil, there is no
 such problem : font-lock has no effect on overlays.

(@* "Suggested Bindings")
 ** Suggested Bindings **

 This library adds menu items to the Region submenu of the Edit
 menu-bar menu, if you have a Region submenu.  To obtain this menu,
 load library `menu-bar+.el'.

 Otherwise, library `highlight.el' makes no key bindings.  Here are
 some suggested bindings (`C-x y', `C-x mouse-2', `C-x S-mouse-2',
 `S-C-p', and `S-C-n'):

  (define-key ctl-x-map [(control ?y)] 'hlt-highlight)
  (define-key ctl-x-map [(down-mouse-2)] 'hlt-highlighter)
  (define-key ctl-x-map [(S-down-mouse-2)] 'hlt-eraser)
  (global-set-key [(shift control ?p)]  ; Emacs 21 or later
                  'hlt-previous-highlight)
  (global-set-key [(shift control ?n)]  ; Emacs 21 or later
                  'hlt-next-highlight)

 You might also want to bind `hlt-choose-default-face', which you
 can use to change the current default highlighting face.

(@* "Relation to Hi-Lock Mode")
 ** Relation to Hi-Lock Mode **

 The features of this library are complementary to those of the
 standard Emacs library `hi-lock.el', so you can use the two
 libraries together.

(@* "Commands That Won't Work in Emacs 20")
 ** Commands That Won't Work in Emacs 20 **

 The following commands and options work only for Emacs versions
 more recent than Emacs 20:

 `hlt-act-on-any-face-flag', `hlt-choose-faces',
 `hlt-choose-invisible-faces', `hlt-choose-visible-faces',
 `hlt-hide', `hlt-hide-default-face', `hlt-hide-only',
 `hlt-highlight-property-with-value', `hlt-next-highlight',
 `hlt-previous-highlight', `hlt-show', `hlt-show-default-face',
 `hlt-show-only', `hlt-toggle-act-on-any-face-flag'.

(@* "To Do")
 ** To Do **

 1. Add commands to show and hide boolean combinations of faces.

 2. Faces are not accumulated as text properties.
    Highlighting with one face completely replaces the previous
    highlight.  Overlays don't have this limitation.  Text
    properties need not have it either, but they do, for now.

(@* "Acknowledgement")
 **  Acknowledgement **

 Parts of this library are based on a library of the same name
 written and copyrighted by Dave Brennan, brennan@hal.com, in 1992.
 I haven't been able to locate that file, so my change log is the
 only record I have of what our relative contributions are.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
