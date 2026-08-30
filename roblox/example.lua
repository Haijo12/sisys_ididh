--[[
    Lucide Icons - Roblox Example
    
    This script demonstrates how to use the Lucide icon pack in Roblox.
    Copy and paste this into a Script or LocalScript in Studio.
]]

-- Load the Icons module
local Icons = loadstring(game:HttpGet("https://raw.githubusercontent.com/Haijo12/roblox-icons/main/roblox/icons.lua"))()

-----------------------------------------------------
-- Example 1: Create an icon in StarterGui
-----------------------------------------------------
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "IconDemo"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 400)
frame.Position = UDim2.new(0.5, -150, 0.5, -200)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundTransparency = 1
title.Text = "Lucide Icons Demo"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 20
title.Font = Enum.Font.GothamBold
title.Parent = frame

-----------------------------------------------------
-- Example 2: Display a grid of icons
-----------------------------------------------------
local iconNames = {
    "home", "search", "settings", "user", "heart",
    "star", "bell", "mail", "camera", "check",
    "arrow-down", "arrow-up", "arrow-left", "arrow-right",
    "plus", "minus", "x", "edit", "trash", "download"
}

local gridSize = 4
local iconSize = 50
local padding = 10
local startY = 50

for i, name in ipairs(iconNames) do
    local row = math.floor((i - 1) / gridSize)
    local col = (i - 1) % gridSize
    
    local iconFrame = Instance.new("Frame")
    iconFrame.Size = UDim2.new(0, iconSize, 0, iconSize + 20)
    iconFrame.Position = UDim2.new(0, padding + col * (iconSize + padding), 0, startY + row * (iconSize + 30))
    iconFrame.BackgroundTransparency = 1
    iconFrame.Parent = frame
    
    local icon = Instance.new("ImageLabel")
    icon.Size = UDim2.new(0, iconSize, 0, iconSize)
    icon.Position = UDim2.new(0, 0, 0, 0)
    icon.BackgroundTransparency = 1
    icon.Image = Icons:Get(name)
    icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
    icon.Parent = iconFrame
    
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, 0, 0, 20)
    label.Position = UDim2.new(0, 0, 1, 2)
    label.BackgroundTransparency = 1
    label.Text = name
    label.TextColor3 = Color3.fromRGB(150, 150, 150)
    label.TextSize = 10
    label.Font = Enum.Font.Gotham
    label.Parent = iconFrame
end

-----------------------------------------------------
-- Example 3: Dynamic icon loading
-----------------------------------------------------
local function createIconButton(parent, iconName, position)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0, 120, 0, 40)
    button.Position = position
    button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    button.BorderSizePixel = 0
    button.Text = ""
    button.Parent = parent
    
    local icon = Instance.new("ImageLabel")
    icon.Size = UDim2.new(0, 20, 0, 20)
    icon.Position = UDim2.new(0, 10, 0.5, -10)
    icon.BackgroundTransparency = 1
    icon.Image = Icons:Get(iconName)
    icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
    icon.Parent = button
    
    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1, -40, 1, 0)
    label.Position = UDim2.new(0, 35, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = iconName
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.TextSize = 14
    label.Font = Enum.Font.Gotham
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.Parent = button
    
    return button
end

-- Create some buttons
createIconButton(frame, "play", UDim2.new(0, 10, 0, 310))
createIconButton(frame, "pause", UDim2.new(0, 140, 0, 310))
createIconButton(frame, "skip-forward", UDim2.new(0, 10, 0, 355))
createIconButton(frame, "repeat", UDim2.new(0, 140, 0, 355))

print("Lucide Icons loaded! Available icons: " .. #Icons:GetNames())
