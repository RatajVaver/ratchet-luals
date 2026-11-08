---@meta

---@class Storage
Storage = {}

---Set a value in storage under a namespace and ID.
---@param namespace string
---@param ID integer
---@param key string
---@param value string|number|boolean|table
function Storage.Set(namespace, ID, key, value) end

---Get a value from storage under a namespace and ID.
---@param namespace string
---@param ID integer
---@param key string
---@return string|number|boolean|table
function Storage.Get(namespace, ID, key) end

---Get all data stored under a namespace and ID.
---@param namespace string
---@param ID integer
---@return table
function Storage.GetAll(namespace, ID) end

---Returns true if a value exists under the given namespace, ID, and key.
---@param namespace string
---@param ID integer
---@param key string
---@return boolean
function Storage.Has(namespace, ID, key) end

---Delete a value from storage under a namespace and ID.
---@param namespace string
---@param ID integer
---@param key string
function Storage.Delete(namespace, ID, key) end

---Delete all data stored under a namespace and ID.
---@param namespace string
---@param ID integer
function Storage.DeleteAll(namespace, ID) end