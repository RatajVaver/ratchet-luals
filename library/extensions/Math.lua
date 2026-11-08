---@meta

---Returns a number rounded to the given decimal places, or nearest integer by default.
---@param number number
---@param decimals? integer Default: 0
---@return integer
function math.round(number, decimals) end

---Clamps a value between a minimum and maximum bound.
---@param value number
---@param min number
---@param max number
---@return number
function math.clamp(value, min, max) end

---Linear interpolation between two numbers at increment t (0-1).
---@param start number
---@param stop number
---@param t number
---@return number
function math.lerp(start, stop, t) end

---Calculates the distance between two points in 2D space.
---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return number
function math.distance(x1, y1, x2, y2) end