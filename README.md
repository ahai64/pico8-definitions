# ahai64/pico8

This is a project consisting of definition files for the sumneko/lua extension for VSCode, allowing you to write PICO-8 programs with the support of modern editor features.

Similar add-on for Picotron: https://github.com/ahai64/picotron-definitions

## Usage

1. Install and enable [sumneko/Lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) extensions in VSCode Marketplace

2. Download the repo from Github

3. Put the `library/` folder next to your .p8 file. 

4. If you're using VSCode, put the `.vscode` folder in your workspace. Otherwise, put the `.luarc.json` file next to your .p8 file.

5. Create a cartridge and include external Lua code with:

```
#include foo.lua
```

Then you can write code in the workspace of VSCode and enjoy code prompts, formatting, AI copilot, etc.

![eg](https://www.lexaloffle.com/media/74106/eg.png)
