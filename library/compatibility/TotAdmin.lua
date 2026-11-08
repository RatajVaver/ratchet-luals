---@meta

-- ============================================================
--  Supporting types
-- ============================================================

---@class GUID : string

---@class TotMapMarker

---@class TotZone
---@field GetUID            fun(self: TotZone): integer
---@field GetName           fun(self: TotZone): string
---@field SetName           fun(self: TotZone, name: string)
---@field GetParam          fun(self: TotZone, name: string): string
---@field SetParam          fun(self: TotZone, name: string, value: string|number|boolean)
---@field GetActionModule   fun(self: TotZone, event: string): string, string
---@field SetActionModule   fun(self: TotZone, event: string, moduleName: string, data: string): boolean
---@field SetRatchetEvent   fun(self: TotZone, event: string, ratchetEvent: string, argument?: string): boolean
---@field TriggerEvent      fun(self: TotZone, player: Character, event: string)
---@field IsBox             fun(self: TotZone): boolean
---@field IsSphere          fun(self: TotZone): boolean
---@field Delete            fun(self: TotZone)

---Construct a TotZone. Shape must be "Sphere" or "Box".
---@param shape string
---@param location Vector
---@return TotZone
function TotZone(shape, location) end

---@class TotBasicNPC
---@field GetName   fun(self: TotBasicNPC): string
---@field SetName   fun(self: TotBasicNPC, displayName: string)
---@field Delete    fun(self: TotBasicNPC)

---Construct a TotBasicNPC at a location.
---@param location Vector
---@param rotation? Rotator
---@return TotBasicNPC
function TotBasicNPC(location, rotation) end

---@class TotPuppetTag

---@class TotPuppet : Actor
---@field Move                  fun(self: TotPuppet, position: Vector, rotation?: number)
---@field GetPosition           fun(self: TotPuppet): Vector
---@field GetUID                fun(self: TotPuppet): integer
---@field GetName               fun(self: TotPuppet): string
---@field SetName               fun(self: TotPuppet, displayName: string)
---@field GetSysName            fun(self: TotPuppet): string
---@field SetSysName            fun(self: TotPuppet, internalName: string)
---@field IsInvisible           fun(self: TotPuppet): boolean
---@field SetInvisible          fun(self: TotPuppet, invisible: boolean)
---@field IsNameplateHidden     fun(self: TotPuppet): boolean
---@field SetNameplateHidden    fun(self: TotPuppet, hidden: boolean)
---@field Delete                fun(self: TotPuppet)
---@field SendLocal             fun(self: TotPuppet, message: string, distance?: number)
---@field GetSheet              fun(self: TotPuppet): string
---@field SetSheet              fun(self: TotPuppet, data: string)
---@field GetTags               fun(self: TotPuppet): TotPuppetTag[]
---@field SetTags               fun(self: TotPuppet, tags: TotPuppetTag[])

---Construct a TotPuppet at a location.
---@param location Vector
---@param rotation? Rotator
---@return TotPuppet
function TotPuppet(location, rotation) end

-- ============================================================
--  TotAdmin
-- ============================================================

---@class TotAdmin
TotAdmin = {}

---Runs a Tot script command. Equivalent to the totscript RCON command.
---@param arguments string[]
---@return boolean
function TotAdmin.RunScript(arguments) end

---Teleports a player to a position using Tot's internal mechanism.
---
---Saves a return position. Teleports under 200m have no loading screen.
---@param player Character
---@param position Vector
---@param rotation? number
---@return boolean
function TotAdmin.Teleport(player, position, rotation) end

---Teleports a player to a named warp point.
---@param player Character
---@param warp string
---@return boolean
function TotAdmin.Warp(player, warp) end

---Gives a player a kit by name.
---@param player Character
---@param kit string
---@return boolean
function TotAdmin.GiveKit(player, kit) end

---Returns a TotZone by UID (int) or name (string).
---@param nameOrUID integer|string
---@return TotZone|nil
function TotAdmin.GetZone(nameOrUID) end

---Returns a TotPuppet by UID (int) or internal name (string).
---@param internalNameOrUID integer|string
---@return TotPuppet|nil
function TotAdmin.GetPuppet(internalNameOrUID) end

---Returns all TotPuppets within a radius of a location.
---@param location Vector
---@param radius number
---@return TotPuppet[]
function TotAdmin.GetPuppetsInRadius(location, radius) end

---Returns all map markers as a table of TotMapMarker objects.
---@return TotMapMarker[]
function TotAdmin.GetMapMarkers() end

---Creates or updates a map marker.
---@param data TotMapMarker
function TotAdmin.SetMapMarker(data) end

---Deletes a map marker by its GUID.
---@param markerId GUID
---@return boolean
function TotAdmin.DeleteMapMarker(markerId) end

---Sends a player to their home. Optionally specify a named home.
---@param player Character
---@param name? string
---@return boolean
function TotAdmin.SendHome(player, name) end

---Sets a named home for a player at a position.
---@param player Character
---@param name string
---@param position Vector
---@param rotation? number
---@return boolean
function TotAdmin.SetHome(player, name, position, rotation) end

---Clears all homes for a player.
---@param player Character
---@return boolean
function TotAdmin.ClearHome(player) end

---Returns a table of all homes for a player.
---@param player Character
---@return table
function TotAdmin.ListHomes(player) end