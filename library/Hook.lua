---@meta

---@class Hook
Hook = {}

---Registers an answer callback under a name. When Run or Fold is called, answer callbacks run in priority order (highest first; equal priority runs in registration order) until one returns a non-nil value.
---@param name string
---@param callback function
---@param priority? integer
---@return any
function Hook.Add(name, callback, priority) end

---Registers a watcher callback under a name. Watchers always run to completion on every Run/Fold call, regardless of whether an answer callback already returned a value elsewhere. Their return value is ignored.
---@param name string
---@param callback function
---@param priority? integer
function Hook.Watch(name, callback, priority) end

---Unregisters a callback by name. Callback function has to be a variable reference that was used when registering. No anonymous functions.
---@param name string
---@param callback function
function Hook.Remove(name, callback) end

---Runs a hook.
---@param name string
---@param ... any
function Hook.Run(name, ...) end

---Adds all values of a hook together using a folding function.
---@param name string
---@param initial any
---@param func function
---@param ... any
function Hook.Fold(name, initial, func, ...) end