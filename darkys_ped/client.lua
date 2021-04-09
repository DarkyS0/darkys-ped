Citizen.CreateThread(function()

    for k,v in pairs(Config.Peds) do
        RequestModel(GetHashKey(v.pedModel)) 
        while not HasModelLoaded(GetHashKey(v.pedModel)) do 
            Wait(1)
        end
        npc = CreatePed(1, GetHashKey(v.pedModel), v.pedCoords.x, v.pedCoords.y, v.pedCoords.z,  v.heading, false, true)
        SetPedCombatAttributes(npc, 46, true)               
        SetPedFleeAttributes(npc, 0, 0)               
        SetBlockingOfNonTemporaryEvents(npc, true)
        SetEntityAsMissionEntity(npc, true, true)
        SetEntityInvincible(npc, true)
        FreezeEntityPosition(npc, true)
    end
end)
