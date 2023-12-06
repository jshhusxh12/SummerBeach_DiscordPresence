local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")

RegisterNetEvent("Summer:Discord")
AddEventHandler("Summer:Discord", function()
    local source = source
    local user_id = vRP.getUserId({source})
    local faction = vRP.getUserGroupByType({user_id, "job"})
    local name = vRP.getPlayerName({source})
    TriggerClientEvent("Summer:Discord-Async", source, user_id, faction, name)
end)