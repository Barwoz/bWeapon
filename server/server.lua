ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)


----------------------Armes

-----Lampe

RegisterNetEvent('barwoz:lampe')
AddEventHandler('barwoz:lampe', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 300
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_FLASHLIGHT', 80)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'AMUNATION', '', 'Vous avez reçus votre ~b~Lampe', 'CHAR_CALL911', 8)

    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

-----Couteau

RegisterNetEvent('barwoz:couteau')
AddEventHandler('barwoz:couteau', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 200
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_KNIFE', 80)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'AMUNATION', '', 'Vous avez reçus votre ~b~Couteau', 'CHAR_CALL911', 8)

    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

-----Point Américain

RegisterNetEvent('barwoz:pointamericain')
AddEventHandler('barwoz:pointamericain', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 200
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_KNUCKLE', 80)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'AMUNATION', '', 'Vous avez reçus votre ~b~Point Américain', 'CHAR_CALL911', 8)

    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

-----Club

RegisterNetEvent('barwoz:club')
AddEventHandler('barwoz:club', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 600
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_GOLFCLUB', 80)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'AMUNATION', '', 'Vous avez reçus votre ~b~Club de Golf', 'CHAR_CALL911', 8)

    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

-----Queue de Billard

RegisterNetEvent('barwoz:batton')
AddEventHandler('barwoz:batton', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 150
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_POOLCUE', 80)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'AMUNATION', '', 'Vous avez reçus votre ~b~Queue De Billard', 'CHAR_CALL911', 8)

    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

-----Bat

RegisterNetEvent('barwoz:bat')
AddEventHandler('barwoz:bat', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 800
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_BAT', 80)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'AMUNATION', '', 'Vous avez reçus votre ~b~Bat de Baseball', 'CHAR_CALL911', 8)

    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

-----Pétoire

RegisterNetEvent('barwoz:petoire')
AddEventHandler('barwoz:petoire', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 25000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_SNSPISTOL', 80)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'AMUNATION', '', 'Vous avez reçus votre ~o~Pétoire', 'CHAR_CALL911', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

-----Pistolet 9mm

RegisterNetEvent('barwoz:pistolet')
AddEventHandler('barwoz:pistolet', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 50000
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addWeapon('WEAPON_PISTOL', 80)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'AMUNATION', '', 'Vous avez reçus votre ~o~Pistolet', 'CHAR_CALL911', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)


----------------------Accessoires

-----Chargeur

RegisterNetEvent('barwoz:chargeur')
AddEventHandler('barwoz:chargeur', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 500
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('clip', 1)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'AMUNATION', '', 'Vous avez reçus votre ~p~Chargeur', 'CHAR_CALL911', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

-----Lampe Armes

RegisterNetEvent('barwoz:lampepistol')
AddEventHandler('barwoz:lampepistol', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 700
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('flashlight', 1)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'AMUNATION', '', 'Vous avez reçus votre ~p~Lampe d\'arme', 'CHAR_CALL911', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

-----SkinDeLuxe

RegisterNetEvent('barwoz:skindeluxe')
AddEventHandler('barwoz:skindeluxe', function()

    local _source = source
    local xPlayer = ESX.GetPlayerFromId(source)
    local price = 2500
    local xMoney = xPlayer.getMoney()

    if xMoney >= price then

        xPlayer.removeMoney(price)
        xPlayer.addInventoryItem('yusuf', 1)
        TriggerClientEvent('esx:showAdvancedNotification', source, 'AMUNATION', '', 'Vous avez reçus votre ~p~SkinDeLuxe', 'CHAR_CALL911', 8)
    else
         TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez ~r~d'argent")
    end
end)

