local games = {
	[12229756] = 'https://raw.githubusercontent.com/buang5516/buanghub/main/animeLastStand.lua',
	[5292947] =  'https://raw.githubusercontent.com/buang5516/buanghub/main/allStarTowerDefense.lua',
	[32763927] = 'https://raw.githubusercontent.com/buang5516/buanghub/main/animeClash.lua'
}

if games[game.CreatorId] then
	loadstring(game:HttpGet(games[game.CreatorId]))()
end
