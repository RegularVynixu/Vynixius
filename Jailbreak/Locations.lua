-- Locations

local Locations = {
    Robbery = {
        Names = {"Bank", "Jewelry Store", "Museum", "Power Plant", "Donut Store", "Gas Station", "Tomb"},
        Locations = {
            ["Bank"] = CFrame.new(-12, 20, 782),
            ["Jewelry Store"] = CFrame.new(126, 20, 1368),
            ["Museum"] = CFrame.new(1142, 104, 1247),
            ["Power Plant"] = CFrame.new(636, 39, 2357),
            ["Donut Store"] = CFrame.new(90, 20, -1511),
            ["Gas Station"] = CFrame.new(-1526, 19, 699),
            ["Tomb"] = CFrame.new(620, 20, -470),
        },
    },
    Misc = {
        Names = {"Prison Yard", "1 Million Dealership", "Volcano Base", "Military Base", "Secret Police Base", "City Base", "Boat Docks", "Airport", "Fire Station", "Gun Store", "Pet Shop", "JetPack Mountain", "Pirate Hideout", "Lighthouse", "Prison Island"},
        Locations = {
            ["Prison Yard"] = CFrame.new(-1220, 18, -1760),
            ["1 Million Dealership"] = CFrame.new(704, 19, -1530),
            ["Volcano Base"] = CFrame.new(1820, 46, -1620),
            ["Military Base"] = CFrame.new(669, 18, 441),
            ["Secret Police Base"] = CFrame.new(1547, 70, 1669),
            ["City Base"] = CFrame.new(-243, 18, 1601),
            ["Boat Docks"] = CFrame.new(-430, 21, 2025),
            ["Airport"] = CFrame.new(-1202, 41, 2846),
            ["Fire Station"] = CFrame.new(-930, 32, 1349),
            ["Gun Store"] = CFrame.new(391, 18, 533),
            ["Pet Shop"] = CFrame.new(250, 20, -1615),
            ["JetPack Mountain"] = CFrame.new(1384, 168, 2596),
            ["Pirate Hideout"] = CFrame.new(1975, 5, 2117),
            ["Lighthouse"] = CFrame.new(-2044, 45, 1722),
            ["Prison Island"] = CFrame.new(-2917, 24, 2312),
        },
    },
    Vehicle = {
        Names = {},
        Locations = {},
    },
}

-- Vehicle Locations

for i, v in next, workspace.VehicleSpawns:GetChildren() do
    if v:FindFirstChild("Region") and not table.find(Locations.Vehicle.Names, v.Name) then
        table.insert(Locations.Vehicle.Names, v.Name)
        Locations.Vehicle.Locations[v.Name] = v.Region.CFrame + Vector3.new(0, 10, 0)
    end
end

-- Scripts

return Locations
