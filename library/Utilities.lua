---@meta

---@class RealTime
---@field timestamp number Unix epoch in seconds
---@field hour number Hour in 24-hour format (0-23)
---@field minute number Minute (0-59)
---@field second number Second (0-60, 60 for leap seconds)
---@field year number Full year (e.g. 2025)
---@field month number Month (1-12)
---@field day number Day of month (1-31)
---@field weekday number Day of week (0-6, 0=Sunday)
---@field weekdayiso number ISO weekday (1-7, 1=Monday, 7=Sunday)
---@field yearday number Day of year (1-366)
---@field isdst boolean Daylight saving time
---@field date string ISO 8601 date (YYYY-MM-DD)
---@field time string ISO 8601 time (HH:MM:SS)
---@field datetime string ISO 8601 datetime (YYYY-MM-DDTHH:MM:SS)
---@field hour12 number Hour in 12-hour format (1-12)
---@field ampm string "AM" or "PM"

---@alias TraceChannel
---| 0 # Visibility
---| 1 # Camera
---| 2 # Trace_BuildingStructure
---| 3 # Trace_ProjectilePrecision
---| 4 # Trace_BuildingGhost
---| 5 # SandStormMonsterSpawn
---| 6 # Trace_Interactable
---| 7 # DamagePrevention_BlockNothing

---@alias TraceObjectType
---| '"WorldStatic"'
---| '"WorldDynamic"'
---| '"Pawn"'
---| '"PhysicsBody"'
---| '"Vehicle"'
---| '"Destructible"'
---| '"Attack"'
---| '"Defense"'
---| '"Hitbox"'
---| '"Building_Structure"'
---| '"Projectile"'
---| '"WaterPhysics"'
---| '"Resource"'
---| '"Sandstorm"'
---| '"CollisionTrigger"'
---| '"Hazard"'
---| '"AudioTrigger"'
---| '"LootBag"'

---Returns the current version of Ratchet.
---@return string
function getVersion() end

---Reads a secret from ratchet/secrets.txt. Returns empty string if key is not found.
---@param key string
---@return string
function getSecret(key) end

---Checks whether the server is fully loaded (mods and plugins loaded, players can connect).
---@return boolean
function isServerLoaded() end

---Returns the name of an object type for a specific object.
---@param object any
---@return string
function getType(object) end

---Encodes a string to Base64.
---@param input string
---@return string
function base64Encode(input) end

---Decodes a Base64 string.
---@param input string
---@return string
function base64Decode(input) end

---Converts a number of seconds into a human-friendly readable format (e.g. "1 hour").
---@param seconds integer
---@return string
function friendlyTime(seconds) end

---Retrieves a table of various useful values regarding current real time.
---@param localTimezone boolean|nil
---@return RealTime
function getRealTime(localTimezone) end

---Trace a line between two points, detecting blocking objects.
---@param origin Vector
---@param destination Vector
---@param filter TraceChannel|TraceObjectType[]|nil
---@param complex boolean|nil
---@param ignoreList Actor[]|nil
---@return boolean, HitResult
function traceLine(origin, destination, filter, complex, ignoreList) end

---Like print, but prepends plugin name and highlights gray in console.
---
---Also saved to ratchet.log.
---@param ... string
function printDebug(...) end

---Like print, but prepends plugin name and highlights blue in console.
---
---Also saved to ratchet.log.
---@param ... string
function printInfo(...) end

---Like print, but prepends plugin name and highlights green in console.
---
---Also saved to ratchet.log.
---@param ... string
function printSuccess(...) end

---Like print, but prepends plugin name and highlights gold in console.
---
---Also saved to ratchet.log.
---@param ... string
function printWarning(...) end

---Like print, but prepends plugin name and highlights red in console.
---
---Also saved to ratchet.log.
---@param ... string
function printError(...) end

---Writes a list of all persistent actors and their components to ratchet/dump.txt.
function dumpAllObjects() end

---Defers execution of a function to one of the next ticks (~50ms delay).
---
---Deferred functions execute in order.
---@param func function
---@param ... any
function defer(func, ...) end

---Executes multiple game thread operations in bulk without blocking the Lua thread with round-trips.
---
---Only use for writing/executing — never read data or expect a return value from within the batch.
---@param func function
function batch(func) end