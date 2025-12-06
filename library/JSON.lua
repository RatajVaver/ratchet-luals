---@meta
---JSON: Provides saving, loading, parsing, and stringifying JSON data.

---@class JSON
JSON = {}

---Save a Lua table as a JSON file.
---@param path string The file path where JSON should be written.
---@param data table The table to serialize to JSON.
---@return boolean success
function JSON.save(path, data) end

---Load a JSON file into a table.
---@param path string File path of the JSON file.
---@return table|nil data
function JSON.load(path) end

---Convert a Lua table to a JSON string.
---@param data table Table to serialize.
---@return string json
function JSON.stringify(data) end

---Parse a JSON string into a Lua table.
---@param json string JSON string.
---@return table data
function JSON.parse(json) end
