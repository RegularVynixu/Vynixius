-- Services

local Players = game:GetService("Players")

-- Variables

local Plr = Players.LocalPlayer
local Cell

-- Scripts

for i, v in next, workspace.Prison_Cellblock:GetDescendants() do
    if v:FindFirstChild("Occupant") and v.Occupant.Value == Plr then
        Cell = v
        break
    end
end

local Locations = {
    Names = {"Cell Block", "Cafeteria", "Guard Area", "Prison Yard", "Prison Garage", "Prison Entrance", "Criminal Base", "City"},
    Locations = {
        ["Cell Block"] = CFrame.new(916, 100, 2448),
        ["Cafeteria"] = CFrame.new(884, 101, 2288),
        ["Guard Area"] = CFrame.new(834, 100, 2316),
        ["Prison Yard"] = CFrame.new(779, 99, 2472),
        ["Prison Garage"] = CFrame.new(570, 99, 2469),
        ["Prison Entrance"] = CFrame.new(468, 99, 2252),
        ["Criminal Base"] = CFrame.new(-921, 94, 2191),
        ["City"] = CFrame.new(-361, 56, 1734),
    },
}

if Cell then
    for i = 1, #Locations.Names do
        local idx = #Locations.Names - i
        Locations.Names[idx + 1] = Locations.Names[idx]
    end
    for i = 1, #Locations.Locations do
        local idx = #Locations.Locations - i
        Locations.Locations[idx + 1] = Locations.Locations[idx]
    end
    Locations.Names[1] = "Cell"
    Locations.Locations[1] = Cell.spawnbrick.CFrame
end

return Locations
