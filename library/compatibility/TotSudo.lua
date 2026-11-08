---@meta

---@class TotSudo
TotSudo = {}

-- ============================================================
--  Roles & Permissions
-- ============================================================

---Returns true if the player has the specified role.
---@param player Character
---@param name string
---@return boolean
function TotSudo.HasRole(player, name) end

---Grants a role to the player.
---@param player Character
---@param name string
---@return boolean
function TotSudo.GrantRole(player, name) end

---Revokes a role from the player.
---@param player Character
---@param name string
---@return boolean
function TotSudo.RevokeRole(player, name) end

---Returns a table of all roles the player has.
---@param player Character
---@return string[]
function TotSudo.GetRoles(player) end

---Returns true if the player has the specified permission.
---@param player Character
---@param name string
---@return boolean
function TotSudo.HasPermission(player, name) end

---Sets the /act name of the player.
---@param player Character
---@param name string
---@return boolean
function TotSudo.SetActName(player, name) end

-- ============================================================
--  CharVars
-- ============================================================

---Returns true if the player has the specified character tag.
---@param player Character
---@param name string
---@return boolean
function TotSudo.HasCharTag(player, name) end

---Adds a character tag to the player.
---@param player Character
---@param name string
---@return boolean
function TotSudo.AddCharTag(player, name) end

---Removes a character tag from the player.
---@param player Character
---@param name string
---@return boolean
function TotSudo.RemoveCharTag(player, name) end

---Returns a float character variable for the player.
---@param player Character
---@param name string
---@return number
function TotSudo.GetCharFloat(player, name) end

---Sets a float character variable for the player.
---@param player Character
---@param name string
---@param value number
---@return boolean
function TotSudo.SetCharFloat(player, name, value) end

---Removes a float character variable from the player.
---@param player Character
---@param name string
---@return boolean
function TotSudo.RemoveCharFloat(player, name) end

---Returns a string character variable for the player.
---@param player Character
---@param name string
---@return string
function TotSudo.GetCharString(player, name) end

---Sets a string character variable for the player.
---@param player Character
---@param name string
---@param value string
---@return boolean
function TotSudo.SetCharString(player, name, value) end

---Removes a string character variable from the player.
---@param player Character
---@param name string
---@return boolean
function TotSudo.RemoveCharString(player, name) end

-- ============================================================
--  GlobVars
-- ============================================================

---Returns true if the specified global tag exists.
---@param name string
---@return boolean
function TotSudo.HasGlobTag(name) end

---Adds a global tag.
---@param name string
---@return boolean
function TotSudo.AddGlobTag(name) end

---Removes a global tag.
---@param name string
---@return boolean
function TotSudo.RemoveGlobTag(name) end

---Returns a global float variable.
---@param name string
---@return number
function TotSudo.GetGlobFloat(name) end

---Sets a global float variable.
---@param name string
---@param value number
---@return boolean
function TotSudo.SetGlobFloat(name, value) end

---Removes a global float variable.
---@param name string
---@return boolean
function TotSudo.RemoveGlobFloat(name) end

---Returns a global string variable.
---@param name string
---@return string
function TotSudo.GetGlobString(name) end

---Sets a global string variable.
---@param name string
---@param value string
---@return boolean
function TotSudo.SetGlobString(name, value) end

---Removes a global string variable.
---@param name string
---@return boolean
function TotSudo.RemoveGlobString(name) end