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

local AccessoireMenu = false

local accessoire = RageUI.CreateMenu("Accessoire(s)", "Nos Article(s)", 10 , 80)
accessoire.Closed = function() AccessoireMenu = false end 

function OpenMenuAccessoire()
    if AccessoireMenu then
        AccessoireMenu = false
    else
        AccessoireMenu = true
    RageUI.Visible(accessoire, true)
        CreateThread(function()
            while AccessoireMenu do
                Wait(1)
                RageUI.IsVisible(accessoire, function()

                    RageUI.Separator('~p~↓~s~ Accessoire(s) ~p~↓~s~')

                    RageUI.Button("Chargeur", nil, {RightLabel = "~p~500$~s~"}, true , {
                        onSelected = function()
                            TriggerServerEvent('barwoz:chargeur')
                        end
                    })

                    RageUI.Button("Lampe Armes", nil, {RightLabel = "~p~700$~s~"}, true , {
                        onSelected = function()
                            TriggerServerEvent('barwoz:lampepistol')
                        end
                    })

                    RageUI.Button("Skin De Luxe", nil, {RightLabel = "~p~2500$~s~"}, true , {
                        onSelected = function()
                            TriggerServerEvent('barwoz:skindeluxe')
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
        for _,v in pairs(Config.accessoire) do
            if #(pCoords2 - v.position) < 1.5 then
                activerfps = true
                Visual.Subtitle("Appuyer sur ~p~[E]~s~ pour accéder aux ~p~Accessoires~s~ !")
            if AccessoireMenu == false then
                if IsControlJustReleased(0, 38) then
                    OpenMenuAccessoire()
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

------------------------------CREATED BY BARWOZ------------------------------