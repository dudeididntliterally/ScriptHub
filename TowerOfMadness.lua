local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Zacks Cool Hub | Tower Of Madness", HidePremium = true, IntroText = "Zacks Hub On Top!", SaveConfig = false, ConfigFolder = "ZCH"})
local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local MainSection = Main:AddSection({
	Name = "Main"
})
local Player = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local PlayerSection = Player:AddSection({
	Name = "Player"
})
wait()
OrionLib:MakeNotification({
	Name = "NOTE:",
	Content = "This script for THIS game is still being worked on give me time pls :D",
	Image = "rbxassetid://4483345998",
	Time = 13
})
wait()
local cmdp = game:GetService("Players")
local cmdlp = game.Players.LocalPlayer

function findplr(args, tbl)
	if tbl == nil then
		local tbl = cmdp:GetPlayers()
		if args == "me" then
			return cmdlp
		elseif args == "random" then 
			return tbl[math.random(1,#tbl)]
		elseif args == "new" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.AccountAge < 30 and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "old" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.AccountAge > 30 and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "bacon" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Character:FindFirstChild("Pal Hair") or v.Character:FindFirstChild("Kate Hair") and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "friend" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "notfriend" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if not v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "ally" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Team == cmdlp.Team and v ~= cmdlp then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "enemy" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v.Team ~= cmdlp.Team then
					vAges[#vAges+1] = v
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "near" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v ~= cmdlp then
					local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
					if math < 30 then
						vAges[#vAges+1] = v
					end
				end
			end
			return vAges[math.random(1,#vAges)]
		elseif args == "far" then
			local vAges = {} 
			for _,v in pairs(tbl) do
				if v ~= cmdlp then
					local math = (v.Character:FindFirstChild("HumanoidRootPart").Position - cmdlp.Character.HumanoidRootPart.Position).magnitude
					if math > 30 then
						vAges[#vAges+1] = v
					end
				end
			end
			return vAges[math.random(1,#vAges)]
		else 
			for _,v in pairs(tbl) do
				if v.Name:lower():find(args:lower()) or v.DisplayName:lower():find(args:lower()) then
					return v
				end
			end
		end
	else
		for _, plr in pairs(tbl) do
			if plr.UserName:lower():find(args:lower()) or plr.DisplayName:lower():find(args:lower()) then
				return plr
			end
		end
	end
end
wait()

Main:AddToggle({
Name = "Annoy All (trading)",
Default = false,
Callback = function(annoy)
if annoy then
_G.ann = true
while _G.ann == true do
wait()
for i,v in pairs(game.Players:GetPlayers()) do
local args = {
    [1] = v.UserId
}

game:GetService("ReplicatedStorage").Remotes.SendTradeRequest:FireServer(unpack(args))
wait()
game:GetService("ReplicatedStorage").Remotes.AcceptTradeRequest:FireServer(v.UserId)
end
end
else
_G.ann = false
end
end})

Main:AddButton({
Name = "Get Sword (might not work, but still FE)",
Callback = function()
local args = {
    [1] = "DefaultSword"
}

game:GetService("ReplicatedStorage").Remotes.EquipSword:FireServer(unpack(args))
end})

Main:AddButton({
Name = "Go To Top",
Callback = function()
    game:GetService("RunService").Stepped:Connect(function()
		if not game.Players.LocalPlayer.Character then return end
		for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
    end)
wait(0.3)
    local win = game:GetService("Workspace").Tower.Winners.WinnersRoomEntrance
    local player = game.Players.LocalPlayer.Character
    player.HumanoidRootPart.CFrame = win.CFrame
wait(0.2)
for _,v in pairs(game:GetService("Workspace").Tower.Winners.WinnersCheckpoint:GetDescendants()) do
if string.find(v.Name, "TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
wait(0.3)
    game:GetService("RunService").Stepped:Connect(function()
		if not game.Players.LocalPlayer.Character then return end
		for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = true
			end
		end
    end)
end})

Main:AddButton({
Name = "Godmode",
Callback = function()
game.Workspace.ImmunityEnabled.Value = true
end})

Main:AddButton({
Name = "TP To Winners Room",
Callback = function()
    local win = game:GetService("Workspace").Tower.Winners.WinnersRoomEntrance
    local player = game.Players.LocalPlayer.Character
    player.HumanoidRootPart.CFrame = win.CFrame
    wait(0.4)
    fireproximityprompt(game:GetService("Workspace").Tower.Winners.WinnersRoomEntrance.Attachment.ProximityPrompt)
end})

Main:AddButton({
Name = "Exit Winners Room",
Callback = function()
    local win = game:GetService("Workspace").WinnersRoom.WinnersRoomExit
    local player = game.Players.LocalPlayer.Character
    player.HumanoidRootPart.CFrame = win.CFrame
    wait(0.4)
    fireproximityprompt(game:GetService("Workspace").WinnersRoom.WinnersRoomExit.Attachment.ProximityPrompt)
end})

Player:AddButton({
Name = "Fly (E = toggle)",
Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/JLfCxegQ"))()
end})

Player:AddSlider({
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

Player:AddSlider({
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

Player:AddSlider({
	Name = "Gravity (194 = Default)",
	Min = 3,
	Max = 200,
	Default = 194,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--Gravity Here--",
	Callback = function(gr)
	game.Workspace.Gravity = gr
end})
