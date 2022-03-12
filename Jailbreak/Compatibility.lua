return function(bool)
    local Check = table.find({"Synapse X", "Krnl", "OxygenU", "Comet", "Delta", "Electron", "Fluxus", "ScriptWare"}, ({identifyexecutor()})[1]) and true or false
  
    if bool then
        local Notification = require(game:GetService("ReplicatedStorage").Game.Notification)
        local Settings = require(game:GetService("ReplicatedStorage").Resource.Settings)
        local GameUtil = require(game:GetService("ReplicatedStorage").Game.GameUtil)
        
        Notification.Gui.ContainerNotification.ImageColor3 = Check and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
        Notification.new({Text = "Your executor is ".. (not Check and "not " or "").. "supported.", Duration = 5})
        task.wait(5)
        Notification.Gui.ContainerNotification.ImageColor3 = Settings.TeamColor[GameUtil.Team]
    else
        return Check
    end
end
