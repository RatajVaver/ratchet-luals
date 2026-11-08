---@meta

---@class Server
Server = {}

---Returns the current memory usage of the server in bytes.
---@return integer
function Server.GetMemoryUsage() end

---Returns the current average FPS of the server.
---@return number
function Server.GetAverageFPS() end

---Returns the server uptime in seconds.
---@return integer
function Server.GetUptime() end

---Sets the maximum number of player slots on the server.
---@param slots integer
function Server.SetMaxPlayers(slots) end