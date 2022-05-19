return function() -- temporary so the current shit doesn't break
    local Functions = {
        getgc,
        getfenv,
        islclosure,
        newcclosure,
        getconnections,
        firesignal,
        hookmetamethod,
        checkcaller,
        getnamecallmethod,

        debug.getproto,
        debug.getupvalue,
        debug.getupvalues,
        debug.setupvalues,
        debug.getconstant,
        debug.getconstants,
        debug.setconstant,
        debug.getinfo,
        debug.traceback,

        is_synapse_function or iskrnlclosure or isexecutorclosure,
        (syn and syn.set_thread_identity) or set_thread_identity or setthreadidentity or setthreadcontext,
        (syn and syn.request) or http_request or request,
    }

    for i, v in next, Functions do
        if not v then
            return false
        end
    end
    return true
end
