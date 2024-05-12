local games = {
	[12229756] = 'https://api.luarmor.net/files/v3/loaders/2693a688362ddb52f452a288ea86ba89.lua', -- ALS
	[5292947] =  'https://api.luarmor.net/files/v3/loaders/5626ab81ffceae865d22d54cb5042edf.lua', -- ASTD
	[15022320] = 'https://api.luarmor.net/files/v3/loaders/5626ab81ffceae865d22d54cb5042edf.lua' -- TTD
}

if games[game.CreatorId] then
	loadstring(game:HttpGet(games[game.CreatorId]))()
end
