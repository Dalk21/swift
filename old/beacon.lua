--[[ Items needed for this script:
https://www.roblox.com/catalog/7192664790/Casual-Sweats-Gray
https://www.roblox.com/bundles/872/Roblox-Sneakers-Gray
(optional) https://www.roblox.com/catalog/6984765766/Zip-Hoodie-Orange
DO NOT WEAR TOOLS or else you die]]--
-- THIS SCRIPT WAS MADE BY padero#3857. THANKS PADERO!!!!
-- github.com/shidemuri
local thing = game.Players.LocalPlayer.Character
local originalpos = thing.HumanoidRootPart.CFrame
thing.HumanoidRootPart.CFrame = CFrame.new(0,100000000000,0)
thing.RightUpperLeg:Destroy()
wait(0.5)
thing.LeftUpperLeg:Destroy()
wait(0.5)
thing.LeftUpperArm:Destroy()
wait(0.5)
thing.UpperTorso.Waist:Destroy()
wait()
thing.HumanoidRootPart.CFrame = originalpos
--by padero#0001
