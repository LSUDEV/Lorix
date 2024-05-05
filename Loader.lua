-- <- Services ->
local HttpService = game:GetService("HttpService")
-- <- Variables ->
local Commits = HttpService:JSONDecode(game:HttpGet("https://api.github.com/repos/LSUDEV/Lorix/commits"))
-- <- Main ->
print('wokring')
if Commits and typeof(Commits) == "table" and Commits[1] and Commits[1].sha then
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/LSUDEV/Lorix/" .. Commits[1].sha .. "/Library.lua"))()
end