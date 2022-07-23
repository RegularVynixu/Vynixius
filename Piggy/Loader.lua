local selectedBook = ({
    [4623386862] = game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Book_1.lua"),
    [5661005779] = game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Piggy/Book_2.lua"),
})[game.PlaceId]

if selectedBook ~= nil then
    loadstring(selectedBook)()
end
