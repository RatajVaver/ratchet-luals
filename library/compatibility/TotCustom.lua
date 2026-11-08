---@meta

---@class TotCustom
TotCustom = {}

---Returns serialized body appearance data for a character or puppet.
---@param actor Character|TotPuppet
---@return string
function TotCustom.GetBody(actor) end

---Returns serialized armor appearance data for a character or puppet.
---@param actor Character|TotPuppet
---@return string
function TotCustom.GetArmor(actor) end

---Returns serialized accessories appearance data for a character or puppet.
---@param actor Character|TotPuppet
---@return string
function TotCustom.GetAccessories(actor) end

---Sets body appearance data on a character or puppet.
---@param actor Character|TotPuppet
---@param data string
---@return boolean
function TotCustom.SetBody(actor, data) end

---Sets armor appearance data on a character or puppet.
---@param actor Character|TotPuppet
---@param data string
---@return boolean
function TotCustom.SetArmor(actor, data) end

---Sets accessories appearance data on a character or puppet.
---@param actor Character|TotPuppet
---@param data string
---@return boolean
function TotCustom.SetAccessories(actor, data) end

---Returns the value of a body slider by key.
---@param actor Character|TotPuppet
---@param key string
---@return number
function TotCustom.GetSliderValue(actor, key) end

---Sets the value of a body slider by key.
---@param actor Character|TotPuppet
---@param key string
---@param value number
---@return boolean
function TotCustom.SetSliderValue(actor, key, value) end

---Returns a sequential table of item IDs of equipped armor pieces.
---
---Slots: 1=Head, 2=Torso, 3=Legs, 4=Hands, 5=Feet
---@param actor Character|TotPuppet
---@return integer[]
function TotCustom.GetArmorPieces(actor) end

---Returns the item ID and up to four colors of an equipped armor piece.
---
---Slots: 1=Head, 2=Torso, 3=Legs, 4=Hands, 5=Feet
---@param actor Character|TotPuppet
---@param slot integer
---@return integer, Color|nil, Color|nil, Color|nil, Color|nil
function TotCustom.GetArmorPiece(actor, slot) end

---Sets an armor piece on a character or puppet.
---
---Provide no colors (all black), one color (applied to all layers), or all four.
---
---Slots: 1=Head, 2=Torso, 3=Legs, 4=Hands, 5=Feet
---@param actor Character|TotPuppet
---@param slot integer
---@param itemId integer
---@param color1? Color
---@param color2? Color
---@param color3? Color
---@param color4? Color
---@return boolean
function TotCustom.SetArmorPiece(actor, slot, itemId, color1, color2, color3, color4) end

---Removes an armor piece from the given slot.
---
---Slots: 1=Head, 2=Torso, 3=Legs, 4=Hands, 5=Feet
---@param actor Character|TotPuppet
---@param slot integer
---@return boolean
function TotCustom.ClearArmorSlot(actor, slot) end