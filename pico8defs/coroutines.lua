---@meta

---YIELD() any number of times, and then resumed again at the same points.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#YIELD)
function yield() end

---Create a coroutine for function f.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#COCREATE)
---@param f function
---@return thread
function cocreate(f) end

---Run or continue the coroutine c.
---
---Parameters p0, p1.. are passed to the coroutine's function.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CORESUME)
---@param c thread
---@param ... any
---@return boolean
---@return string?
function coresume(c, ...) end

---Return the status of coroutine C as a string
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#COSTATUS)
---@param c thread
---@return string
function costatus(c) end
