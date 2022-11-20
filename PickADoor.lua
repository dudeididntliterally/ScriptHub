local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Zacks Cool Hub | 50/50 Pick A Door!", HidePremium = true, IntroText = "Really cool hub?", SaveConfig = false, ConfigFolder = "ZCH"})
local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local MainSection = Main:AddSection({
	Name = "Main"
})

Main:AddButton({
Name = "Get End Rewards/Auto Touch Egg",
Callback = function()
for _,v in pairs(game:GetService("Workspace").WinnersEgg.Handle:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
end})
