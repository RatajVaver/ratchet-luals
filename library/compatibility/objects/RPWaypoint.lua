---@meta

---WARNING: This functionality is unfinished, experimental, and dangerous.
---
---Only use it at your own risk and never on actual builds as it can easily destroy what you've built.
---@class RPWaypoint : BuildingPiece
local RPWaypoint = {}

---@return integer
function RPWaypoint:GetID() end

---@return string
function RPWaypoint:GetName() end

---@param name string
function RPWaypoint:SetName(name) end

---@return Vector
function RPWaypoint:GetWaypointLocation() end

---@return Rotator
function RPWaypoint:GetWaypointRotation() end

---@return boolean
function RPWaypoint:IsEnabled() end

---@param enabled boolean
function RPWaypoint:SetEnabled(enabled) end

---@return boolean
function RPWaypoint:IsHidden() end

---@param hidden boolean
function RPWaypoint:SetHidden(hidden) end

---@return boolean
function RPWaypoint:IsShowOnMap() end

---@param show boolean
function RPWaypoint:SetShowOnMap(show) end

---@return boolean
function RPWaypoint:IsClanHome() end

---@return boolean
function RPWaypoint:IsCustomWormhole() end

---@return string
function RPWaypoint:GetCategory() end

---@param category string
function RPWaypoint:SetCategory(category) end

---@return integer
function RPWaypoint:GetColor() end

---@param color integer
function RPWaypoint:SetColor(color) end

---@return string
function RPWaypoint:GetWormholeID() end

---@param id string
function RPWaypoint:SetWormholeID(id) end

---@return boolean
function RPWaypoint:GetPreventCarry() end

---@param prevent boolean
function RPWaypoint:SetPreventCarry(prevent) end

function RPWaypoint:Save() end