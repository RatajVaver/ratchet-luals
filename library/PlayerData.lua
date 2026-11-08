---@meta

---@class PlayerData
PlayerData = {}

---Set a value in a player's data by their database ID.
---@param ID integer
---@param key string
---@param value string|number|boolean|table
function PlayerData.Set(ID, key, value) end

---Get a value from a player's data by their database ID.
---@param ID integer
---@param key string
---@return string|number|boolean|table
function PlayerData.Get(ID, key) end

---Get all data stored for a player by their database ID.
---@param ID integer
---@return table
function PlayerData.GetAll(ID) end

---Returns true if the player has a value stored under the given key.
---@param ID integer
---@param key string
---@return boolean
function PlayerData.Has(ID, key) end

---Delete a value from a player's data by their database ID.
---@param ID integer
---@param key string
function PlayerData.Delete(ID, key) end

---Delete all data stored for a player by their database ID.
---@param ID integer
function PlayerData.DeleteAll(ID) end