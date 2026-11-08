---@meta

---Triggers a callback once an amount of milliseconds pass.
---
---
---@class Task
Task = {}

---Spawns a function running as a task.
---@param func function
---@param ... any
---@return integer
function Task.Spawn(func, ...) end

---Spawns a function running as a task. Tasks with same name get cancelled if they're in the same plugim. 
---@param name string
---@param func function
---@param ... any
---@return integer
function Task.SpawnNamed(name, func, ...) end

---Suspends a Task for some milliseconds, must be called in a task
---@param milliseconds integer
function Task.Wait(milliseconds) end

---Cancels a task by name or ID.
---@param nameOrID string|integer
function Task.Cancel(nameOrID) end

---Waits for a task to complete by name or ID. Must be called in a task.
---@param nameOrID string|integer
function Task.Await(nameOrID) end

---Waits for a task to complete by name or ID with a timeout (in ms) Must be called in a task. 
---@param timeout integer
---@param nameOrID string|integer
function Task.AwaitTimeout(timeout, nameOrID) end

---Spawns a task with a delay, like timers.
---@param timeout integer
---@param func function
---@return integer
function Task.Delay(timeout, func) end
