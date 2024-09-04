if not game:IsLoaded() then
  game.Loaded:Wait()
end

task.wait( math.random() )

local games = {
    [33859442] = 'https://api.luarmor.net/files/v3/loaders/e211d81f5139290b3ca47d3679b3f176.lua' -- Anime Royale
}

if games[game.CreatorId] ~= nil and script_key ~= nil then
  task.wait( math.random() )
  repeat
    loadstring(game:HttpGet( games[game.CreatorId] ))()
    task.wait(10)
  until getgenv().buanghub ~= nil;
end
