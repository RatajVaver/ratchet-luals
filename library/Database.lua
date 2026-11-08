---@meta

---@alias DatabaseType
---| '"sqlite3"'
---| '"sqlite"'
---| '"mysql"'
---| '"postgres"'
---| '"postgresql"'

---@class DatabaseConnection
local DatabaseConnection = {}

---Standard SQL query. Only use this if you're not passing any user supplied arguments into the query string.
---@param query string
---@param callback fun(success: boolean, error: string, rows: table|nil)|nil
function DatabaseConnection:query(query, callback) end

---SQL query is executed and no result is expected; returns number of affected rows. Useful for INSERT, DELETE and UPDATE.
---@param query string
---@param callback fun(success: boolean, error: string, affected: integer|nil)|nil
function DatabaseConnection:exec(query, callback) end

---Prepared statement query. Replaces each `?` with corresponding values from the data table to prevent SQL injection.
---@param query string
---@param data table
---@param callback fun(success: boolean, error: string, rows: table|integer|nil)|nil
function DatabaseConnection:prepare(query, data, callback) end

---Safely close a database connection when it's no longer needed.
function DatabaseConnection:close() end

---Check whether the database connection is still active.
---@return boolean
function DatabaseConnection:isConnected() end

---Creates a database connection object, or returns nil on failure.
---
---Supported types: sqlite3, sqlite, mysql, postgres, postgresql.
---
---Connection string can be a file path for SQLite, or a space-separated list of parameters for others.
---@param databaseType DatabaseType
---@param connectionString string
---@param timeout integer|nil
---@return DatabaseConnection|nil
function dbConnect(databaseType, connectionString, timeout) end