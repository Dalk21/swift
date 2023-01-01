-- made by github/Dalk21

local ScreenGui = Instance.new("ScreenGui")
local Interface = Instance.new("Frame")
local Load = Instance.new("TextButton")
local Corner = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Interface.Name = "Interface"
Interface.Parent = ScreenGui
Interface.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Interface.Position = UDim2.new(0.15854311, 0, 0.711965799, 0)
Interface.Size = UDim2.new(0, 122, 0, 127)

Load.Name = "Load"
Load.Parent = Interface
Load.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load.BackgroundTransparency = 1.000
Load.Position = UDim2.new(-0.00680235773, 0, 0.238912448, 0)
Load.Size = UDim2.new(0, 122, 0, 96)
Load.Font = Enum.Font.SourceSans
Load.Text = "Load BTools"
Load.TextColor3 = Color3.fromRGB(0, 0, 0)
Load.TextScaled = true
Load.TextSize = 14.000
Load.TextWrapped = true

Corner.Name = "Corner"
Corner.Parent = Interface

Load.MouseButton1Down:connect(function()
	local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool4 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool5 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	tool1.BinType = "Clone"
	tool2.BinType = "GameTool"
	tool3.BinType = "Hammer"
	tool4.BinType = "Script"
	tool5.BinType = "Grab"
end)
