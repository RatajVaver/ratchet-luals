---@meta

---@class ExportedPlugin
---@field [string] function

---@class ExportsLib
---@field [string] ExportedPlugin
exports = {}

---Exports a function, allowing it to be called from other plugins.
---@param name string
---@param func function
---@return boolean
function export(name, func) end