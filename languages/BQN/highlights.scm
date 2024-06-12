; Basics
[(nothing)] @constant.builtin ; ·
[(string)] @string
[(character)] @character
[(number)] @number
["⟨" "(" "{" "[" "]" "}" ")" "⟩"] @punctuation.bracket
["?" ";" ":"] @keyword.conditional
[(comment)] @comment

; System
[(system_F)] @function ; System function
[(system_s)] @variable ; System value
[(system__m)] @type ; System 1 modifier
[(system__c_)] @type ; System 2 modifier

; User defined
[(symbol_s)] @variable ; Text starting with lowercase
[(symbol_F)] @function ; Text starting with uppercase
[(symbol__m)] @type ; Custom 1-modifier
[(symbol__c_)] @type ; Custom 2-modifier

; Builtin
[(symbol_Fl)] @operator ; Builtin function
[(symbol__ml)] @type ; Builtin 1-modifiers
[(symbol__cl_)] @type ; Builtin 2-modifiers

; Special names
[(specialname_s)] @variable ; 𝕨𝕩𝕗𝕘𝕤
[(specialname_F)] @function ; 𝕎𝕏𝔽𝔾𝕊
[(specialname__m)] @type ; _𝕣
[(specialname__c_)] @type ; _𝕣_
