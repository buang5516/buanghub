if not game:IsLoaded() then
	game.Loaded:Wait()
end

task.wait( math.random() )

local games = {
	[12229756] = 'https://api.luarmor.net/files/v3/loaders/223ebf430943b6eeb6b81a550e5dcb52.lua', -- ALS
	[5292947] =  'https://api.luarmor.net/files/v3/loaders/5626ab81ffceae865d22d54cb5042edf.lua', -- ASTD
	[15022320] = 'https://api.luarmor.net/files/v3/loaders/5626ab81ffceae865d22d54cb5042edf.lua', -- TTD
	[5102326] = 'https://api.luarmor.net/files/v3/loaders/1b4c42f5913d7a5b7be56ee7766eb814.lua', -- ACD
	[34121350] = 'https://api.luarmor.net/files/v3/loaders/1b4c42f5913d7a5b7be56ee7766eb814.lua', -- AD
	[15762744] = 'https://api.luarmor.net/files/v3/loaders/b1b345a5367607ec2c5ee64e9abb4783.lua', -- SAD
	[33859442] = 'https://raw.githubusercontent.com/buang5516/buanghub/main/BuangHub.lua' -- AR
}

if games[game.CreatorId] then
	task.wait( math.random() )
	if game.CreatorId == 34121350 or game.CreatorId == 12229756 or game.CreatorId == 15762744 then
		print("Loaded")
		repeat
			loadstring(game:HttpGet(games[game.CreatorId]))()
			task.wait(10)
		until getgenv().buanghub ~= nil or getgenv().buang_key ~= nil;
	else
		loadstring(game:HttpGet(games[game.CreatorId]))()
	end
end
