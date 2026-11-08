---@meta

---@class Actor
---@field IsValid                  fun(self: Actor): boolean
---@field GetActorName             fun(self: Actor): string
---@field GetClassName             fun(self: Actor): string
---@field GetPathName              fun(self: Actor): string
---@field GetLocation              fun(self: Actor): Vector
---@field GetRotation              fun(self: Actor): Rotator
---@field SetLocation              fun(self: Actor, location: Vector, sweep: boolean, teleport: boolean): boolean
---@field SetRotation              fun(self: Actor, rotation: Rotator): boolean
---@field GetFeetLocation          fun(self: Actor): Vector
---@field SetLocationAndRotation   fun(self: Actor, location: Vector, rotation: Rotator, sweep: boolean, teleport: boolean): boolean
---@field Teleport                 fun(self: Actor, location: Vector, rotation?: Rotator): boolean
---@field GetDistanceTo            fun(self: Actor, other: Actor): number
---@field GetHorizontalDistanceTo  fun(self: Actor, other: Actor): number
---@field GetVerticalDistanceTo    fun(self: Actor, other: Actor): number
---@field GetVelocity              fun(self: Actor): Vector
---@field GetForwardVector         fun(self: Actor): Vector
---@field GetUpVector              fun(self: Actor): Vector
---@field HasTag                   fun(self: Actor, tag: string): boolean
---@field IsOverlappingActor       fun(self: Actor, other: Actor): boolean
---@field GetEyesViewPoint         fun(self: Actor): Vector, Rotator
---@field Destroy                  fun(self: Actor)
---@field CallFunction             fun(self: Actor, name: string)

---Spawn an actor of a given type or path at a location.
---@param actorTypeOrPath string
---@param location Vector
---@param rotation? Rotator
---@return Actor|nil
function spawnActor(actorTypeOrPath, location, rotation) end

---Find an actor by its name in the game world. Always returns the base Actor type.
---
---Heavy operation — do not call frequently.
---@param name string
---@return Actor|nil
function findActor(name) end

---Returns all actors within a radius of a location.
---@param location Vector
---@param radius number
---@return Actor[]
function getActorsInRadius(location, radius) end

---Returns all actors matching a class path.
---@param path string
---@return Actor[]
function getActorsByClass(path) end