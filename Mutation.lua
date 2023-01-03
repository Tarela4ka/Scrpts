local food = "Bitterberry"
local Event = game:GetService("ReplicatedStorage").Events.ConstructHiveCellFromEgg
local rares = {}
rares.Attack = tostring(Color3.fromRGB(232,58,54))
rares.AbilityRate = tostring(Color3.fromRGB(184,165,237))
rares.GatherAmount = tostring(Color3.fromRGB(175,255,134))
rares.ConvertAmount = tostring(Color3.fromRGB(254,202,65))
rares.Energy = tostring(Color3.fromRGB(138, 187, 213))
local W = game:GetService("Players").LocalPlayer.Honeycomb.Value

Event:InvokeServer(tonumber(_G.Coordinates.Right), tonumber(_G.Coordinates.Up), "Neonberry", 1, false)
                                            
repeat 
    Event:InvokeServer(tonumber(_G.Coordinates.Right), tonumber(_G.Coordinates.Up), food, _G.Amount, false)
    local mama = tostring(W.Cells["C"..tonumber(_G.Coordinates.Right)..","..tonumber(_G.Coordinates.Up)].LevelPart.SurfaceGui.TextLabel.TextColor3)
    task.wait(.5)
until (mama == rares[_G.RollForMutation]) or (mama == rares["AbilityRate"])
