if not game:IsLoaded() then
	game.Loaded:Wait()
end

task.wait(math.random())

local games = {
	[12229756] = 'https://api.luarmor.net/files/v3/loaders/7dff74adc3b273513437b5e12dc00367.lua', -- ALS
	[32763927] = 'https://api.luarmor.net/files/v3/loaders/a53e36936ee27fdfb837b72aa51e249c.lua',
	[15022320] = 'https://api.luarmor.net/files/v3/loaders/07d71dd1339d9d813e40e938d824bdcc.lua',
	[5102326]  = 'https://api.luarmor.net/files/v3/loaders/ce64962ee176c33b012b9981c4b54b1a.lua', -- ACD
	[34121350] = 'https://api.luarmor.net/files/v3/loaders/b648cec51b1d83aab602bbee4e2a8c6f.lua',
	[15762744] = 'https://api.luarmor.net/files/v3/loaders/9eb613f19315ea532037342724839956.lua', -- SAD
	[33859442] = 'https://api.luarmor.net/files/v3/loaders/86705b45ce8eb099343bb031b35752ba.lua', -- Anime Royale
	[17219742] = 'https://api.luarmor.net/files/v3/loaders/d0ecf9415923932bced55c78dcc85cfe.lua', -- AV
	[10611639] = 'https://api.luarmor.net/files/v3/loaders/13e4fc9b822bc398db9ecbbd3d09bd8c.lua', -- AA
	[5292947]  = 'https://api.luarmor.net/files/v3/loaders/fc54289fa1b92a056bf6e9cf5f8bc08a.lua', -- ASTD X
}

local kaitun = {
	[10611639] = 'https://api.luarmor.net/files/v3/loaders/e9f7cc65adc4388b9ac8800707a834e3.lua', -- AA
}

local env = getgenv()
local creatorId = game.CreatorId

local MAX_ATTEMPTS = 5
local RETRY_DELAY = 10

local function isKaitunEnabled()
	return env.BuangKaitun
		or BuangKaitun
		or env.BUANG_KAITUN
		or BUANG_KAITUN
end

local function loadScript(url)
	local success, result = pcall(function()
		local source = game:HttpGet(url)
		local chunk = loadstring(source)

		assert(chunk, "Failed to compile script")
		return chunk()
	end)

	if not success then
		warn("[Loader] Failed:", result)
	end

	return success
end

local function getScriptUrl()
	if isKaitunEnabled() and kaitun[creatorId] then
		return kaitun[creatorId], "Kaitun"
	end

	return games[creatorId], "Default"
end

local scriptUrl, mode = getScriptUrl()

if not scriptUrl then
	warn("[Loader] No script configured for CreatorId:", creatorId)
	return
end

task.wait(math.random(1, 3))

for attempt = 1, MAX_ATTEMPTS do
	print(("[Loader] Loading %s script (attempt %d/%d)"):format(mode, attempt, MAX_ATTEMPTS))

	local ok = loadScript(scriptUrl)

	if ok and env.buanghub ~= nil then
		print("[Loader] " .. mode .. " script loaded successfully")
		break
	end

	if attempt < MAX_ATTEMPTS then
		task.wait(RETRY_DELAY)
	else
		warn("[Loader] Failed after " .. MAX_ATTEMPTS .. " attempts")
	end
end
