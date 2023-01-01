local postHook = getgenv().Webhook
local Chat = Instance.new("ScreenGui")
local UI = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local X = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local Msg = Instance.new("TextBox")
local Send = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

Chat.Name = "Chat"
Chat.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Chat.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

UI.Name = "UI"
UI.Parent = Chat
UI.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
UI.Position = UDim2.new(0.324309677, 0, 0.456970751, 0)
UI.Size = UDim2.new(0, 589, 0, 162)

Title.Name = "Title"
Title.Parent = UI
Title.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
Title.Size = UDim2.new(0, 589, 0, 35)
Title.Font = Enum.Font.SourceSans
Title.Text = "Dalk's Chat GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

X.Name = "X"
X.Parent = Title
X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
X.BackgroundTransparency = 1.000
X.Position = UDim2.new(0.93887943, 0, 0, 0)
X.Size = UDim2.new(0, 36, 0, 35)
X.Font = Enum.Font.SourceSans
X.Text = "X"
X.TextColor3 = Color3.fromRGB(255, 0, 0)
X.TextScaled = true
X.TextSize = 14.000
X.TextWrapped = true

UICorner.Parent = Title

UICorner_2.Parent = UI

Msg.Name = "Msg"
Msg.Parent = UI
Msg.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
Msg.BorderSizePixel = 0
Msg.Position = UDim2.new(0, 0, 0.395061731, 0)
Msg.Size = UDim2.new(0, 589, 0, 34)
Msg.ClearTextOnFocus = false
Msg.Font = Enum.Font.SourceSans
Msg.PlaceholderText = "Put message here"
Msg.Text = ""
Msg.TextColor3 = Color3.fromRGB(255, 255, 255)
Msg.TextScaled = true
Msg.TextSize = 14.000
Msg.TextWrapped = true

Send.Name = "Send"
Send.Parent = UI
Send.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
Send.Position = UDim2.new(0.332767397, 0, 0.716049373, 0)
Send.Size = UDim2.new(0, 197, 0, 35)
Send.Font = Enum.Font.SourceSans
Send.Text = "send message"
Send.TextColor3 = Color3.fromRGB(255, 255, 255)
Send.TextScaled = true
Send.TextSize = 14.000
Send.TextWrapped = true

UICorner_3.Parent = Send

-- Scripts:

local function QHJIU_fake_script() -- UI.Dragify 
	local script = Instance.new('LocalScript', UI)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		dragSpeed = 0.15
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	dragify(script.Parent)
	
end
coroutine.wrap(QHJIU_fake_script)()
local function EOPMHUF_fake_script() -- UI.Script 
	local script = Instance.new('LocalScript', UI)

	script.Parent.Send.MouseButton1Down:Connect(function() 
		local msgsend = script.Parent.Msg
		local Embed = {
			["title"] = "Incoming message",
			["description"] = game.Players.LocalPlayer.DisplayName .. ": " .. msgsend.Text,
			["footer"] = {
				["text"] = "Made by github/Dalk21 -- v1 01/01/2023"
			},
			["color"] = 18431,
		}
	
		(syn and syn.request or http_request) {
			Url = postHook;
			Method = 'POST';
			Headers = {
				['Content-Type'] = 'application/json';
			};
			Body = game:GetService'HttpService':JSONEncode( { embeds = { Embed } } );
		};
	end)
	
	script.Parent.Title.X.MouseButton1Down:Connect(function()
		script.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(EOPMHUF_fake_script)()
