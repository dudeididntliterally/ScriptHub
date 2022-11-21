--Games List:

--Tower Of Misery (Normal Mode)
--Tower Of Misery (Difficult Mode)
--Tower Of Hell
--50/50 Pick A Door
--Tower Of Madness
--Rays Mod
--Hide And Seek Extreme
--UPCOMING SCRIPTS: Every second you get +1 health, probably some simulator games or something to mess around on.

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local req = http_request or request or syn.request

if not req then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Zacks Cool Hub Error",
        Text = "Your exploit is unsupported with Zacks Cool Hub!",
        Duration = 7
    })
    return
end

local response = req({
    Url = "https://raw.githubusercontent.com/dudeididntliterally/ScriptHub/main/Games/" .. game.PlaceId .. ".lua",
    Method = "GET"
})

if response.Body ~= "404: Not Found" then
    loadstring(response.Body)()
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Zacks Cool Hub Error",
        Text = "The game you are trying to play is not supported with Zacks Cool Hub! (MORE SOON)",
        Duration = 5
    })
    return
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dudeididntliterally/ScriptHub/main/Universal.lua"))()
end
