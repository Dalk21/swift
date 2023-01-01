while true do
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
    game:GetService("RunService").RenderStepped:Wait()
end