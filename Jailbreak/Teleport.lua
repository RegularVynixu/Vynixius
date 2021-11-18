local Module = {}

function Module.Unlock(key)
    if key == "testKey" then
        Module.Sex = true
    end
end

return Module
