---@meta

---Set table TBL metatable to M
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SETMETATABLE)
---@param tbl table
---@param m table
function setmetatable(tbl, m) end

---Return the current metatable for table TBL, or nil if none is set.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#GETMETATABLE)
---@param tbl table
---@return table|nil
function getmetatable(tbl) end

---Raw access to the table, as if no metamethods were defined.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RAWSET)
---@param tbl any
---@param key any
---@param value any
---@return table
function rawset(tbl, key, value) end

---Raw access to the table, as if no metamethods were defined.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RAWGET)
---@param tbl any
---@param key any
---@return any
function rawget(tbl, key) end

---Raw access to the table, as if no metamethods were defined.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RAWEQUAL)
---@param tbl1 table
---@param tbl2 table
---@return boolean
function rawequal(tbl1, tbl2) end

---Raw access to the table, as if no metamethods were defined.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RAWLEN)
---@param tbl table
---@return number
function rawlen(tbl) end
