---@meta

---WARNING: This functionality is unfinished, experimental, and dangerous.
---
---Only use it at your own risk and never on actual builds as it can easily destroy what you've built.
---@class BuildingPiece : Actor
local BuildingPiece = {}

---@return Vector
function BuildingPiece:GetLocation() end

---@return Rotator
function BuildingPiece:GetRotation() end

---@return string
function BuildingPiece:GetTemplateID() end

---@return integer
function BuildingPiece:GetOwnerID() end

---@return string
function BuildingPiece:GetOwnerName() end

---@return boolean
function BuildingPiece:IsBuilding() end

---@return boolean
function BuildingPiece:IsDoor() end

---@return boolean
function BuildingPiece:IsHatch() end

---@return boolean
function BuildingPiece:IsGate() end

---@return boolean
function BuildingPiece:IsPortcullis() end

---@param ownerID integer
function BuildingPiece:SetOwner(ownerID) end

---@param guildID integer
function BuildingPiece:SetOwnerGuild(guildID) end

---@param ownerID integer
---@return boolean
function BuildingPiece:IsOwner(ownerID) end

function BuildingPiece:DropInventory() end

---@return BuildingPiece|nil
function BuildingPiece:GetMaster() end

---@return BuildingPiece|nil
function BuildingPiece:GetRoot() end

---@return boolean
function BuildingPiece:IsLocked() end

---@param locked boolean
function BuildingPiece:SetLocked(locked) end

---@return boolean
function BuildingPiece:IsRPLocked() end

---@param locked boolean
function BuildingPiece:SetRPLocked(locked) end

---@return string
function BuildingPiece:GetRPKey() end

---@param key string
function BuildingPiece:SetRPKey(key) end

---@return boolean
function BuildingPiece:IsOpen() end

---@param open boolean
function BuildingPiece:SetOpen(open) end

---@return boolean
function BuildingPiece:HasAutoClose() end

---@param enabled boolean
function BuildingPiece:SetAutoClose(enabled) end

---@return number
function BuildingPiece:GetAutoCloseTime() end

---@param time number
function BuildingPiece:SetAutoCloseTime(time) end

---@param destination Vector
function BuildingPiece:Move(destination) end

---@param destination Vector
function BuildingPiece:MoveBuilding(destination) end

---@return table
function BuildingPiece:SerializeBuilding() end