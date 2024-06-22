# [BQN](https://mlochbaum.github.io/BQN/) language support for [Zed](https://zed.dev/)

## Prerequisites
[BQN LSP](https://sr.ht/~detegr/bqnlsp/)
should be installed in your `$PATH` as `BQNLSP`!

## This uses
- [bqnlsp](https://sr.ht/~detegr/bqnlsp/)
- [tree-sitter-bqn](https://github.com/shnarazk/tree-sitter-bqn)

## Decisions
The syntax highlighting choices I've made.
- Function glyphs are highlighted as `operators`, leaving `function` highlighting for user written functions.
- 1- and 2-modifiers use `type` highlighting (since BQN doesn't specify types).
- `{ } : ; ← ↩ ⇐ `(`𝕊` in headers) are highlighted as `keywords` to make them stand as controllflow primitives.
- In contrast with `𝕊`, `𝕩 𝕨 𝔽 𝔾 𝕤 _𝕣 _𝕣_` keep their syntactic coloring in headers for readibility reasons.

## Features
- Syntax highlighting.
- Outline support.
- Runnable blocks.
  - When you write a nameless block, a run button will apear next to it.
  - You need `bqn` in your path in order to use this.
- Hover documentation (powered by the lsp).

## Gripes
- Sadly system functions `•` aren't deconstructed in the tree-sitter grammar, that is why I can't do the `.` seperated notation highlighting.
- The lsp, while very nice, could use features like `goto definition` or `refactoring` tools.
- The LSP should download automatically. Now that needs to happen manually.
- Hover documentation doesn't always seem to work.
- The extension doesn't support a `\` keyboard. That is sadly currently not possible in Zed.

## Making Zed BQN friendly
Install the [BQN font](https://dzaima.github.io/BQN386/)
And add it in your settings `"buffer_font_family": "BQN386 Unicode",`

These [tasks](https://zed.dev/docs/tasks) might be nice to have
```JSON
{
  "label": "BQN run file",
  "command": "bqn -f '$ZED_FILE'"
},
{
  "label": "BQN run line",
  "command": "cat './${ZED_RELATIVE_FILE}' | head -n $ZED_ROW | tail -n 1 | bqn -p",
},
{
  "label": "BQN run $ZED_SELECTED_TEXT",
  "command": "bqn -p '$ZED_SELECTED_TEXT'",
}
```

You can ofcourse also write a task for running your specific project.

If you use option/alt as your BQN modifier key, reclaim the keys in your keymap.json:
```JSON
[
  {
    "context": "Editor",
    "bindings": {
      "alt-h": null,
      "alt-d": null,
      "alt-b": null,
      "alt-f": null,
      "alt-shift-b": null,
      "alt-shift-f": null,
      "alt-v": null,
      "alt-shift-t": null
    }
  },
  {
    "context": "Workspace",
    "bindings": {
      "alt-t": null,
      "alt-shift-t": null
    }
  },
  {
    "context": "Editor && mode == full",
    "bindings": {
      "alt-z": null
    }
  }
]
```
