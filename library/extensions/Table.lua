---@meta

---Creates a deep copy of a table, breaking the reference from the original.
---@param original table
---@return table|nil
function table.copy(original) end

---Merges any number of tables into one.
---@param ... table
---@return table
function table.merge(...) end

---Returns a new table with keys and values swapped.
---@param original table
---@return table|nil
function table.swap(original) end

---Returns a new table with elements in reverse order.
---@param original table
---@return table|nil
function table.reverse(original) end

---Returns a new table with elements in random order.
---@param original table
---@return table|nil
function table.shuffle(original) end

---Returns a table of all keys in the given table.
---@param list table
---@return table|nil
function table.keys(list) end

---Returns a table of all values in the given table.
---@param list table
---@return table|nil
function table.values(list) end

---Returns a new table with duplicate values removed, preserving first-occurrence order.
---@param list table
---@return table|nil
function table.unique(list) end

---Returns true if the table contains the given value.
---@param list table
---@param value any
---@return boolean
function table.contains(list, value) end

---Returns true if the table has no entries.
---@param list table
---@return boolean
function table.isEmpty(list) end

---Returns the number of keys in a table. Use for non-sequential tables; use # for sequential ones.
---@param list table
---@return integer
function table.count(list) end

---Returns a random value from the table.
---@param list table
---@return any
function table.random(list) end