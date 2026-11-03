-- Kick Player GUI Script

local Players = game:GetService("Players")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KickPlayerGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frame.Parent = screenGui

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0, 200, 0, 50)
textBox.Position = UDim2.new(0.5, -100, 0.3, -25)
textBox.AnchorPoint = Vector2.new(0.5, 0.5)
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
textBox.PlaceholderText = "Enter player name"
textBox.Parent = frame

local kickButton = Instance.new("TextButton")
kickButton.Size = UDim2.new(0, 100, 0, 50)
kickButton.Position = UDim2.new(0.5, -50, 0.7, -25)
kickButton.AnchorPoint = Vector2.new(0.5, 0.5)
kickButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
kickButton.TextColor3 = Color3.fromRGB(255, 255, 255)
kickButton.Text = "Kick Player"
kickButton.Parent = frame

kickButton.MouseButton1Click:Connect(function()
    local playerName = textBox.Text
    local player = Players:FindFirstChild(playerName)
    if player then
        game:GetService("ReplicatedStorage"):WaitForChild("KickPlayerEvent"):FireServer(playerName)
    else
        warn("Player not found: " .. playerName)
    end
end)