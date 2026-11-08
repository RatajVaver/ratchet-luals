---@meta

---@class Rotator
---@field pitch number
---@field yaw   number
---@field roll  number

---Construct a Rotator. All parameters are optional and default to 0.
---
---Only `yaw` is relevant for players (to represent facing direction).
---
---Do NOT apply non-zero `pitch` or `roll` to players.
---@param pitch? number
---@param yaw?   number
---@param roll?  number
---@return Rotator
function Rotator(pitch, yaw, roll) end