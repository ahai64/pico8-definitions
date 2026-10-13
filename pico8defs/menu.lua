---@meta

---Add or update an item to the pause menu.
---
---INDEX should be 1..5 and determines the order each menu item is displayed.
---Bits 0xff00 of INDEX act as a button mask: 0x300 ignores L/R presses,
---0x7000 ignores X/O/MENU (since 0.2.6).
---
---CALLBACK is called with a bitfield of L,R,X button presses.
---If the callback returns true, the pause menu remains open.
---
---When no label or function is supplied, the menu item is removed.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#MENUITEM)
---@param index number 1~5, optionally OR'd with 0x300 / 0x7000 button masks
---@param label string? up to 16 characters long; nil removes the item
---@param callback fun(buttons: number): boolean? return true to keep the pause menu open
function menuitem(index, label, callback) end
