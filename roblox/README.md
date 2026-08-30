# Roblox Icons

Lucide icons adapted for Roblox Studio using `loadstring`.

## Setup

1. Upload the PNG icons to Roblox as Image assets
2. Copy the asset IDs into `icons.lua`
3. Use the loadstring script to load icons in your game

## Usage

### Basic Loadstring

```lua
local Icons = loadstring(game:HttpGet("https://raw.githubusercontent.com/Haijo12/roblox-icons/main/roblox/icons.lua"))()

-- Get an icon by name
local icon = Icons:Get("arrow-down")

-- Use with ImageLabel
local img = Instance.new("ImageLabel")
img.Image = icon
img.Size = UDim2.new(0, 24, 0, 24)
img.Parent = script.Parent
```

### With BillboardGui

```lua
local Icons = loadstring(game:HttpGet("https://raw.githubusercontent.com/Haijo12/roblox-icons/main/roblox/icons.lua"))()

local billboard = Instance.new("BillboardGui")
billboard.Size = UDim2.new(0, 50, 0, 50)
billboard.Adornee = workspace.Part
billboard.Parent = workspace.Part

local img = Instance.new("ImageLabel")
img.Image = Icons:Get("bell")
img.Size = UDim2.new(1, 0, 1, 0)
img.BackgroundTransparency = 1
img.Parent = billboard
```

### Get All Icons

```lua
local Icons = loadstring(game:HttpGet("https://raw.githubusercontent.com/Haijo12/roblox-icons/main/roblox/icons.lua"))()

-- Get all available icon names
local allIcons = Icons:GetAll()
for name, assetId in pairs(allIcons) do
    print(name, assetId)
end
```

## File Structure

```
roblox/
  README.md       -- This file
  icons.lua       -- Icon module with asset IDs
  example.lua     -- Usage examples
```

## Notes

- Upload icons to Roblox as **Decal** or **Image** assets
- Use `rbxassetid://ID` format for the Image property
- Icons are organized alphabetically in the main `lucide-icons/` folder
