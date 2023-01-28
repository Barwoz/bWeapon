ESX = nil

CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        print("^0======================================================================^7")
        print("^0[^4Author^0] ^7:^0 ^1BarWoz^7")
        print("^0[^2Download^0] ^7:^0 ^5https://github.com/Barwoz/Barwoz_Superette^7")
        print("^0[^3Preview^0] ^7:^0 ^5https://www.youtube.com/watch?v=AnDf5cQ37NI^7")
        print("^0======================================================================^7")
		Wait(100)
	end
end)

------------------------------MENU ARMES

local WeaponMenu = false

local armes = RageUI.CreateMenu("Armurerie", "Nos Article(s)", 10 , 80)
armes.Closed = function() WeaponMenu = false end 

function OpenMenuArme()
    if WeaponMenu then
        WeaponMenu = false
    else
        WeaponMenu = true
    RageUI.Visible(armes, true)
        CreateThread(function()
            while WeaponMenu do
                Wait(1)
                RageUI.IsVisible(armes, function()

                    RageUI.Separator('~b~↓~s~ Arme(s) Blanche(s) ~b~↓~s~')
                    

                    RageUI.Button("Queue De Billard", nil, {RightLabel = "~b~150$~s~"}, true , {
                        onSelected = function()
                            TriggerServerEvent('barwoz:batton')
                        end
                    })

                    RageUI.Button("Couteau", nil, {RightLabel = "~b~200$~s~"}, true , {
                        onSelected = function()
                            TriggerServerEvent('barwoz:couteau')
                        end
                    })

                    RageUI.Button("Lampe Torche", nil, {RightLabel = "~b~300$~s~"}, true , {
                        onSelected = function()
                            TriggerServerEvent('barwoz:lampe')
                        end
                    })

                    RageUI.Button("Point Américain", nil, {RightLabel = "~b~500$~s~"}, true , {
                        onSelected = function()
                            TriggerServerEvent('barwoz:pointamericain')
                        end
                    })

                    RageUI.Button("Club De Golf", nil, {RightLabel = "~b~600$~s~"}, true , {
                        onSelected = function()
                            TriggerServerEvent('barwoz:club')
                        end
                    })

                    RageUI.Button("Bat De Baseball", nil, {RightLabel = "~b~800$~s~"}, true , {
                        onSelected = function()
                            TriggerServerEvent('barwoz:bat')
                        end
                    })

                    RageUI.Separator('~o~↓~s~ Arme(s) ~o~↓~s~')

                    RageUI.Button("Pétoire", nil, {RightLabel = "~o~25 000$~s~"}, true , {
                        onSelected = function()
                            TriggerServerEvent('barwoz:petoire')
                        end
                    })

                    RageUI.Button("Pistolet 9mm", nil, {RightLabel = "~o~50 000$~s~"}, true , {
                        onSelected = function()
                            TriggerServerEvent('barwoz:pistolet')
                        end
                    })

                end)
            end
        end)
    end 
end 

------------------------------DRAWMARKERS

Citizen.CreateThread(function()
    while true do
        local pCoords2 = GetEntityCoords(PlayerPedId())
        local activerfps = false
        local dst = GetDistanceBetweenCoords(pCoords2, true)
        for _,v in pairs(Config.position) do
            if #(pCoords2 - v.position) < 1.5 then
                activerfps = true
                Visual.Subtitle("Appuyer sur ~r~[E]~s~ pour accéder a l\'armurerie !")
            if WeaponMenu == false then
                if IsControlJustReleased(0, 38) then
                    OpenMenuArme()
                end
            end
            elseif #(pCoords2 - v.position) < 7.0 then
                activerfps = true
                DrawMarker(29, v.position, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0, 255, 0, 170, 1, 1, 2, 0, nil, nil, 0)
            end
        end
        if activerfps then
            Wait(1)
        else
            Wait(1500)
        end
    end
end)

------------------------------BLIPS

Citizen.CreateThread(function()

for _, info in pairs(Config.blips) do
  info.blip = AddBlipForCoord(info.x, info.y, info.z)
  SetBlipSprite(info.blip, info.id)
  SetBlipDisplay(info.blip, 4)
  SetBlipScale(info.blip, 0.7)
  SetBlipColour(info.blip, info.colour)
  SetBlipAsShortRange(info.blip, true)
  BeginTextCommandSetBlipName("STRING")
  AddTextComponentString(info.title)
  EndTextCommandSetBlipName(info.blip)
    end
end)

------------------------------CREATED BY BARWOZ------------------------------