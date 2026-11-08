---@meta

-- ============================================================
--  Supporting types
-- ============================================================

---@class CharacterSheet

---@class ReduxAbility
---@field id integer
---@field name string
---@field category string
---@field range number

---@class RPRBio
---@field shortDesc string
---@field longDesc  string
---@field renown    string
---@field portrait  string

---@class RPRConsents
---@field answers table<string, string>
---@field choices table<string, table<integer>>

---@class RPRBuff
---@field category  string
---@field type      number
---@field target    number
---@field modifier  number
---@field from      string
---@field until     string
---@field permanent boolean

---@class RPRWaypoint
---@field id         number
---@field enabled    boolean
---@field hidden     boolean
---@field showMarker boolean
---@field name       string
---@field category   string
---@field color      Color
---@field location   Vector
---@field rotation   Rotator

---@class RPRLFRP
---@field enabled    boolean
---@field showName   boolean
---@field showMarker boolean
---@field name       string
---@field self1      string
---@field self2      string
---@field looking1   string
---@field looking2   string

-- ============================================================
--  RPR
-- ============================================================

---@class RPR
RPR = {}

---Performs a skill roll for a player.
---@param player Character
---@param skill string
---@param modifier? integer Default: 0
---@param show? boolean Default: false
---@param comment? string Default: ""
---@return integer
function RPR.Roll(player, skill, modifier, show, comment) end

---Returns the base value and modified value of a skill.
---@param player Character
---@param skill string
---@return integer, integer
function RPR.GetSkill(player, skill) end

---Returns the base value and modified value of a stat.
---@param player Character
---@param stat string
---@return integer, integer
function RPR.GetStat(player, stat) end

---Returns true if the player has the specified perk.
---@param player Character
---@param perk string
---@return boolean
function RPR.HasPerk(player, perk) end

---Adds a perk to the player.
---@param player Character
---@param perk string
---@return boolean
function RPR.AddPerk(player, perk) end

---Removes a perk from the player.
---@param player Character
---@param perk string
---@return boolean
function RPR.RemovePerk(player, perk) end

---Applies a modifier to a skill.
---@param player Character
---@param skill string
---@param modifier integer
---@return boolean
function RPR.ModifySkill(player, skill, modifier) end

---Applies a modifier to a stat.
---@param player Character
---@param stat string
---@param modifier integer
---@return boolean
function RPR.ModifyStat(player, stat, modifier) end

---Sets the value of a stat.
---@param player Character
---@param stat string
---@param value integer
---@return boolean
function RPR.SetStat(player, stat, value) end

---Sets the maximum value of a stat.
---@param player Character
---@param stat string
---@param value integer
---@return boolean
function RPR.SetStatMax(player, stat, value) end

---Returns true if the player has the specified rune equipped.
---@param player Character
---@param itemId integer
---@return boolean
function RPR.HasRune(player, itemId) end

---Returns true if the player has an active buff in the specified category.
---@param player Character
---@param category string
---@return boolean
function RPR.HasBuff(player, category) end

---Removes a buff from the player by category.
---@param player Character
---@param category string
---@return boolean
function RPR.RemoveBuff(player, category) end

---Gives a buff to the player. See Tot API docs for buff types and arguments.
---@param player Character
---@param category string
---@param buffType integer
---@param target? string Default: category
---@param modifier? integer Default: 0
---@param duration? integer Default: -1
---@param delay? integer Default: 0
---@return boolean
function RPR.GiveBuff(player, category, buffType, target, modifier, duration, delay) end

---Gives a skill buff to the player.
---@param player Character
---@param category string
---@param skill string
---@param modifier integer
---@param duration? integer Default: -1
---@return boolean
function RPR.BuffSkill(player, category, skill, modifier, duration) end

---Gives a stat buff to the player.
---@param player Character
---@param category string
---@param stat string
---@param modifier integer
---@param duration? integer Default: -1
---@return boolean
function RPR.BuffStat(player, category, stat, modifier, duration) end

---Gives a perk buff to the player.
---@param player Character
---@param category string
---@param perk string
---@param duration? integer Default: -1
---@return boolean
function RPR.BuffPerk(player, category, perk, duration) end

---Gives an ability buff to the player.
---@param player Character
---@param category string
---@param ability string
---@param duration? integer Default: -1
---@return boolean
function RPR.BuffAbility(player, category, ability, duration) end

