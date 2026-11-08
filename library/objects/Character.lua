---@meta

---@class Character
---General
---@field IsValid           fun(self: Character): boolean
---@field GetName           fun(self: Character): string
---@field GetRealName       fun(self: Character): string
---@field SetName           fun(self: Character, name: string)
---@field GetIP             fun(self: Character): string
---@field GetSteamID        fun(self: Character): string
---@field GetGuildID        fun(self: Character): integer
---@field GetGuild          fun(self: Character): Guild
---@field GetPosition       fun(self: Character): Vector
---@field GetFeetPosition   fun(self: Character): Vector
---@field GetRotation       fun(self: Character): Rotator
---@field GetHeight         fun(self: Character): number
---@field GetHalfHeight     fun(self: Character): number
---@field GiveItem          fun(self: Character, itemId: integer, quantity?: integer): boolean
---@field Notify            fun(self: Character, icon: string, text: string, iconColor?: Color)
---@field ExecuteConsoleCommand fun(self: Character, command: string)
---@field CallComponentFunction fun(self: Character, componentName: string, functionName: string)
---Movement state
---@field IsStanding        fun(self: Character): boolean
---@field IsWalking         fun(self: Character): boolean
---@field IsRiding          fun(self: Character): boolean
---@field IsSwimming        fun(self: Character): boolean
---@field IsFalling         fun(self: Character): boolean
---@field IsFlying          fun(self: Character): boolean
---@field IsClimbing        fun(self: Character): boolean
---@field IsArmed           fun(self: Character): boolean
---@field Freeze            fun(self: Character, enable: boolean)
---@field StopMovement      fun(self: Character)
---@field PlayVoice         fun(self: Character, sound: string)
---@field PlayAnimation     fun(self: Character, path: string, startSection?: string, playRate?: number)
---@field StopAnimation     fun(self: Character, path?: string)
---Player data
---@field SetData           fun(self: Character, key: string, value: string|number|boolean|table)
---@field GetData           fun(self: Character, key: string): string|number|boolean|table
---@field GetAllData        fun(self: Character): table
---@field HasData           fun(self: Character, key: string): boolean
---@field DeleteData        fun(self: Character, key: string)
---@field DeleteAllData     fun(self: Character)

---Create a Character from a database ID.
---@param id integer
---@return Character|nil
function getPlayerFromID(id) end

---Find a player by their real character name (ignores /act names).
---@param name string
---@return Character|nil
function getPlayerFromName(name) end

---Returns all players within a radius (in tiles) of a position.
---@param position Vector
---@param radius number
---@return Character[]
function getPlayersInRadius(position, radius) end

---Returns a table of all players currently online.
---@return Character[]
function getAllPlayers() end

---Returns the number of players currently online.
---@return integer
function getPlayerCount() end