# BQN language support for [Zed](https://zed.dev/)

## Prerequisites
[BQN LSP](https://sr.ht/~detegr/bqnlsp/)
should be installed in your path as `BQNLSP`

## This uses
- [bqnlsp](https://sr.ht/~detegr/bqnlsp/)
- [tree-sitter-bqn](https://github.com/shnarazk/tree-sitter-bqn)

## Making Zed BQN friendly
Install the [BQN font](https://dzaima.github.io/BQN386/)
And add it in your settings `"buffer_font_family": "BQN386 Unicode",`

You can ofcourse also increase the font size
`"buffer_font_size": 22,`

If you use option/alt as your BQN modifier key, you can reclaim them:
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