---Gives a status buff to the player.
---@param player Character
---@param category string
---@param status string
---@param duration? integer Default: -1
---@return boolean
function RPR.BuffStatus(player, category, status, duration) end

---Returns true if the player has the specified item.
---@param player Character
---@param itemId integer
---@param quantity? integer Default: 1
---@return boolean
function RPR.HasItem(player, itemId, quantity) end

---Removes items from the player.
---@param player Character
---@param itemId integer
---@param quantity? integer Default: 1
function RPR.TakeItem(player, itemId, quantity) end

---Gives items to the player.
---@param player Character
---@param itemId integer
---@param quantity? integer Default: 1
function RPR.GiveItem(player, itemId, quantity) end

---Returns a list of all active buff categories on the player.
---@param player Character
---@return string[]
function RPR.GetBuffs(player) end

---Returns the player's CharacterSheet object.
---@param player Character
---@return CharacterSheet
function RPR.GetSheet(player) end

---Resets the player's sheet.
---@param player Character
---@return boolean
function RPR.ResetSheet(player) end

---Returns a serialized string of the player's sheet.
---@param player Character
---@return string
function RPR.ExportSheet(player) end

---Imports a serialized sheet onto a player.
---@param player Character
---@param data string
---@return boolean
function RPR.ImportSheet(player, data) end

---Returns true if the player has the specified spell learned.
---@param player Character
---@param spell string
---@return boolean
function RPR.HasSpell(player, spell) end

---Teaches the player a spell.
---@param player Character
---@param spell string
---@return boolean
function RPR.LearnSpell(player, spell) end

---Removes a spell from the player.
---@param player Character
---@param spell string
---@return boolean
function RPR.ForgetSpell(player, spell) end

---Forces the RPR side panel to refresh for a player.
---@param player Character
function RPR.Refresh(player) end

---Returns a list of all abilities in the RPR system.
---
---If keyed is true, ability IDs are used as table keys.
---@param keyed? boolean Default: false
---@return ReduxAbility[]
function RPR.GetAbilities(keyed) end

---Returns two sequential tables: item template IDs and RPR rune IDs of equipped runes.
---@param player Character
---@return integer[], integer[]
function RPR.GetEquippedRunes(player) end

---Forces a list of rune IDs to be equipped, replacing current runes.
---
---Avoid using inside RPR_updateRunes event to prevent infinite loops.
---@param player Character
---@param runes integer[]
function RPR.SetEquippedRunes(player, runes) end

---Returns the player's custom status name and color.
---@param player Character
---@return string, Color
function RPR.GetUserStatus(player) end

---Sets the player's custom status name and color.
---@param player Character
---@param name string
---@param color Color
function RPR.SetUserStatus(player, name, color) end

---Returns the player's bio fields.
---@param player Character
---@return RPRBio
function RPR.GetBio(player) end

---Returns the player's consent answers and choices.
---@param player Character
---@return RPRConsents
function RPR.GetConsents(player) end

---Removes all assigned perks from the player.
---@param player Character
---@return boolean
function RPR.ClearPerks(player) end

---Removes all learned spells from the player.
---@param player Character
---@return boolean
function RPR.ClearSpells(player) end

---Removes all active buffs from the player.
---@param player Character
---@return boolean
function RPR.ClearBuffs(player) end

---Returns a list of IDs of assigned perks.
---@param player Character
---@return table
function RPR.GetAssignedPerks(player) end

---Returns a list of IDs of learned spells.
---@param player Character
---@return table
function RPR.GetLearnedSpells(player) end

---Returns a list of active buff objects for the player.
---@param player Character
---@return RPRBuff[]
function RPR.GetActiveBuffs(player) end

---Returns the player's LFRP information.
---@param player Character
---@return RPRLFRP
function RPR.GetLFRP(player) end

---Sets the player's LFRP information.
---@param player Character
---@param options RPRLFRP
function RPR.SetLFRP(player, options) end

---Returns a list of all RPR waypoints.
---@return RPRWaypoint[]
function RPR.GetWaypoints() end

---Teleports a player to a waypoint by ID.
---@param player Character
---@param waypointId integer
---@return boolean
function RPR.TeleportToWaypoint(player, waypointId) end