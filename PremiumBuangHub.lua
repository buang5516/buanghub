if not game:IsLoaded() then
	game.Loaded:Wait()
end

task.wait( math.random() )

local games = {
	[12229756] = 'https://api.luarmor.net/files/v3/loaders/7dff74adc3b273513437b5e12dc00367.lua', -- ALS
	[5292947] =  'https://api.luarmor.net/files/v3/loaders/eef1f2c7ccd0aaf83d95f052ef2e934a.lua',
	[32763927] = 'https://api.luarmor.net/files/v3/loaders/a53e36936ee27fdfb837b72aa51e249c.lua',
	[15022320] = 'https://api.luarmor.net/files/v3/loaders/07d71dd1339d9d813e40e938d824bdcc.lua',
	[5102326] = 'https://api.luarmor.net/files/v3/loaders/ce64962ee176c33b012b9981c4b54b1a.lua', -- ACD
	[34121350] = 'https://api.luarmor.net/files/v3/loaders/b648cec51b1d83aab602bbee4e2a8c6f.lua',
	[15762744] = 'https://api.luarmor.net/files/v3/loaders/9eb613f19315ea532037342724839956.lua', -- SAD
	[33859442] = 'https://api.luarmor.net/files/v3/loaders/86705b45ce8eb099343bb031b35752ba.lua', -- Anime Royale
	[17219742] = 'https://api.luarmor.net/files/v3/loaders/d0ecf9415923932bced55c78dcc85cfe.lua', -- AV
	[10611639] = 'https://api.luarmor.net/files/v3/loaders/13e4fc9b822bc398db9ecbbd3d09bd8c.lua' -- AA
}

pcall(function()
    if isfile("e9f7cc65adc4388b9ac8800707a834e3-cache.lua") then
        delfile("e9f7cc65adc4388b9ac8800707a834e3-cache.lua")
    end
end)

if games[game.CreatorId] then
	task.wait( math.random() )
	if game.CreatorId == 34121350 or game.CreatorId == 12229756 or game.CreatorId == 15762744 or game.CreatorId == 33859442 then
		print('Loaded')
		repeat 
			loadstring(game:HttpGet(games[game.CreatorId]))()
			task.wait(10)
		until getgenv().buanghub ~= nil;
	else
		loadstring(game:HttpGet(games[game.CreatorId]))()
	end
end
