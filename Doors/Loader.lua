if game.PlaceId == 6839171747 then
    local floor = game:GetService("ReplicatedStorage").GameData.Floor.Value

    if floor.Value == "Hotel" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()

    elseif floor.Value == "Rooms" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/The%20Rooms/Script.lua"))()
    end
end
