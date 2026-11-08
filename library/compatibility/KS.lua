---@meta

-- ============================================================
--  Supporting types
-- ============================================================

---@class KSVolumeOptions
---@field radius? number
---@field height? number
---@field color? Color

---@class KSVolume
---@field GetColor  fun(self: KSVolume): Color
---@field GetRadius fun(self: KSVolume): number
---@field GetHeight fun(self: KSVolume): number
---@field GetShape  fun(self: KSVolume): string
---@field SetColor  fun(self: KSVolume, color: Color)
---@field SetRadius fun(self: KSVolume, radius: number)
---@field SetHeight fun(self: KSVolume, height: number)

---Construct a KSVolume at a location.
---Shapes: "Sphere" (options: radius, color), "Cylinder" (options: radius, height, color)
---@param location Vector
---@param shape string
---@param options KSVolumeOptions
---@return KSVolume
function KSVolume(location, shape, options) end

-- ============================================================
--  KS
-- ============================================================

---@class KS
KS = {}

---Pushes or pulls a character from an origin point.
---@param player Character
---@param origin Vector
---@param distance number
---@param pull boolean
---@param sweep boolean
function KS.PushCharacter(player, origin, distance, pull, sweep) end

---Opens a target selection UI for a player.
---
---Possible target types: "Players", "Self", "Puppets", "NPC"
---@param player Character
---@param targets integer
---@param maxDistance number
---@param allowedTargetTypes string[]
---@param allowPartial boolean
---@param allowRepeat boolean
---@param command string
---@param title string
function KS.SelectCharacters(player, targets, maxDistance, allowedTargetTypes, allowPartial, allowRepeat, command, title) end

---Opens a point selection UI for a player.
---
---AoE point shapes — 0: Point, 1: Sphere, 2: Cylinder
---@param player Character
---@param shape integer
---@param maxDistance number
---@param radius number
---@param height number
---@param command string
---@param color Color
---@param title string
function KS.SelectPoint(player, shape, maxDistance, radius, height, command, color, title) end

---Opens a multi-point selection UI for a player.
---
---AoE multi-point shapes — 0: Wall
---@param player Character
---@param shape integer
---@param maxDistance number
---@param length number
---@param width number
---@param height number
---@param command string
---@param color Color
function KS.SelectMultiPoint(player, shape, maxDistance, length, width, height, command, color) end

---Opens a direction selection UI for a player.
---
---AoE directional shapes — 0: Cone, 1: Line, 2: Cube
---@param player Character
---@param shape integer
---@param length number
---@param width number
---@param command string
---@param color Color
---@param title string
function KS.SelectDirection(player, shape, length, width, command, color, title) end

---Processes a point-based AoE.
---@param player Character
---@param point Vector
---@param shape integer
---@param radius number
---@param height number
---@param visualize boolean
---@param trace boolean
---@param color Color
function KS.ProcessAoE(player, point, shape, radius, height, visualize, trace, color) end

---Processes a multi-point AoE between two positions.
---@param player Character
---@param first Vector
---@param second Vector
---@param shape integer
---@param width number
---@param height number
---@param visualize boolean
---@param trace boolean
---@param color Color
function KS.ProcessMultiPointAoE(player, first, second, shape, width, height, visualize, trace, color) end

---Processes a directional AoE from a point in a direction.
---@param player Character
---@param point Vector
---@param direction Rotator
---@param shape integer
---@param length number
---@param width number
---@param visualize boolean
---@param trace boolean
---@param color Color
function KS.ProcessDirectionalAoE(player, point, direction, shape, length, width, visualize, trace, color) end

---Returns the two selected points and rotation from a player's last selection.
---@param player Character
---@return Vector, Vector, Rotator
function KS.GetSelectedPoints(player) end

---Returns the characters selected by a player's last selection.
---@param player Character
---@return (Character|TotPuppet)[]
function KS.GetSelectedCharacters(player) end

---Shows an info box to a player.
---@param player Character
---@param title string
---@param content string
function KS.InfoBox(player, title, content) end

---Shows a combat tracker UI to a player.
---@param player Character
---@param playerNames? string[] Default: {}
---@param activeTurn? integer Default: -1
function KS.CombatTracker(player, playerNames, activeTurn) end

---Shows a Custom User Interface to a player.
---
---Generate definition code using cui.ratajmods.net.
---@param player Character
---@param definition string
function KS.CreateCUI(player, definition) end

---Toggles a redlight warning on screen for all players.
---@param enabled boolean
---@param blocking? boolean Default: false
function KS.Redlight(enabled, blocking) end