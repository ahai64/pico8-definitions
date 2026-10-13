---@meta

---Get map value at X,Y
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#MGET)
---@param x number
---@param y number
---@return number
function mget(x, y) end

---Set map value at X,Y to VAL
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#MSET)
---@param x number
---@param y number
---@param val number
function mset(x, y, val) end

---Draw section of map (starting from TILE_X, TILE_Y) at screen position SX, SY (pixels).
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#MAP)
---@param tile_x number
---@param tile_y number
---@param sx number?
---@param sy number?
---@param tile_w number?
---@param tile_h number?
---@param layers number?
function map(tile_x, tile_y, sx, sy, tile_w, tile_h, layers) end

---Draw a textured line from (X0,Y0) to (X1,Y1), sampling colour values from the map.
---
---When LAYERS is specified, only sprites with matching flags are drawn (similar to MAP())
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#TLINE)
---@param x0 number
---@param y0 number
---@param x1 number
---@param y1 number
---@param mx number
---@param my number
---@param mdx number?
---@param mdy number?
---@param layers number?
function tline(x0, y0, x1, y1, mx, my, mdx, mdy, layers) end

---Set TLINE coordinate precision.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#Setting_TLINE_Precision)
---@param precision number
function tline(precision) end
