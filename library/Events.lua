---@meta

---@alias EventName
---| '"server_start"'
---| '"plugin_load"'
---| '"command_call"'
---| '"player_join"'
---| '"player_quit"'
---| '"RPR_useAbility"'
---| '"RPR_updateRunes"'
---| '"RPR_updateStatus"'
---| '"RPR_updateSheet"'
---| '"KS_midnight"'
---| '"KS_selectedPoint"'
---| '"KS_selectedMultiPoint"'
---| '"KS_selectedDirection"'
---| '"KS_selectedCharacters"'
---| '"DD_equipRestraint"'
---| '"DD_unequipRestraint"'
---| '"DD_updateGag"'

---@alias EventCallback
---| fun() # server_start, KS_midnight
---| fun(pluginName: string) # plugin_load
---| fun(player: Character, arguments: string[]) # command_call
---| fun(player: Character) # player_join
---| fun(id: integer) # player_quit
---| fun(player: Character, ability: integer, targets: Character[]) # RPR_useAbility
---| fun(character: Character, runes: integer[]) # RPR_updateRunes
---| fun(character: Character, status: string, color: Color) # RPR_updateStatus
---| fun(target: Character, editor: Character) # RPR_updateSheet
---| fun(character: Character, location: Vector, command: string) # KS_selectedPoint
---| fun(character: Character, first: Vector, second: Vector, command: string) # KS_selectedMultiPoint
---| fun(character: Character, rotation: Rotator, command: string) # KS_selectedDirection
---| fun(character: Character, selectedPlayers: Character[], selectedPuppets: TotPuppet[], command: string) # KS_selectedCharacters
---| fun(target: Character, itemIndex: integer) # DD_equipRestraint
---| fun(target: Character, equipmentSlot: integer) # DD_unequipRestraint
---| fun(target: Character, isGagged: boolean) # DD_updateGag

---Subscribes to an event.
---
---Callback function will be called every time event is triggered.
---
---Arguments will be passed into the function.
---@param event EventName | string
---@param callback EventCallback | function
function on(event, callback) end

---Unsubscribes from an event.
---
---Callback function has to be a variable reference that was used
---
---when subscribing, do not use anonymous functions.
---@param event EventName | string
---@param callback EventCallback | function
function off(event, callback) end

---Subscribes to an event but unsubscribes automatically once the
---
---event is triggered. This is useful to catch an event only once.
---@param event EventName | string
---@param callback EventCallback | function
function once(event, callback) end

---Triggers an event. Any number of arguments can be provided.
---
---These will be passed into the callback function. It might
---
---be good idea to use table for arguments if you want to be
---
---consistent with calls from Tot scripts and DevKit.
---@param event EventName | string
---@param ... any
function emit(event, ...) end

---Sends data to client listener.
---
---Arguments are serialized in a way that's compatible with
---
---Tot API unmarshal functions.
---@param player Character
---@param name string
---@param ... any
function sendToClient(player, name, ...) end

---Sends data to player listener.
---
---Arguments are serialized in a way that's compatible with
---
---Tot API unmarshal functions.
---@param player Character
---@param name string
---@param ... any
function sendToPlayer(player, name, ...) end

---Sends data to global listener.
---
---Arguments are serialized in a way that's compatible with
---
---Tot API unmarshal functions.
---@param name string
---@param ... any
function sendToGlobal(name, ...) end