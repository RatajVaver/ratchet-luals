---@meta

---WARNING: This functionality is unfinished, experimental, and dangerous.
---
---Only use it at your own risk and never on actual builds as it can easily destroy what you've built.
---@class RPPOI : BuildingPiece
local RPPOI = {}

function RPPOI:ResetInspections() end

---@param playerID integer
function RPPOI:AddEditor(playerID) end

---@return table
function RPPOI:GetEditors() end

---@return boolean
function RPPOI:IsHidden() end

---@return table
function RPPOI:GetInspectResults() end

---@return string
function RPPOI:GetDescription() end

---@param description string
function RPPOI:SetDescription(description) end

---@return string
function RPPOI:GetIcon() end

---@param icon string
function RPPOI:SetIcon(icon) end

---@return number
function RPPOI:GetInspectionDistance() end

---@param distance number
function RPPOI:SetInspectionDistance(distance) end

---@return number
function RPPOI:GetSpotDistance() end

---@param distance number
function RPPOI:SetSpotDistance(distance) end

---@return boolean
function RPPOI:GetCanAnyoneRemove() end

---@param enabled boolean
function RPPOI:SetCanAnyoneRemove(enabled) end

---@return boolean
function RPPOI:GetIsDateHidden() end

---@param hidden boolean
function RPPOI:SetIsDateHidden(hidden) end

---@return number
function RPPOI:GetCleanupDuration() end

---@param duration number
function RPPOI:SetCleanupDuration(duration) end

---@return table
function RPPOI:GetRolls() end

---@param rolls table
function RPPOI:SetRolls(rolls) end