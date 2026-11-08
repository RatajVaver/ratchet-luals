---@meta

---Splits a string by a delimiter. Also available as string:explode(delimiter).
---@param input string
---@param delimiter string
---@return string[]
function string.explode(input, delimiter) end

---Alias for string.explode.
---@param input string
---@param delimiter string
---@return string[]
function string.split(input, delimiter) end

---Returns true if the string starts with the given prefix.
---@param input string
---@param prefix string
---@return boolean
function string.startsWith(input, prefix) end

---Returns true if the string ends with the given suffix.
---@param input string
---@param suffix string
---@return boolean
function string.endsWith(input, suffix) end

---Removes whitespace from the left side of a string.
---@param input string
---@return string
function string.trimLeft(input) end

---Removes whitespace from the right side of a string.
---@param input string
---@return string
function string.trimRight(input) end

---Removes whitespace from both sides of a string.
---@param input string
---@return string
function string.trim(input) end

---Joins a table of strings with a delimiter. Opposite of explode/split.
---@param parts string[]
---@param delimiter string
---@return string
function string.join(parts, delimiter) end

---Pads the left side of a string with a character up to the given length.
---@param input string
---@param length integer
---@param pad string
---@return string
function string.padLeft(input, length, pad) end

---Pads the right side of a string with a character up to the given length.
---@param input string
---@param length integer
---@param pad string
---@return string
function string.padRight(input, length, pad) end

---Returns true if the string is empty or contains only whitespace.
---@param input string
---@return boolean
function string.isEmpty(input) end

---Returns true if the string contains only English alphabet letters.
---@param input string
---@return boolean
function string.isAlpha(input) end

---Returns true if the string contains only numeric characters.
---@param input string
---@return boolean
function string.isNumeric(input) end

---Returns true if the string contains only letters and numbers.
---@param input string
---@return boolean
function string.isAlphaNumeric(input) end

---Counts the occurrences of a substring within a string.
---@param input string
---@param substring string
---@return integer
function string.count(input, substring) end

---Capitalizes the first letter of every word, lowercasing everything else.
---@param input string
---@return string
function string.capitalize(input) end

---Calculates the Levenshtein distance between two strings.
---@param first string
---@param second string
---@return integer
function string.levenshtein(first, second) end

---Removes a prefix from the start of the string if it starts with it.
---@param input string
---@param prefix string
---@return string
function string.removePrefix(input, prefix) end

---Removes a suffix from the end of the string if it ends with it.
---@param input string
---@param suffix string
---@return string
function string.removeSuffix(input, suffix) end

---Converts a string into a URL/filename-safe slug. e.g. "Hello world!" -> "hello-world"
---@param input string
---@return string
function string.slugify(input) end

---Generates a random string of the given length.
---NOT cryptographically secure — do not use for sensitive purposes.
---@param length integer
---@param charset? string Default: all alphanumeric characters
---@return string
function string.random(length, charset) end