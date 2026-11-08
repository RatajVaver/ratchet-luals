---@meta

---@class TotChat
TotChat = {}

---Sends a server-wide alert message.
---@param message string
function TotChat.Alert(message) end

---Broadcasts a message to all players on the server.
---@param message string
function TotChat.Broadcast(message) end

---Broadcasts a chat message to all players with full channel control.
---@param emitterName string
---@param channelId integer
---@param tags string[]
---@param language string
---@param message string
function TotChat.BroadcastMessage(emitterName, channelId, tags, language, message) end

---Broadcasts a chat message to all players within a radius of a location.
---@param location Vector
---@param radius number
---@param emitterName string
---@param tags string[]
---@param language string
---@param message string
function TotChat.BroadcastMessageInRadius(location, radius, emitterName, tags, language, message) end

---Sends a local chat message from a player up to a given distance.
---@param player Character
---@param message string
---@param distance? number Default: 10
function TotChat.SendLocal(player, message, distance) end

---Sends a chat message as the specified player with full channel control.
---@param player Character
---@param emitterName string
---@param channelId integer
---@param tags string[]
---@param language string
---@param message string
---@param distance number
function TotChat.SendMessage(player, emitterName, channelId, tags, language, message, distance) end

---Sends a chat message visible only to the specified player with full channel control.
---@param player Character
---@param emitterName string
---@param channelId integer
---@param tags string[]
---@param language string
---@param message string
---@param distance number
function TotChat.ReceiveMessage(player, emitterName, channelId, tags, language, message, distance) end

---Sends a notification message to a player.
---@param player Character
---@param message string
function TotChat.Notify(player, message) end

---Sends a local notification message to a player.
---@param player Character
---@param message string
function TotChat.NotifyLocal(player, message) end

---Sends a warning message to a player.
---@param player Character
---@param message string
function TotChat.Warn(player, message) end

---Returns a table of known languages for a player (key = language name, value = knowledge value).
---@param player Character
---@return table<string, number>
function TotChat.GetLanguages(player) end

---Sets a player's knowledge level for a language.
---@param player Character
---@param language string
---@param knowledge number
function TotChat.SetLanguage(player, language, knowledge) end

---Removes a language from a player's known languages.
---@param player Character
---@param language string
function TotChat.RemoveLanguage(player, language) end