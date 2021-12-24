local funcs = {
    ["getgc"] = getgc,
    ["islclosure"] = islclosure,
    ["newcclosure"] = newcclosure,
    ["getconnections"] = getconnections,
    ["firesignal"] = firesignal,
    ["isclosure"] = iskrnlclosure or isexecutorclosure or is_synapse_function,
    ["setidentity"] = (syn and syn.set_thread_identity) or set_thread_identity or setthreadidentity or setthreadcontext,
    ["request"] = (syn and syn.request) or http_request or request,
    ["hookmetamethod"] = hookmetamethod,
    ["checkcaller"] = checkcaller,
    ["getnamecallmethod"] = getnamecallmethod,
    ["getproto"] = debug.getproto,
    ["getupvalue"] = debug.getupvalue,
    ["setupvalue"] = debug.setupvalue,
    ["getinfo"] = debug.getinfo,
    ["getconstants"] = debug.getconstants,
}

local missing = {}
for i, v in next, funcs do
    if not v then
        table.insert(missing, i)
    end
end

if #missing > 0 then
    local n, v = identifyexecutor()
    local exeName = n.. " ".. v
    if rconsoleprint then
        rconsoleprint("@@LIGHT_RED@@")
        rconsoleprint("[".. exeName.. "] missing required function(s):\n\n")
        for i, v in next, missing do
            rconsoleprint(v.. "\n")
        end
        rconsoleprint("\n(Report this issue in a ticket, with a screencapture of this prompt.)")
    else
        warn("[".. exeName.. "] Missing required function(s) :", unpack(missing))
    end
end

return #missing == 0
