---@meta

---Checks whether a file exists by relative path from the Lua file.
---@param path string
---@return boolean
function fileExists(path) end

---Read all content of a text file.
---@param path string
---@return string
function readFile(path) end

---Write text into a file, replacing all previous content.
---@param path string
---@param content string
---@return boolean
function writeFile(path, content) end

---Write text into a file, adding it after all existing content.
---@param path string
---@param content string
---@return boolean
function appendFile(path, content) end

---Returns path of the current file relative to the specific plugin's folder.
---@return string
function getFilePath() end

---Loads additional Lua file by relative path.
---
---A table can be returned from the other script to serve as a module.
---@param path string
---@return any
function include(path) end