local pass = false
local attempts = 0
local tiempo = 30

AddEventHandler('playerSpawned', function() -- Triggered when a player is spawned
    while true do
        if pass == true then
            break 
        else 
            TriggerEvent('chat:addMessage', {
                color = { 255, 0, 0},
                multiline = true,
                args = {"Development", "Type the password: "}
              })
              tiempo = tiempo - 1
        end
        if tiempo <= 1 then
            TriggerServerEvent('thedoc:dropplayer')
        end
        Wait(1000)
    end
    
end)

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
    while true do
        if pass == true then
            break 
        else 
            TriggerEvent('chat:addMessage', {
                color = { 255, 0, 0},
                multiline = true,
                args = {"Development", "Type the password: "}
              })
              tiempo = tiempo - 1
        end
        if tiempo <= 1 then
            TriggerServerEvent('thedoc:dropplayer')
        end
        Wait(1000)
    end
    
  end)
  
  


RegisterCommand("pass", function(source, args)
    local args = args[1]
    if args == config.Pass then
        print("login")
        pass = true
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0},
            multiline = true,
            args = {"Development", "Welcome Dev!"}
          })
    else    
        attempts = attempts + 1
        print(attempts)
        if attempts == 3 then
            print("dropping")
            TriggerServerEvent('thedoc:dropplayer')
            
        end
    end
end)