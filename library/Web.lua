---@meta
---Web: HTTP GET and POST functionality for Ratchet.

---@class Web
Web = {}

---Callback used by Web requests.
---@alias WebCallback fun(success: boolean, status: integer, response: string)

---Send an HTTP GET request.
---@param url string The URL to send the GET request to.
---@param callback WebCallback? Optional callback invoked when the request completes.
function Web.Get(url, callback) end

---Send an HTTP POST request.
---@param url string The URL to send the POST request to.
---@param data string|table Data to send (URL encoded form data or a Lua table).
---@param callback WebCallback? Optional callback invoked when the request completes.
function Web.Post(url, data, callback) end

---@class WebRequestOptions
---@field url string The URL to send the request to.
---@field method? string HTTP method: GET, POST, PUT, PATCH, or DELETE.
---@field body? string|table Request body as a string or table.
---@field headers? table<string, string> HTTP headers to include.
---@field timeout? integer Total request timeout in seconds.
---@field connectTimeout? integer Connection timeout in seconds.

---Send a custom HTTP request with full control over all options.
---@param options WebRequestOptions
---@param callback? WebCallback Optional callback invoked when the request completes.
function Web.Request(options, callback) end