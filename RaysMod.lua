local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Zacks Cool Hub | Rays Mod", HidePremium = true, SaveConfig = false, IntroText = "Rays mod is mid..", ConfigFolder = "ZCH"})
local Main = Window:MakeTab({
	Name = "Rays Mod",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Main:AddToggle({
Name = "Sprint",
Default = false,
Callback = function(sprint)
if sprint then
_G.sprintt = true
if _G.sprintt == true then
wait()
game:GetService("ReplicatedStorage").SprintOn:FireServer()
end
else
game:GetService("ReplicatedStorage").SprintOff:FireServer()
end
end})

Main:AddToggle({
Name = "Semi-Godmode (takes a bit because it auto gives health)",
Default = false,
Callback = function(health)
if health then
_G.healthh = true
while _G.healthh == true do
wait()
game:GetService("ReplicatedStorage").MoreHealth:FireServer()
wait()
game:GetService("ReplicatedStorage").MoreHealth:FireServer()
wait()
game:GetService("ReplicatedStorage").MoreHealth:FireServer()
wait()
game:GetService("ReplicatedStorage").MoreHealth:FireServer()
wait()
game:GetService("ReplicatedStorage").MoreHealth:FireServer()
wait()
game:GetService("ReplicatedStorage").MoreHealth:FireServer()
wait()
game:GetService("ReplicatedStorage").MoreHealth:FireServer()
end
else
_G.healthh = false
end
end})

Main:AddToggle({
Name = "Crash Server (can be laggy run away)",
Default = false,
Callback = function(Crash)
if Crash then
_G.crash = true
while _G.crash == true do
wait()
local args = {
    [1] = "Combine Harvester"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "Penny (PVZ)"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "Road Roller"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "Ice Cream Truck"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "CoolingTank"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "Washingmachine"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "Train2"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "Train"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "APC"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "Container"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "FlatCar"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "CurvedTT"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "TrainTracks"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "Container"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "Crate"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "Cottage"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
wait()
local args = {
    [1] = "Cottage"
}

game:GetService("ReplicatedStorage").SpawnObject:FireServer(unpack(args))
end
else
_G.crash = false
end
end})
