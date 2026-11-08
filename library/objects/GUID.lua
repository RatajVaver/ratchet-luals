---@meta

---@class GUID
---@field A integer
---@field B integer
---@field C integer
---@field D integer

---Creates a new random GUID, or recreates one from a string (A-B-C-D format) or four integer parts.
---@overload fun(): GUID
---@overload fun(guidString: string): GUID
---@overload fun(A: integer, B: integer, C: integer, D: integer): GUID
function GUID(...) end