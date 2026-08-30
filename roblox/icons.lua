--[[
    Lucide Icons for Roblox
    https://github.com/Haijo12/roblox-icons
    
    Usage:
        local Icons = loadstring(game:HttpGet("https://raw.githubusercontent.com/Haijo12/roblox-icons/main/roblox/icons.lua"))()
        local icon = Icons:Get("arrow-down")
]]

local Icons = {}
Icons.__index = Icons

-- Icon mappings: name -> rbxassetid
-- Replace placeholder IDs with your uploaded Roblox asset IDs
local iconAssets = {
    -- A
    ["a-arrow-down"] = "rbxassetid://0",
    ["a-arrow-up"] = "rbxassetid://0",
    ["a-large-small"] = "rbxassetid://0",
    ["accessibility"] = "rbxassetid://0",
    ["activity"] = "rbxassetid://0",
    ["ad"] = "rbxassetid://0",
    ["air-vent"] = "rbxassetid://0",
    ["airplay"] = "rbxassetid://0",
    ["alarm-clock"] = "rbxassetid://0",
    ["alarm-clock-check"] = "rbxassetid://0",
    ["alarm-clock-minus"] = "rbxassetid://0",
    ["alarm-clock-off"] = "rbxassetid://0",
    ["alarm-clock-plus"] = "rbxassetid://0",
    ["alarm-smoke"] = "rbxassetid://0",
    ["album"] = "rbxassetid://0",
    ["ambulance"] = "rbxassetid://0",
    ["anchor"] = "rbxassetid://0",
    ["aperture"] = "rbxassetid://0",
    ["apple"] = "rbxassetid://0",
    ["archive"] = "rbxassetid://0",
    ["archive-restore"] = "rbxassetid://0",
    ["archive-x"] = "rbxassetid://0",
    ["arrow-down"] = "rbxassetid://0",
    ["arrow-down-left"] = "rbxassetid://0",
    ["arrow-down-right"] = "rbxassetid://0",
    ["arrow-left"] = "rbxassetid://0",
    ["arrow-right"] = "rbxassetid://0",
    ["arrow-up"] = "rbxassetid://0",
    ["arrow-up-left"] = "rbxassetid://0",
    ["arrow-up-right"] = "rbxassetid://0",
    ["at-sign"] = "rbxassetid://0",
    ["atom"] = "rbxassetid://0",
    ["award"] = "rbxassetid://0",
    
    -- B
    ["baby"] = "rbxassetid://0",
    ["backpack"] = "rbxassetid://0",
    ["badge"] = "rbxassetid://0",
    ["badge-alert"] = "rbxassetid://0",
    ["badge-check"] = "rbxassetid://0",
    ["badge-info"] = "rbxassetid://0",
    ["badge-x"] = "rbxassetid://0",
    ["baggage-claim"] = "rbxassetid://0",
    ["balloon"] = "rbxassetid://0",
    ["ban"] = "rbxassetid://0",
    ["banana"] = "rbxassetid://0",
    ["barrier"] = "rbxassetid://0",
    ["battery"] = "rbxassetid://0",
    ["battery-charging"] = "rbxassetid://0",
    ["battery-full"] = "rbxassetid://0",
    ["battery-low"] = "rbxassetid://0",
    ["battery-medium"] = "rbxassetid://0",
    ["beaker"] = "rbxassetid://0",
    ["bed"] = "rbxassetid://0",
    ["bed-double"] = "rbxassetid://0",
    ["bed-single"] = "rbxassetid://0",
    ["beer"] = "rbxassetid://0",
    ["bell"] = "rbxassetid://0",
    ["bell-check"] = "rbxassetid://0",
    ["bell-dot"] = "rbxassetid://0",
    ["bell-electric"] = "rbxassetid://0",
    ["bell-minus"] = "rbxassetid://0",
    ["bell-off"] = "rbxassetid://0",
    ["bell-plus"] = "rbxassetid://0",
    ["bell-ring"] = "rbxassetid://0",
    ["bike"] = "rbxassetid://0",
    ["binary"] = "rbxassetid://0",
    ["binoculars"] = "rbxassetid://0",
    ["biohazard"] = "rbxassetid://0",
    ["bird"] = "rbxassetid://0",
    ["bitcoin"] = "rbxassetid://0",
    ["blend"] = "rbxassetid://0",
    ["blender"] = "rbxassetid://0",
    ["blinds"] = "rbxassetid://0",
    ["blocks"] = "rbxassetid://0",
    ["bluetooth"] = "rbxassetid://0",
    ["bluetooth-connected"] = "rbxassetid://0",
    ["bluetooth-off"] = "rbxassetid://0",
    ["bluetooth-searching"] = "rbxassetid://0",
    ["bold"] = "rbxassetid://0",
    ["bolt"] = "rbxassetid://0",
    ["bomb"] = "rbxassetid://0",
    ["bone"] = "rbxassetid://0",
    ["book"] = "rbxassetid://0",
    ["book-a"] = "rbxassetid://0",
    ["book-alert"] = "rbxassetid://0",
    ["book-audio"] = "rbxassetid://0",
    ["book-check"] = "rbxassetid://0",
    ["book-copy"] = "rbxassetid://0",
    ["book-dashed"] = "rbxassetid://0",
    ["book-down"] = "rbxassetid://0",
    ["book-headphones"] = "rbxassetid://0",
    ["book-heart"] = "rbxassetid://0",
    ["book-image"] = "rbxassetid://0",
    ["book-key"] = "rbxassetid://0",
    ["book-lock"] = "rbxassetid://0",
    ["book-marked"] = "rbxassetid://0",
    ["book-minus"] = "rbxassetid://0",
    ["book-open"] = "rbxassetid://0",
    ["book-open-check"] = "rbxassetid://0",
    ["book-open-text"] = "rbxassetid://0",
    ["book-plus"] = "rbxassetid://0",
    ["book-search"] = "rbxassetid://0",
    ["book-text"] = "rbxassetid://0",
    ["book-type"] = "rbxassetid://0",
    ["book-up"] = "rbxassetid://0",
    ["book-user"] = "rbxassetid://0",
    ["book-x"] = "rbxassetid://0",
    ["bookmark"] = "rbxassetid://0",
    ["bookmark-check"] = "rbxassetid://0",
    ["bookmark-minus"] = "rbxassetid://0",
    ["bookmark-off"] = "rbxassetid://0",
    ["bookmark-plus"] = "rbxassetid://0",
    ["bookmark-x"] = "rbxassetid://0",
    ["boom-box"] = "rbxassetid://0",
    ["bot"] = "rbxassetid://0",
    ["bot-message-square"] = "rbxassetid://0",
    ["bot-off"] = "rbxassetid://0",
    ["box"] = "rbxassetid://0",
    ["boxes"] = "rbxassetid://0",
    ["braces"] = "rbxassetid://0",
    ["brackets"] = "rbxassetid://0",
    ["brain"] = "rbxassetid://0",
    ["brain-circuit"] = "rbxassetid://0",
    ["brain-cog"] = "rbxassetid://0",
    ["brick-wall"] = "rbxassetid://0",
    ["briefcase"] = "rbxassetid://0",
    ["broom"] = "rbxassetid://0",
    ["brush"] = "rbxassetid://0",
    ["bug"] = "rbxassetid://0",
    ["building"] = "rbxassetid://0",
    ["building-2"] = "rbxassetid://0",
    ["bus"] = "rbxassetid://0",
    
    -- C
    ["cake"] = "rbxassetid://0",
    ["calculator"] = "rbxassetid://0",
    ["calendar"] = "rbxassetid://0",
    ["camera"] = "rbxassetid://0",
    ["candy"] = "rbxassetid://0",
    ["car"] = "rbxassetid://0",
    ["cat"] = "rbxassetid://0",
    ["check"] = "rbxassetid://0",
    ["check-check"] = "rbxassetid://0",
    ["check-circle"] = "rbxassetid://0",
    ["chevron-down"] = "rbxassetid://0",
    ["chevron-left"] = "rbxassetid://0",
    ["chevron-right"] = "rbxassetid://0",
    ["chevron-up"] = "rbxassetid://0",
    ["circle"] = "rbxassetid://0",
    ["circle-alert"] = "rbxassetid://0",
    ["circle-check"] = "rbxassetid://0",
    ["circle-dot"] = "rbxassetid://0",
    ["circle-minus"] = "rbxassetid://0",
    ["circle-plus"] = "rbxassetid://0",
    ["circle-x"] = "rbxassetid://0",
    ["clipboard"] = "rbxassetid://0",
    ["clock"] = "rbxassetid://0",
    ["cloud"] = "rbxassetid://0",
    ["code"] = "rbxassetid://0",
    ["cog"] = "rbxassetid://0",
    ["coin"] = "rbxassetid://0",
    ["command"] = "rbxassetid://0",
    ["compass"] = "rbxassetid://0",
    ["copy"] = "rbxassetid://0",
    ["copyright"] = "rbxassetid://0",
    ["credit-card"] = "rbxassetid://0",
    ["crop"] = "rbxassetid://0",
    ["crosshair"] = "rbxassetid://0",
    ["crown"] = "rbxassetid://0",
    ["cube"] = "rbxassetid://0",
    
    -- D
    ["database"] = "rbxassetid://0",
    ["delete"] = "rbxassetid://0",
    ["diamond"] = "rbxassetid://0",
    ["dice"] = "rbxassetid://0",
    ["disc"] = "rbxassetid://0",
    ["divide"] = "rbxassetid://0",
    ["dna"] = "rbxassetid://0",
    ["dollar-sign"] = "rbxassetid://0",
    ["download"] = "rbxassetid://0",
    ["droplet"] = "rbxassetid://0",
    
    -- E
    ["ear"] = "rbxassetid://0",
    ["edit"] = "rbxassetid://0",
    ["egg"] = "rbxassetid://0",
    ["equal"] = "rbxassetid://0",
    ["error"] = "rbxassetid://0",
    ["escape"] = "rbxassetid://0",
    ["expand"] = "rbxassetid://0",
    ["eye"] = "rbxassetid://0",
    ["eye-off"] = "rbxassetid://0",
    
    -- F
    ["face"] = "rbxassetid://0",
    ["factory"] = "rbxassetid://0",
    ["fast-forward"] = "rbxassetid://0",
    ["feather"] = "rbxassetid://0",
    ["file"] = "rbxassetid://0",
    ["filter"] = "rbxassetid://0",
    ["fingerprint"] = "rbxassetid://0",
    ["flag"] = "rbxassetid://0",
    ["flame"] = "rbxassetid://0",
    ["flashlight"] = "rbxassetid://0",
    ["flower"] = "rbxassetid://0",
    ["folder"] = "rbxassetid://0",
    ["forklift"] = "rbxassetid://0",
    ["frame"] = "rbxassetid://0",
    
    -- G
    ["gamepad"] = "rbxassetid://0",
    ["gauge"] = "rbxassetid://0",
    ["globe"] = "rbxassetid://0",
    ["grab"] = "rbxassetid://0",
    ["gradient"] = "rbxassetid://0",
    ["grid"] = "rbxassetid://0",
    ["grip"] = "rbxassetid://0",
    
    -- H
    ["hammer"] = "rbxassetid://0",
    ["hand"] = "rbxassetid://0",
    ["hash"] = "rbxassetid://0",
    ["headphones"] = "rbxassetid://0",
    ["heart"] = "rbxassetid://0",
    ["help-circle"] = "rbxassetid://0",
    ["hexagon"] = "rbxassetid://0",
    ["home"] = "rbxassetid://0",
    ["hourglass"] = "rbxassetid://0",
    
    -- I
    ["image"] = "rbxassetid://0",
    ["info"] = "rbxassetid://0",
    ["italic"] = "rbxassetid://0",
    
    -- J
    ["join"] = "rbxassetid://0",
    
    -- K
    ["key"] = "rbxassetid://0",
    ["keyboard"] = "rbxassetid://0",
    
    -- L
    ["landmark"] = "rbxassetid://0",
    ["laptop"] = "rbxassetid://0",
    ["layers"] = "rbxassetid://0",
    ["layout"] = "rbxassetid://0",
    ["life-buoy"] = "rbxassetid://0",
    ["lightbulb"] = "rbxassetid://0",
    ["link"] = "rbxassetid://0",
    ["list"] = "rbxassetid://0",
    ["lock"] = "rbxassetid://0",
    ["log-in"] = "rbxassetid://0",
    ["log-out"] = "rbxassetid://0",
    
    -- M
    ["mail"] = "rbxassetid://0",
    ["map"] = "rbxassetid://0",
    ["maximize"] = "rbxassetid://0",
    ["menu"] = "rbxassetid://0",
    ["message"] = "rbxassetid://0",
    ["mic"] = "rbxassetid://0",
    ["minimize"] = "rbxassetid://0",
    ["minus"] = "rbxassetid://0",
    ["monitor"] = "rbxassetid://0",
    ["moon"] = "rbxassetid://0",
    ["more-horizontal"] = "rbxassetid://0",
    ["more-vertical"] = "rbxassetid://0",
    ["mouse"] = "rbxassetid://0",
    ["move"] = "rbxassetid://0",
    ["music"] = "rbxassetid://0",
    
    -- N
    ["navigation"] = "rbxassetid://0",
    ["network"] = "rbxassetid://0",
    ["nut"] = "rbxassetid://0",
    
    -- O
    ["octagon"] = "rbxassetid://0",
    ["option"] = "rbxassetid://0",
    
    -- P
    ["package"] = "rbxassetid://0",
    ["paintbrush"] = "rbxassetid://0",
    ["palette"] = "rbxassetid://0",
    ["paperclip"] = "rbxassetid://0",
    ["pause"] = "rbxassetid://0",
    ["pen"] = "rbxassetid://0",
    ["pencil"] = "rbxassetid://0",
    ["percent"] = "rbxassetid://0",
    ["phone"] = "rbxassetid://0",
    ["pin"] = "rbxassetid://0",
    ["pizza"] = "rbxassetid://0",
    ["play"] = "rbxassetid://0",
    ["plus"] = "rbxassetid://0",
    ["power"] = "rbxassetid://0",
    ["printer"] = "rbxassetid://0",
    
    -- Q
    ["qr-code"] = "rbxassetid://0",
    
    -- R
    ["radio"] = "rbxassetid://0",
    ["refresh"] = "rbxassetid://0",
    ["reload"] = "rbxassetid://0",
    ["repeat"] = "rbxassetid://0",
    ["rewind"] = "rbxassetid://0",
    ["rocket"] = "rbxassetid://0",
    ["rotate-ccw"] = "rbxassetid://0",
    ["rotate-cw"] = "rbxassetid://0",
    ["ruler"] = "rbxassetid://0",
    
    -- S
    ["save"] = "rbxassetid://0",
    ["scan"] = "rbxassetid://0",
    ["scissors"] = "rbxassetid://0",
    ["search"] = "rbxassetid://0",
    ["send"] = "rbxassetid://0",
    ["server"] = "rbxassetid://0",
    ["settings"] = "rbxassetid://0",
    ["share"] = "rbxassetid://0",
    ["shield"] = "rbxassetid://0",
    ["shopping-cart"] = "rbxassetid://0",
    ["shuffle"] = "rbxassetid://0",
    ["sidebar"] = "rbxassetid://0",
    ["signal"] = "rbxassetid://0",
    ["skip-back"] = "rbxassetid://0",
    ["skip-forward"] = "rbxassetid://0",
    ["slash"] = "rbxassetid://0",
    ["sliders"] = "rbxassetid://0",
    ["smartphone"] = "rbxassetid://0",
    ["smile"] = "rbxassetid://0",
    ["snowflake"] = "rbxassetid://0",
    ["sort"] = "rbxassetid://0",
    ["sparkles"] = "rbxassetid://0",
    ["speaker"] = "rbxassetid://0",
    ["square"] = "rbxassetid://0",
    ["star"] = "rbxassetid://0",
    ["stop"] = "rbxassetid://0",
    ["sun"] = "rbxassetid://0",
    ["sunrise"] = "rbxassetid://0",
    ["sunset"] = "rbxassetid://0",
    
    -- T
    ["tablet"] = "rbxassetid://0",
    ["tag"] = "rbxassetid://0",
    ["target"] = "rbxassetid://0",
    ["terminal"] = "rbxassetid://0",
    ["thermometer"] = "rbxassetid://0",
    ["thumbs-down"] = "rbxassetid://0",
    ["thumbs-up"] = "rbxassetid://0",
    ["timer"] = "rbxassetid://0",
    ["toggle-left"] = "rbxassetid://0",
    ["toggle-right"] = "rbxassetid://0",
    ["trash"] = "rbxassetid://0",
    ["tree"] = "rbxassetid://0",
    ["trending-down"] = "rbxassetid://0",
    ["trending-up"] = "rbxassetid://0",
    ["triangle"] = "rbxassetid://0",
    ["trophy"] = "rbxassetid://0",
    ["truck"] = "rbxassetid://0",
    ["tv"] = "rbxassetid://0",
    
    -- U
    ["umbrella"] = "rbxassetid://0",
    ["underline"] = "rbxassetid://0",
    ["undo"] = "rbxassetid://0",
    ["university"] = "rbxassetid://0",
    ["unlink"] = "rbxassetid://0",
    ["upload"] = "rbxassetid://0",
    ["user"] = "rbxassetid://0",
    ["users"] = "rbxassetid://0",
    
    -- V
    ["variable"] = "rbxassetid://0",
    ["video"] = "rbxassetid://0",
    ["view"] = "rbxassetid://0",
    ["volume"] = "rbxassetid://0",
    ["volume-x"] = "rbxassetid://0",
    
    -- W
    ["wallet"] = "rbxassetid://0",
    ["watch"] = "rbxassetid://0",
    ["webcam"] = "rbxassetid://0",
    ["wifi"] = "rbxassetid://0",
    ["wind"] = "rbxassetid://0",
    ["wine"] = "rbxassetid://0",
    ["wrench"] = "rbxassetid://0",
    
    -- X
    ["x"] = "rbxassetid://0",
    
    -- Z
    ["zap"] = "rbxassetid://0",
    ["zoom-in"] = "rbxassetid://0",
    ["zoom-out"] = "rbxassetid://0",
}

--- Get an icon asset ID by name
-- @param name string - The icon name (e.g., "arrow-down")
-- @return string - The rbxassetid:// string
function Icons:Get(name)
    return iconAssets[name] or "rbxassetid://0"
end

--- Get all icon mappings
-- @return table - All name -> assetId pairs
function Icons:GetAll()
    return iconAssets
end

--- Check if an icon exists
-- @param name string - The icon name
-- @return boolean
function Icons:Has(name)
    return iconAssets[name] ~= nil
end

--- Get all icon names
-- @return table - Array of icon names
function Icons:GetNames()
    local names = {}
    for name in pairs(iconAssets) do
        table.insert(names, name)
    end
    table.sort(names)
    return names
end

return Icons
