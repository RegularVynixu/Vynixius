return function()
    local identity = identifyexecutor()
    return table.find({"Synapse X", "Krnl", "OxygenU", "Comet", "Delta", "Electron", "ScriptWare", "KatoAPI"}, identity) and true or false
end
