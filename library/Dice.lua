---@meta
---Dice: A simple library for generating random numbers by rolling dice.

---@class Dice
Dice = {}

---Rolls dice and returns the total and an optional table of individual rolls.
---@param count integer Number of dice to roll.
---@param sides integer Number of sides per die.
---@return integer total Sum of all dice rolled.
---@return integer[] rolls List of each individual die roll.
function Dice.Roll(count, sides) end

---Rolls dice and returns the total and an optional table of individual rolls.
---@param formula string Dice notation string (such as 1d6 or 3d8).
---@return integer total Sum of all dice rolled.
---@return integer[] rolls List of each individual die roll.
function Dice.Roll(formula) end

---Rolls a single 4-sided die.
---@return integer
function Dice.D4() end

---Rolls a single 6-sided die.
---@return integer
function Dice.D6() end

---Rolls a single 8-sided die.
---@return integer
function Dice.D8() end

---Rolls a single 10-sided die.
---@return integer
function Dice.D10() end

---Rolls a single 12-sided die.
---@return integer
function Dice.D12() end

---Rolls a single 20-sided die.
---@return integer
function Dice.D20() end
