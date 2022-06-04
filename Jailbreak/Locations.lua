-- Variables

local VehicleBlacklist = {"BankTruck"}
local Locations = {
    Robbery = {
        Names = {"Bank", "Jewelry Store", "Museum", "Power Plant", "Donut Store", "Gas Station", "Tomb", "Casino"},
        Locations = {
            ["Bank"] = CFrame.new(4, 18, 865),
            ["Jewelry Store"] = CFrame.new(126, 20, 1368),
            ["Museum"] = CFrame.new(1044, 101, 1240),
            ["Power Plant"] = CFrame.new(96, 21, 2371),
            ["Donut Store"] = CFrame.new(90, 20, -1511),
            ["Gas Station"] = CFrame.new(-1526, 19, 699),
            ["Tomb"] = CFrame.new(620, 20, -470),
            ["Casino"] = CFrame.new(-256, 24, -4748),
        },
    },
    Misc = {
        Names = {"Prison Yard", "Prison Entrance", "Military Base", "Secret Agent Base", "City Criminal Base", "Volcano Base", "Cargo Port", "Beach Town", "Airport", "1 Million Dealership", "Gun Store", "Glider Shop", "Pet Shop", "JetPack Building", "Pirate Cove", "Prison Island", "Race Track", "Crater City"},
        Locations = {
            ["Prison Yard"] = CFrame.new(-1220, 18, -1760),
            ["Prison Entrance"] = CFrame.new(-1172, 18, -1390),
            ["Military Base"] = CFrame.new(669, 18, 441),
            ["Secret Agent Base"] = CFrame.new(1547, 70, 1669),
            ["City Criminal Base"] = CFrame.new(-243, 18, 1601),
            ["Volcano Base"] = CFrame.new(2284, 19, -2055),
            ["Cargo Port"] = CFrame.new(-389, 21, 1964),
            ["Beach Town"] = CFrame.new(2427, 24, -3776),
            ["Airport"] = CFrame.new(-1202, 41, 2846),
            ["1 Million Dealership"] = CFrame.new(-334, 19, -5470),
            ["Gun Store"] = CFrame.new(391, 18, 533),
            ["Glider Shop"] = CFrame.new(172, 19, -1737),
            ["Pet Shop"] = CFrame.new(250, 20, -1615),
            ["JetPack Building"] = CFrame.new(-688, 220, -6005),
            ["Pirate Cove"] = CFrame.new(1975, 5, 2117),
            ["Prison Island"] = CFrame.new(-2917, 24, 2312),
            ["Race Track"] = CFrame.new(-1538, 12, -3956),
            ["Crater City"] = CFrame.new(-523, 19, -5648),
        },
    },
    Vehicle = {
        Names = {},
        Locations = {},
    },
}

-- Vehicle Locations

for i, v in next, workspace.VehicleSpawns:GetChildren() do
    if v:FindFirstChild("Region") and not table.find(Locations.Vehicle.Names, v.Name) and not table.find(VehicleBlacklist, v.Name) then
        table.insert(Locations.Vehicle.Names, v.Name)
        Locations.Vehicle.Locations[v.Name] = v.Region.CFrame + Vector3.new(0, 10, 0)
    end
end

-- Scripts

return Locations
