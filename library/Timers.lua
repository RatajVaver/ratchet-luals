---@meta

---Triggers a callback once an amount of milliseconds pass.
---
---Can be repeated any amount of times. Use zero for infinite repeat.
---@param callback function
---@param milliseconds integer
---@param times integer
---@return integer
function setTimer(callback, milliseconds, times) end

---Checks whether the handle for a timer is still valid (timer is running).
---@param handle integer
---@return boolean
function isTimer(handle) end

---Stops a timer using the handle returned from setTimer.
---@param handle integer
function killTimer(handle) end