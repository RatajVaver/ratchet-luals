---@meta

---@class Vector
---@field x number
---@field y number
---@field z number
---@field length             fun(self: Vector): number
---@field getNormalized      fun(self: Vector): Vector
---@field getDistanceTo      fun(self: Vector, other: Vector): number
---@field getDistance2D      fun(self: Vector, other: Vector): number
---@field findLookAtRotation fun(self: Vector, other: Vector): Rotator

---Construct a Vector. All parameters are optional and default to 0.
---@param x? number
---@param y? number
---@param z? number
---@return Vector
function Vector(x, y, z) end