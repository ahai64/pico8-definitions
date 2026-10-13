---@meta

---Read a byte from an address in base ram.
---
---If N is specified, PEEK returns that number of results (max: 32767).
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PEEK)
---@param addr number
---@param n number?
---@return number ...
function peek(addr, n) end

---Write one or more bytes to an address in base ram.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#POKE)
---@param addr number
---@param val number
---@param ... number
function poke(addr, val, ...) end

---16-bit version of PEEK.
---
---Read one or more numbers in little-endian format: 0xffff.0000
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PEEK2)
---@param addr number
---@param n number?
---@return number ...
function peek2(addr, n) end

---16-bit version of POKE.
---
---Write one or more numbers in little-endian format: 0xffff.0000
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#POKE2)
---@param addr number
---@param val number
---@param ... number
function poke2(addr, val, ...) end

---32-bit version of PEEK.
---
---Read one or more numbers in little-endian format: 0xffff.ffff
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PEEK4)
---@param addr number
---@param n number?
---@return number ...
function peek4(addr, n) end

---32-bit version of POKE.
---
---Write one or more numbers in little-endian format: 0xffff.ffff
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#POKE4)
---@param addr number
---@param val number
---@param ... number
function poke4(addr, val, ...) end

---Copy LEN bytes of base ram from source to dest.
---
---Sections can be overlapping.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#MEMCPY)
---@param dest_addr number
---@param src_addr number
---@param len number
function memcpy(dest_addr, src_addr, len) end

---Copy LEN bytes of cart ram from source to dest.
---
---Sections can be overlapping.
---
---Returns the number of bytes read.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RELOAD)
---@param dest_addr number
---@param src_addr number
---@param len number
---@param filename string?
---@return number
function reload(dest_addr, src_addr, len, filename) end

---RELOAD() is equivalent to RELOAD(0, 0, 0x4300)
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RELOAD)
---@return number
function reload() end

---Copy LEN bytes from source in base ram to dest in cart ram.
---
---Returns the number of bytes written.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CSTORE)
---@param dest_addr number
---@param src_addr number
---@param len number
---@param filename string?
---@return number
function cstore(dest_addr, src_addr, len, filename) end

---CSTORE() is equivalent to CSTORE(0, 0, 0x4300)
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CSTORE)
---@return number
function cstore() end

---Write the 8-bit value VAL into memory starting at DEST_ADDR, for LEN bytes.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#MEMSET)
---@param dest_addr number
---@param val number
---@param len number
function memset(dest_addr, val, len) end
