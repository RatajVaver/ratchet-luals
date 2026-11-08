---@meta

---@class DDRestraintResult
---@field isGagged boolean
---@field isBlindfolded boolean
---@field hasBoundHands boolean
---@field hasBoundLegs boolean
---@field armRestraint Item|nil
---@field handCuffs Item|nil
---@field legCuffs Item|nil
---@field blindfold Item|nil
---@field collar Item|nil
---@field gag Item|nil

---@class DD
DD = {}

---@param player Character
---@return DDRestraintResult
function DD.GetRestraints(player) end

---@param player Character
---@return boolean
function DD.IsInPartnerScene(player) end

---@param player Character
---@return boolean
function DD.IsBeingCarried(player) end

---@param player Character
---@return boolean
function DD.IsCarrying(player) end