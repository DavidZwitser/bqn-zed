; System
(system_s) @variable ; System value
(system_F) @function ; System function
(system__m) @type ; System 1 modifier
(system__c_) @type ; System 2 modifier

; User defined
(atom (symbol_s)) @variable ; Free standing names
(lhs (symbol_s)) @variable ; Names in headers
(NAME) @variable ; Names in structures
(LHS_ATOM) @variable ; A name in a ‿ array in a header
(LHS_ENTRY) @variable ; A name in a ⟨⟩ array in a header

(symbol_F) @function ; Text starting with uppercase
(symbol__m) @type ; Custom 1-modifier
(symbol__c_) @type ; Custom 2-modifier

(atom (atom) @special) ; everything with a dot after it ending in a variable (excluding the variable)
((atom) (symbol_F)) @special ; everything with a dot after it ending in a function (excluding the function)

; Builtin
(symbol_Fl) @operator ; Builtin function
(symbol__ml) @type ; Builtin 1-modifiers
(symbol__cl_) @type ; Builtin 2-modifiers

; Special names
(specialname_s) @variable ; 𝕨𝕩𝕗𝕘𝕤
(specialname_F) @function ; 𝕎𝕏𝔽𝔾𝕊
(HEAD ["𝕊"] @keyword)
(HEAD ["𝔽" "𝔾"] @function)
(HEAD ["𝕩" "𝕨"] @variable)

(specialname__m) @type ; _𝕣
(specialname__c_) @type ; _𝕣_

; Basics
(nothing) @constant.builtin ; ·
(string) @string
(character) @character
(number) @number
["?" ";" ":"] @keyword.conditional
["←" "↩" "{" "}"] @keyword
["⟨" "(" "[" "]" ")" "⟩"] @punctuation.bracket
["," "⋄"] @special ; Because there was a case when it highlighted wrongly
["⇐"] @keyword.import
(comment) @comment
