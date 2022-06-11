return function()
    local identity = identifyexecutor()
    return table.find({"Synapse X", "Krnl", "OxygenU", "Comet", "Delta", "ScriptWare", "KatoAPI"}, identity) and true or false
end
