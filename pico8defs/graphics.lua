---@meta

---Sets the clipping rectangle in pixels. All drawing operations will be clipped to the rectangle at x, y with a width and height of w,h.
---
---CLIP() to reset.
---
---When CLIP_PREVIOUS is true, clip the new clipping region by the old one.
---
---Returns the previous clipping rectangle as 4 values (x, y, w, h).
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CLIP)
---@param x number
---@param y number
---@param w number
---@param h number
---@param clip_previous boolean?
---@return number x
---@return number y
---@return number w
---@return number h
function clip(x, y, w, h, clip_previous) end

---Sets the clipping rectangle in pixels. All drawing operations will be clipped to the rectangle at x, y with a width and height of w,h.
---
---CLIP() to reset.
---
---Returns the previous clipping rectangle as 4 values (x, y, w, h).
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CLIP)
---@return number x
---@return number y
---@return number w
---@return number h
function clip() end

---Sets the pixel at x, y to colour index COL (0..15).
---
---When COL is not specified, the current draw colour is used.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PSET)
---@param x number
---@param y number
---@param col number?
function pset(x, y, col) end

---Returns the colour of a pixel on the screen at (X, Y).
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PGET)
---@param x number
---@param y number
---@return number
function pget(x, y) end

---Set the colour (COL) of a sprite sheet pixel.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SSET)
---@param x number
---@param y number
---@param col number?
function sset(x, y, col) end

---Get the colour (COL) of a sprite sheet pixel.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SGET)
---@param x number
---@param y number
---@return number
function sget(x, y) end

---Set the value of sprite n's flag f.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#FSET)
---@param n number
---@param f number
---@param val boolean
function fset(n, f, val) end

---Set the value of sprite n's flag.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#FSET)
---@param n number
---@param val bitfield
function fset(n, val) end

---Get the value (VAL) of all of sprite N's flags as a single bitfield.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#FGET)
---@param n number
---@return bitfield
function fget(n) end

---Get the value of sprite N's flag F.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#FGET)
---@param n number
---@param f number
---@return boolean
function fget(n, f) end

---Print a string STR and optionally set the draw colour to COL.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PRINT)
---@param str any
---@param col number?
---@return number
---@return number
function print(str, col) end

---Print a string STR and optionally set the draw colour to COL.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PRINT)
---@param str any
---@param x number
---@param y number
---@param col number?
---@return number
---@return number
function print(str, x, y, col) end

---Set the cursor position.
---
---If COL is specified, also set the current colour.
---
---Returns the previous cursor position as (x, y).
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CURSOR)
---@param x number
---@param y number
---@param col number?
---@return number x
---@return number y
function cursor(x, y, col) end

---Set the current colour to be used by drawing functions.
---
---If COL is not specified, the current colour is set to 6
---
---Returns the previous colour.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#COLOR)
---@param col number?
---@return number
function color(col) end

---Clear the screen and reset the clipping rectangle.
---
---COL defaults to 0 (black)
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CLS)
---@param col number?
function cls(col) end

---Set a screen offset of -x, -y for all drawing operations
---
---CAMERA() to reset
---
---Returns the previous camera position as (x, y).
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CAMERA)
---@param x number?
---@param y number?
---@return number x
---@return number y
function camera(x, y) end

---Draw a circle at x,y with radius r
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CIRC)
---@param x number
---@param y number
---@param r number
---@param col number?
function circ(x, y, r, col) end

---Draw a filled circle at x,y with radius r
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CIRCFILL)
---@param x number
---@param y number
---@param r number
---@param col number?
function circfill(x, y, r, col) end

---Draw an oval that is symmetrical in x and y (an ellipse), with the given bounding rectangle.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#OVAL)
---@param x0 number
---@param y0 number
---@param x1 number
---@param y1 number
---@param col number?
function oval(x0, y0, x1, y1, col) end

---Draw a filled oval that is symmetrical in x and y (an ellipse), with the given bounding rectangle.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#OVALFILL)
---@param x0 number
---@param y0 number
---@param x1 number
---@param y1 number
---@param col number?
function ovalfill(x0, y0, x1, y1, col) end

---Draw a line from (X0, Y0) to (X1, Y1)
---
---If (X1, Y1) are not given, the end of the last drawn line is used.
---
---LINE() with no parameters means that the next call to LINE(X1, Y1) will only set the end points without drawing.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#LINE)
---@param x0 number?
---@param y0 number?
---@param x1 number?
---@param y1 number?
---@param col number?
function line(x0, y0, x1, y1, col) end

