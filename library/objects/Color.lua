---@diagnostic disable: duplicate-doc-field
---@meta

---@class Color
---@field R number
---@field G number
---@field B number
---@field A number

---Construct a Color. Values can be 0-255 (int) or 0-1 (float).
---
---A single hex integer is also accepted e.g. `Color(0xFFCC00)`.
---@param R number
---@param G? number
---@param B? number
---@param A? number
---@return Color
function Color(R, G, B, A) end