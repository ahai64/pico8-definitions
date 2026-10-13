# PICO-8 Definitions for Lua Language Server

LuaCATS definition files that teach the [Lua Language Server](https://luals.github.io/) everything about the **PICO-8** API — so you get completions, hover documentation, accurate signatures and type checking while writing PICO-8 cartridges in an external editor.

## Usage

1. Clone this repository and put the files into your project.

```bash
git clone https://github.com/ahai64/pico8-definitions.git
```

(or use "Download ZIP" from GitHub)

Your project should end up looking like this:

```
my-project/
├── .luarc.json
├── pico8defs/ 
├── game.p8
└── main.lua
```

2. Get LuaLS:
    - VS Code: Install the **Lua** extension ([sumneko.lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua)) from the VS Code Marketplace.
    - Neovim: Install [`lua-language-server`](https://github.com/LuaLS/lua-language-server/releases) and ensure it is available on your `PATH`. Configure Neovim to use it as a Lua LSP.
3. Copy **`.luarc.json`** and **`pico8defs/`** into your project root.
4. Open any Lua file in the project — `lua_ls` reads `.luarc.json` from the project root automatically (the file also helps LSP root detection).

### Including external code in a cartridge

PICO-8 includes external Lua files with:

```
#include main.lua
```

## Related projects

- Definitions for Picotron: [ahai64/picotron-definitions](https://github.com/ahai64/picotron-definitions)

## Reference sources

- [PICO-8 manual](https://www.lexaloffle.com/dl/docs/pico-8_manual.html)
- [PICO-8 changelog](https://www.lexaloffle.com/dl/docs/pico-8_changelog.txt)

## License

[MIT](LICENSE)
