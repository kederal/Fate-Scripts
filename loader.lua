
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
  vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
  wait(1)
  vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local ScriptURL = "https://raw.githubusercontent.com/Kederal/Fate-Scripts/main/SupportedGames/"

local SupportedGames = {
    [7788040584] = 'PetLegacy';
    [7728848215] = 'SlashingSimulator';
}

for i,v in next, SupportedGames do
if i == game.PlaceId or i == game.GameId then
loadstring(game:HttpGet(ScriptURL .. v .. '.lua'))()       
end
end
