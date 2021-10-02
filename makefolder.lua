--[[

THIS SCRIPT LOADS SAVED SETTINGS FOR GET THE SETTINGS YOU WANTED.

--]]

AdvancedHubFolderClient = {SavedSettings = false}
if isfolder and makefolder and not isfolder('AdvancedHub') then
    makefolder('AdvancedHub')
    DarkHub_Client.SaveSettings = true
    if isfile('AdvancedHub/AdvancedHub_'..tostring(Game.PlaceId)..'.AH') then
        AdvancedHubFolderClient.SavedSettings = true
        AdvancedHubFolderClient.GameSettings = game:GetService('HttpService'):JSONDecode(readfile('AdvancedHub/AdvancedHub_'..tostring(Game.PlaceId)..'.AH'))
    end
elseif isfolder('AdvancedHub') then
    DarkHub_Client.SaveSettings = true
    if isfile('AdvancedHub/AdvancedHub_'..tostring(Game.PlaceId)..'.AH') then
        AdvancedHubFolderClient.SavedSettings = true
        AdvancedHubFolderClient.GameSettings = game:GetService('HttpService'):JSONDecode(readfile('AdvancedHub/AdvancedHub_'..tostring(Game.PlaceId)..'.AH'))
    end
else
    DarkHub_Client.SaveSettings = false
end
