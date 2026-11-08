---@meta

---WARNING: This functionality is unfinished, experimental, and dangerous.
---
---Only use it at your own risk and never on actual builds as it can easily destroy what you've built.
---@class RPNoticeBoard : BuildingPiece
local RPNoticeBoard = {}

---@return table
function RPNoticeBoard:GetMessages() end

---@param message string
function RPNoticeBoard:AddMessage(message) end

---@param index integer
function RPNoticeBoard:DeleteMessage(index) end

---@param index integer
function RPNoticeBoard:ToggleSticky(index) end

---@return integer
function RPNoticeBoard:GetMaxMessages() end

---@param max integer
function RPNoticeBoard:SetMaxMessages(max) end

---@return boolean
function RPNoticeBoard:GetForceCharacterName() end

---@param forced boolean
function RPNoticeBoard:SetForceCharacterName(forced) end