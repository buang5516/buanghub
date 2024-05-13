local games = {
	[12229756] = 'https://api.luarmor.net/files/v3/loaders/7dff74adc3b273513437b5e12dc00367.lua',
	[5292947] =  'https://api.luarmor.net/files/v3/loaders/eef1f2c7ccd0aaf83d95f052ef2e934a.lua',
	[32763927] = 'https://api.luarmor.net/files/v3/loaders/a53e36936ee27fdfb837b72aa51e249c.lua',
	[15022320] = 'https://api.luarmor.net/files/v3/loaders/07d71dd1339d9d813e40e938d824bdcc.lua',
	[5102326] = 'https://api.luarmor.net/files/v3/loaders/52b19e8a5a7d820a6eada6ac0242d2b2.lua'
}

if games[game.CreatorId] then
	loadstring(game:HttpGet(games[game.CreatorId]))()
end
