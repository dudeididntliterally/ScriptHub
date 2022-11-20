local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Zacks Cool Hub | Universal Mode", HidePremium = true, IntroText = "Universal", SaveConfig = false, ConfigFolder = "ZCH UNIVERSAL"})
local Univ = Window:MakeTab({
	Name = "Universal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local UniverSection = Univ:AddSection({
	Name = "Universal"
})

OrionLib:MakeNotification({
	Name = "Note:",
	Content = "If the fly breaks toggle it and retoggle it",
	Image = "rbxassetid://4483345998",
	Time = 10
})

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

floatName = randomString()
local Noclipping = nil

Univ:AddToggle({
Name = "Noclip",
Default = false,
Callback = function(nocl)
if nocl then
	Clip = false
	wait(0.1)
	local function NoclipLoop()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") and v.CanCollide == true and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
	end
Noclipping = game:GetService("RunService").Stepped:Connect(NoclipLoop)
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Zacks Cool Hub Alert:",
    Text = "Noclip enabled",
    Duration = 3
})
else
	if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Zacks Cool Hub Alert:",
    Text = "Noclip disabled",
    Duration = 3
})
end
end})

Univ:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 250,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--WalkSpeed Here--",
	Callback = function(ws)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end})

Univ:AddSlider({
	Name = "JumpPower",
	Min = 50,
	Max = 350,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--JumpPower Here--",
	Callback = function(jp)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
end})

Univ:AddSlider({
	Name = "Gravity",
	Min = 1,
	Max = 200,
	Default = 194,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--Gravity Here--",
	Callback = function(gr)
	game.Workspace.Gravity = gr
end})

Univ:AddToggle({
Name = "Toggle Fly",
Default = false,
Callback = function(fly)
if fly then
_G.flyy = true
if _G.flyy == true then
loadstring(game:HttpGet("https://pastebin.com/raw/JLfCxegQ"))()
end
else
_G.flyy = false
game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.E,false,game)
end
end})

Univ:AddButton({
Name = "Rejoin",
Callback = function()
    local TeleportService = game:GetService("TeleportService")
	TeleportService:Teleport(game.PlaceId, game.Players.LocalPlayer)
	wait()
	TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end})

Univ:AddButton({
Name = "Destroy GUI (if anything breaks i guess)",
Callback = function()
game:GetService("CoreGui").Orion:Destroy()
end})
