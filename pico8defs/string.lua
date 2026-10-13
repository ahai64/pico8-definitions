---@meta

---Convert VAL to a string.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#TOSTR)
---@param val any
---@param format_flags number?
---@return string
function tostr(val, format_flags) end

---Converts VAL to a number.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#TONUM)
---@param val any
---@param format_flags number?
---@return number
function tonum(val, format_flags) end

---Convert one or more ordinal character codes to a string.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CHR)
---@param val0 any
---@param ... any
---@return string
function chr(val0, ...) end

---Convert one or more characters from string STR to their ordinal (0..255) character codes.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#ORD)
---@param str string
---@param index number?
---@param num_results number?
---@return number|nil ...
function ord(str, index, num_results) end

---Grab a substring from string str, from pos0 up to and including pos1.
---
---When POS1 is not specified, the remainder of the string is returned.
---When POS1 is specified but not a number, a single character at POS0 is returned.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SUB)
---@param str string
---@param pos0 number
---@param pos1 any?
---@return string
function sub(str, pos0, pos1) end

---Split a string into a table of elements delimited by the given separator (defaults to ",")
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SPLIT)
---@param str string
---@param separator string|number?
---@param convert_numbers boolean?
---@return table
function split(str, separator, convert_numbers) end

---Returns the type of val as a string.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#TYPE)
---@param val any
---@return string
function type(val) end
