repeat
  task.wait()
until game:IsLoaded() == true

if game:IsLoaded() then
	pcall(function()
		for _, v in pairs(game:GetService("Workspace"):FindFirstChild("__THINGS"):GetChildren()) do
			if table.find({"ShinyRelics", "Ornaments", "Instances", "Ski Chairs"}, v.Name) then
				v:Destroy()
			end
		end

		for _, v in pairs(game:GetService("Workspace"):FindFirstChild("__THINGS").__INSTANCE_CONTAINER.Active.AdvancedFishing:GetChildren()) do
			if string.find(v.Name, "Model") or string.find(v.Name, "Water") or string.find(v.Name, "Debris") or string.find(v.Name, "Interactable") then
				v:Destroy()
			end

			if v.Name == "Map" then
				for _, v in pairs(v:GetChildren()) do
					if v.Name ~= "Union" then
						v:Destroy()
					end
				end
			end
		end

		game:GetService("Workspace"):WaitForChild("ALWAYS_RENDERING"):Destroy()
	end)

	local Workspace = game:GetService("Workspace")
	local Terrain = Workspace:WaitForChild("Terrain")
	Terrain.WaterReflectance = 0
	Terrain.WaterTransparency = 1
	Terrain.WaterWaveSize = 0
	Terrain.WaterWaveSpeed = 0

	local Lighting = game:GetService("Lighting")
	Lighting.Brightness = 0
	Lighting.GlobalShadows = false
	Lighting.FogEnd = 9e100
	Lighting.FogStart = 0

	sethiddenproperty(Lighting, "Technology", 2)
	sethiddenproperty(Terrain, "Decoration", false)

	local function clearTextures(v)
		if v:IsA("BasePart") and not v:IsA("MeshPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
			v.Transparency = 1
		elseif (v:IsA("Decal") or v:IsA("Texture")) then
			v.Transparency = 1
		elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
			v.Lifetime = NumberRange.new(0)
		elseif v:IsA("Explosion") then
			v.BlastPressure = 1
			v.BlastRadius = 1
		elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
			v.Enabled = false
		elseif v:IsA("MeshPart") then
			v.Material = "Plastic"
			v.Reflectance = 0
			v.TextureID = 10385902758728957
		elseif v:IsA("SpecialMesh")  then
			v.TextureId = 0
		elseif v:IsA("ShirtGraphic") then
			v.Graphic = 1
		elseif (v:IsA("Shirt") or v:IsA("Pants")) then
			v[v.ClassName .. "Template"] = 1
		elseif v.Name == "Foilage" and v:IsA("Folder") then
			v:Destroy()
		elseif string.find(v.Name, "Tree") or string.find(v.Name, "Water") or string.find(v.Name, "Bush") or string.find(v.Name, "grass") then
			task.wait()
			v:Destroy()
		end
	end

	game:GetService("Lighting"):ClearAllChildren()

	for _, v in pairs(Workspace:GetDescendants()) do
		clearTextures(v)
	end

	Workspace.DescendantAdded:Connect(function(v)
		clearTextures(v)
	end)

	for _, v in pairs(game.Players:GetChildren()) do
		for _, v2 in pairs(v.Character:GetDescendants()) do
			if v2:IsA("BasePart") or v2:IsA("Decal") then
				v2.Transparency = 1
			end
		end
	end

	game.Players.PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(function(character)
			for _, v in pairs(character:GetDescendants()) do
				if v:IsA("BasePart") or v:IsA("Decal") then
					v.Transparency = 1
				end
			end
		end)
	end)

	for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetChildren()) do
		if v:IsA("ScreenGui") then
			v.Enabled = false
		end
	end

	for i, v in pairs(game:GetService("StarterGui"):GetChildren()) do
		if v:IsA("ScreenGui") then
			v.Enabled = false
		end
	end

	for i, v in pairs(game:GetService("CoreGui"):GetChildren()) do
		if v:IsA("ScreenGui") then
			v.Enabled = false
		end
	end
	setfpscap(8)
end	
