---@meta

---@class Guild
---@field GetID      fun(self: Guild): integer
---@field GetName    fun(self: Guild): string
---@field GetMOTD    fun(self: Guild): string
---@field GetOwner   fun(self: Guild): integer
---@field GetMembers fun(self: Guild): table<integer, string>

---Get a Guild by its database ID.
---@param id integer
---@return Guild|nil
function getGuildFromID(id) end

---Returns a table of all guilds on the server.
---@return Guild[]
function getAllGuilds() end