---Draw a rectangle with corners at (X0, Y0), (X1, Y1).
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RECT)
---@param x0 number
---@param y0 number
---@param x1 number
---@param y1 number
---@param col number?
function rect(x0, y0, x1, y1, col) end

---Draw a filled rectangle with corners at (X0, Y0), (X1, Y1).
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RECTFILL)
---@param x0 number
---@param y0 number
---@param x1 number
---@param y1 number
---@param col number?
function rectfill(x0, y0, x1, y1, col) end

---Draw a rounded rectangle with rounded corners.
---
---The width (W) and height (H) are in pixels, and must both be more than 0 for the shape to be drawn.
---
---Radius (R) defaults to 0, and is the size of the quarter-circle to be drawn at each corner. The radius used is clamped to fall the range 0 .. min(width,height)/2.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RRECT)
---@param x number
---@param y number
---@param w number
---@param h number
---@param r number
---@param col number?
function rrect(x, y, w, h, r, col) end

---Draw a rounded filled rectangle with rounded corners.
---
---The width (W) and height (H) are in pixels, and must both be more than 0 for the shape to be drawn.
---
---Radius (R) defaults to 0, and is the size of the quarter-circle to be drawn at each corner. The radius used is clamped to fall the range 0 .. min(width,height)/2.
---
---When bits 0x1800.0000 are set in COL, and (PEEK(0x5F34) & 2) == 2, RRECTFILL is drawn inverted.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#RRECTFILL)
---@param x number
---@param y number
---@param w number
---@param h number
---@param r number
---@param col number?
function rrectfill(x, y, w, h, r, col) end

---PAL() swaps colour c0 for c1 for one of three palette re-mappings (p defaults to 0)
---- 0: Draw Palette
---- 1: Display Palette
---- 2: Secondary Palette
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PAL)
---@param c0 number
---@param c1 number
---@param p number?
---@return number
function pal(c0, c1, p) end

---assign colours for each entry
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PAL)
---@param tbl table
---@param p number?
function pal(tbl, p) end

---PAL() with no arguments resets all palettes to system defaults (including transparency values)
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PAL)
function pal() end

---PAL(P) resets a particular palette (0..2) to system defaults
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PAL)
---@param p number
function pal(p) end

---Set transparency for colour index to T (boolean) Transparency is observed by SPR(), SSPR(), MAP() AND TLINE()
---
---When C is the only parameter, it is treated as a bitfield used to set all 16 values.
---
---Return the previous transparency of the colour.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PALT)
---@param c number
---@param t boolean?
---@return boolean
function palt(c, t) end

---PALT() resets to default: all colours opaque except colour 0
---
---Return the previous transparency state(bitfield).
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#PALT)
---@return bitfield
function palt() end

---Draw sprite N (0..255) at position X,Y
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SPR)
---@param n number
---@param x number
---@param y number
---@param w number? 1 by default and specify how many sprites wide to blit.
---@param h number? 1 by default and specify how many sprites wide to blit.
---@param flip_x boolean? flip horizontally when true
---@param flip_y boolean? flip vertically when true
function spr(n, x, y, w, h, flip_x, flip_y) end

---Stretch a rectangle of the sprite sheet (sx, sy, sw, sh) to a destination rectangle on the screen (dx, dy, dw, dh).
---
---In both cases, the x and y values are coordinates (in pixels) of the rectangle's top left corner, with a width of w, h.
---
---Colour 0 drawn as transparent by default (see PALT())
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#SSPR)
---@param sx number
---@param sy number
---@param sw number
---@param sh number
---@param dx number
---@param dy number
---@param dw number? defaults to sw
---@param dh number? defaults to sh
---@param flip_x boolean? flip horizontally when true
---@param flip_y boolean? flip vertically when true
function sspr(sx, sy, sw, sh, dx, dy, dw, dh, flip_x, flip_y) end

---The PICO-8 fill pattern is a 4x4 2-colour tiled pattern observed by:
---
---CIRC() CIRCFILL() RECT() RECTFILL() OVAL() OVALFILL() PSET() LINE()
---
---Returns the previous fill pattern.
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#FILLP)
---@param p bitfield P is a bitfield in reading order starting from the highest bit.
---@return number
function fillp(p) end
