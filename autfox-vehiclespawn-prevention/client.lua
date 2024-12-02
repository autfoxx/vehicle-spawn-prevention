-- List of vehicle hashes to block from spawning
local blockedVehicles = {
    `ambulance`,
    `firetruk`, 
    `dump`,
    -- Add more vehicle model names as needed
}


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        for _, zone in ipairs(Config.Zones) do
            local vehicles = GetGamePool('CVehicle')
            
            for _, vehicle in ipairs(vehicles) do
                local vehicleCoords = GetEntityCoords(vehicle)
                local distance = #(vehicleCoords - zone.coords)
                
                if distance <= zone.radius then
                    local model = GetEntityModel(vehicle)
                    for _, blockedHash in ipairs(blockedVehicles) do
                        if model == blockedHash then
                            DeleteEntity(vehicle)
                            break
                        end
                    end
                end
            end
        end
    end
end) 