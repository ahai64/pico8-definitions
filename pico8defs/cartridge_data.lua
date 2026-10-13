---@meta

---Opens a permanent data storage slot indexed by ID that can be used to store and retrieve up to 256 bytes (64 numbers) worth of data using DSET() and DGET().
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#CARTDATA)
---@param id string
---@return boolean # true if data was loaded, otherwise false.
function cartdata(id) end

---Get the number stored at INDEX (0..63)
---
---Use this only after you have called CARTDATA()
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#DGET)
---@param index number
---@return number
function dget(index) end

---Set the number VALUE at INDEX (0..63)
---
---Use this only after you have called CARTDATA()
---
---[View Online](https://www.lexaloffle.com/dl/docs/pico-8_manual.html#DSET)
---@param index number
---@param value number
function dset(index, value) end
