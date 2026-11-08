---@meta

---@class World
World = {}

---Returns the guild ID of the land owner at a location, or 0 if unclaimed.
---
---If the returned ID is > 0, use getGuildFromID to check if it's a guild or player claim.
---@param location Vector
---@return integer
function World.GetLandOwner(location) end

---Returns the current time of day.
---@return number
function World.GetTimeOfDay() end

---Sets the current time of day.
---@param time number
function World.SetTimeOfDay(time) end