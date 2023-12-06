Citizen.CreateThread(function()
    while true do
        Wait(5*1000)
        TriggerServerEvent("Summer:Discord")
        players = {}
        for _, player in ipairs(GetActivePlayers()) do
            table.insert(players, player)
        end
    end
end)

RegisterNetEvent("Summer:Discord-Async")
AddEventHandler("Summer:Discord-Async", function(user_id, faction, name) 
    local player = GetPlayerPed(-1)
    SetDiscordAppId(config.AppId)
    SetDiscordRichPresenceAsset(config.PresenceLogo)
    SetDiscordRichPresenceAssetSmall(config.PresenceLogo)
    SetDiscordRichPresenceAction(0, "" .. GetStreetNameFromHashKey( GetStreetNameAtCoord( table.unpack( GetEntityCoords(player) ) ) ) .." 에 있는중", config.PresenceText)
	SetDiscordRichPresenceAction(1, "🎫ㆍ서버 접속", "fivem://connect/0.0.0.0:30120")
    SetRichPresence("" .. user_id .. "번 | " .. name .. " | " .. faction .. " 하는중")
end)