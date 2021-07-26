--print("asdfsa")
RegisterNetEvent('thedoc:dropplayer')
AddEventHandler('thedoc:dropplayer', function()
    print(source)
    local _source = source
    print(source, _source)
    DropPlayer(_source, "Incorrect Password")
end)