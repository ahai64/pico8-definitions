---@meta

---Returns the maximum of x and y.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#MAX)
---@param x number
---@param y number
---@return number
function max(x, y) end

---Returns the minimum of x and y.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#MIN)
---@param x number
---@param y number
---@return number
function min(x, y) end

---Returns the middle value of parameters.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#MID)
---@param x number
---@param y number
---@param z number
---@return number
function mid(x, y, z) end

---Rounds x down to the nearest integer.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#FLR)
---@param x any
---@return number
function flr(x) end

---Rounds x up to the nearest integer.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CEIL)
---@param x number
---@return number
function ceil(x) end

---Returns the cosine of x.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#COS)
---@param x number
---@return number
function cos(x) end

---Returns the sine of x.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SIN)
---@param x number
---@return number
function sin(x) end

---Converts DX, DY into an angle from 0..1
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#ATAN2)
---@param dx number
---@param dy number
---@return number
function atan2(dx, dy) end

---Returns the square root of x.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SQRT)
---@param x number
---@return number
function sqrt(x) end

---Returns the absolute value of x.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#ABS)
---@param x number
---@return number
function abs(x) end

---Returns the sign of a number, 1 for positive, -1 for negative
---
---sgn(0) will return 1, not 0
---@param x number
---@return number
function sgn(x) end

---returns a random number n, 0 <= n < x.
---
---rnd() will return number n, 0 <= n < 1
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RND)
---@param x number?
---@return number
function rnd(x) end

---Return a random element between table[1] and table[#table].
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RND)
---@param tbl table
---@return any
function rnd(tbl) end

---Sets the random number seed. The seed is automatically randomized on cart startup.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SRAND)
---@param x any
function srand(x) end

---Both bits are set: band(x, y) == x & y
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Bitwise_Operations)
---@param x number
---@param y number
---@return number
function band(x, y) end

---Either bit is set: bor(x, y) == x | y
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Bitwise_Operations)
---@param x number
---@param y number
---@return number
function bor(x, y) end

---Either bit is set, but not both of them: bxor(x, y) == x ^^ y
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Bitwise_Operations)
---@param x number
---@param y number
---@return number
function bxor(x, y) end

---Each bit is NOT set: bnot(x) == ~x
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Bitwise_Operations)
---@param x number
---@return number
function bnot(x) end

---Shift left N bits (zeros come in from the right). Returns 0 when n >= 32.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Bitwise_Operations)
---@param x number
---@param n number
---@return number
function shl(x, n) end

---Arithmetic right shift (the left-most bit state is duplicated). Returns 0 when n >= 32.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Bitwise_Operations)
---@param x number
---@param n number
---@return number
function shr(x, n) end

---Logical right shift (zeros come in from the left).
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Bitwise_Operations)
---@param x number
---@param n number
---@return number
function lshr(x, n) end

---Rotate all bits in x left by n places.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Bitwise_Operations)
---@param x number
---@param n number
---@return number
function rotl(x, n) end

---Rotate all bits in x right by n places.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Bitwise_Operations)
---@param x number
---@param n number
---@return number
function rotr(x, n) end
