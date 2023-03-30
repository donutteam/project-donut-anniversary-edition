--
-- Local Functions
--

local function LoadNamedChunksFromP3DFile(p3dFilePath, table, chunkIdentifier, newName)
    local p3dFile = P3D.P3DFile(p3dFilePath)

    for chunk in p3dFile:GetChunks(chunkIdentifier) do
        local originalName = chunk.Name

		if (newName ~= nil) then
			chunk.Name = newName
		end

        table[originalName] = chunk
    end
end

--
-- P3D Replacements
--

local P3DModifications =
{
	Frontend_Bootup =
	{
		ReplacedChunks = 
		{
			[P3D.Identifiers.Sprite] = {}
		},
	},

	Frontend_Frontend =
	{
		ReplacedChunks = 
		{
			[P3D.Identifiers.Sprite] = {}
		},
	},

	Frontend_Ingame =
	{
		ReplacedChunks = 
		{
			[P3D.Identifiers.Sprite] = {}
		},
	},

	Map_L1_I02 =
	{
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_SR1P =
	{
		RemovedChunkIndices =
		{
			-- l1_startline_Shape (Inst Stat Phys)
			20,

			-- l1_chevronanim_Shape (Anim Dyna Phys)
			21,
		},
	},

	Map_L1_TERRA =
	{
		AdditionalFiles =
		{
			GetModPath() .. "/Resources/art/locators/cards.p3d",
		},
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_R1 =
	{
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_R2 =
	{
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_R3 =
	{
		RemovedChunkIndices =
		{
			-- card13 Locator
			201,
		},
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_R4A =
	{
		RemovedChunkIndices =
		{
			-- card15 Locator
			109,
		},
	},

	Map_L1_R4B =
	{
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_R6 =
	{
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_R7 =
	{
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_Z1 =
	{
		RemovedChunkIndices =
		{
			-- card11 Locator
			153,

			-- card13 Locator
			154,
		},
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_Z2 =
	{
		RemovedChunkIndices =
		{
			-- card12 Locator
			262,
		},
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_Z3 =
	{
		RemovedChunkIndices =
		{
			-- card12 Locator
			262,
		},
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_Z4 =
	{
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_Z6 =
	{
		RemovedChunkIndices =
		{
			-- card16 Locator
			350,
		},
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},

	Map_L1_Z7 =
	{
		RemovedChunkIndices =
		{
			-- card17 Locator
			173,
		},
		ReplacedChunks =
		{
			[P3D.Identifiers.Texture] = {}
		},
	},
}

--
-- Error Icon Style Setting
--

local ErrorSprites = {}

LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/frontend/sprites/error.p3d", ErrorSprites, P3D.Identifiers.Sprite, "error.png")

if Settings.ErrorIconStyle == 1 then
	P3DModifications["Frontend_Bootup"].ReplacedChunks[P3D.Identifiers.Sprite]["error.png"] = ErrorSprites["error_pd.png"]
	P3DModifications["Frontend_Frontend"].ReplacedChunks[P3D.Identifiers.Sprite]["error.png"] = ErrorSprites["error_pd.png"]
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["error.png"] = ErrorSprites["error_pd.png"]
elseif Settings.ErrorIconStyle == 2 then
	P3DModifications["Frontend_Bootup"].ReplacedChunks[P3D.Identifiers.Sprite]["error.png"] = ErrorSprites["error_pdae.png"]
	P3DModifications["Frontend_Frontend"].ReplacedChunks[P3D.Identifiers.Sprite]["error.png"] = ErrorSprites["error_pdae.png"]
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["error.png"] = ErrorSprites["error_pdae.png"]
end

--
-- Level Theme Setting
--

if Settings.LevelTheme == 2 then
	local Textures = {}

	LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/textures/level-themes/autumn_v1.p3d", Textures, P3D.Identifiers.Texture)

	for textureName, texture in pairs(Textures) do
		P3DModifications.Map_L1_TERRA.ReplacedChunks[P3D.Identifiers.Texture][textureName] = texture
	end
elseif Settings.LevelTheme == 3 then
	local Textures = {}

	LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/textures/level-themes/autumn_v3.p3d", Textures, P3D.Identifiers.Texture)

	for textureName, texture in pairs(Textures) do
		P3DModifications.Map_L1_TERRA.ReplacedChunks[P3D.Identifiers.Texture][textureName] = texture
		P3DModifications.Map_L1_R6.ReplacedChunks[P3D.Identifiers.Texture][textureName] = texture
		P3DModifications.Map_L1_R7.ReplacedChunks[P3D.Identifiers.Texture][textureName] = texture
		P3DModifications.Map_L1_Z7.ReplacedChunks[P3D.Identifiers.Texture][textureName] = texture
	end
elseif Settings.LevelTheme == 4 then
	local Textures = {}

	LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/textures/level-themes/winter_v3.p3d", Textures, P3D.Identifiers.Texture)

	local SpecialSnowTextures =
	{
		{
			SourceTextureChunkName = "snow1.png",
			TargetTextureChunkNames =
			{
				"asphalt_norm.bmp",
				"Bridge_a.bmp",
				"Bridge_c.bmp",
				"Burns_garden_e.bmp",
				"Burns_interior_e.bmp",
				"bus_SIDEa.bmp",
				"bus_frontA.bmp",
				"bus_windowA.bmp",
				"bus_yel.bmp",
				"canopy_blu.bmp",
				"canopy_yellow.bmp",
				"car_wrecked_blue.bmp",
				"chim_A.bmp",
				"chim_B.bmp",
				"concrete.bmp",
				"DeskA.bmp",
				"dock.bmp",
				"ditch.BMP",
				"driveway.bmp",
				"driveway_dirt.BMP",
				"driveway_dirt.bmp",
				"driveway_dirt_entr.bmp",
				"field.bmp",
				"GreenBuildRoof.bmp",
				"garbage_iron.bmp",
				"grassC.BMP",
				"grassC.bmp",
				"green_shingle_old.bmp",
				"gry_corr_metal.bmp",
				"gry_found_drk_cool.bmp",
				"gry_found_light_cool.bmp",
				"junkpile_b.bmp",
				"LibraryWallC.bmp",
				"MalibyStacyRoofA.bmp",
				"Metalpole.bmp",
				"opt_grass_path.bmp",
				"path_sticks.bmp",
				"path_sticks_dark.bmp",
				"QuimbyEstatesWallB.bmp",
				"rd1_norm.bmp",
				"rd2_country.BMP",
				"rd2_crosswalk.bmp",
				"rd2_crosswalk_country.bmp",
				"rd2_norm.bmp",
				"rd2_parking.bmp",
				"rd2_striped.bmp",
				"red_roof_shingles.BMP",
				"SchoolWallC.bmp",
				"StonecutterslodgeTopWindow.bmp",
				"scarecrow.bmp",
				"sidewlk.bmp",
				"sidewlkA.bmp",
				"sdewlk_corner.bmp",
				"shrubRound.BMP",
				"shrubRound.bmp",
				"steps_conc.bmp",
				"street_lamp.bmp",
				"streetlampB.BMP",
				"streetlampC.BMP",
				"tele_pole.bmp",
				"Treetrunk_dead.bmp",
				"TreetrunkA.bmp",
				"TreetrunkB.bmp",
			},
		},
		{
			SourceTextureChunkName = "snow2.png",
			TargetTextureChunkNames =
			{
				"BrownBuildRoof.bmp",
				"dumpster.bmp",
				"firetruck.bmp",
				"Flandershouse_D.bmp",
				"Flandershouse_G.bmp",
				"gry_found_drk_wrm.bmp",
				"LardDuct.bmp",
				"Metal_roof_blue.bmp",
				"Metal_roof_red.bmp",
				"Pwrplnt_towers_b.bmp",
				"Pwrplnt_towers_c.bmp",
				"RoofF.bmp",
				"roof_A.bmp",
				"roof_d.bmp",
				"roof_F.bmp",
				"roof_gold.bmp",
				"Simpson_house_roof.bmp",
				"StonecutterslodgeRoof.bmp",
				"Wall_brown.BMP",
			},
		},
		{
			SourceTextureChunkName = "snow3.png",
			TargetTextureChunkNames =
			{
				"car_wrecked_yellow.BMP",
				"firetruck_sign.bmp",
				"hay.bmp",
				"kwiki21.bmp",
				"L7krust_roof.bmp",
				"MalibyStacyRoof.bmp",
				"Nelsons_roof.bmp",
				"roof_B.bmp",
				"roof_D.bmp",
				"streetlampC.bmp",
				"vehicle_semi.BMP",
			},
		},
	}

	local ReplacedTextureChunks = {}

	for k, SpecialSnowTexture in pairs(SpecialSnowTextures) do
		local SourceTextureChunk = Textures[SpecialSnowTexture.SourceTextureChunkName]

		for _, TargetTextureChunkName in pairs(SpecialSnowTexture.TargetTextureChunkNames) do
			local SourceTextureChunkClone = SourceTextureChunk:Clone()

			SourceTextureChunkClone.Name = TargetTextureChunkName

			ReplacedTextureChunks[TargetTextureChunkName] = SourceTextureChunkClone
		end
	end

	for textureName, texture in pairs(Textures) do
		ReplacedTextureChunks[textureName] = texture
	end

	P3DModifications.Map_L1_I02.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_TERRA.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_R1.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_R2.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_R3.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_R4B.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_R6.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_R7.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_Z1.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_Z2.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_Z3.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_Z4.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_Z6.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
	P3DModifications.Map_L1_Z7.ReplacedChunks[P3D.Identifiers.Texture] = ReplacedTextureChunks
end

--
-- Project Donut Billboard
--

local BillboardSignTextureName

if Settings.LevelTheme ~= 4 then
	BillboardSignTextureName = "project_donut.png"
else
	BillboardSignTextureName = "project_donut_winter.png"
end

local BillboardSignTextures = {}

LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/textures/billboard-signs.p3d", BillboardSignTextures, P3D.Identifiers.Texture)

local DontEatBeefTexture = BillboardSignTextures[BillboardSignTextureName]:Clone()

DontEatBeefTexture.Name = "Don't eat beef.bmp"

P3DModifications["Map_L1_R6"].ReplacedChunks[P3D.Identifiers.Texture]["Don't eat beef.bmp"] = DontEatBeefTexture

local EatDeerTexture = BillboardSignTextures[BillboardSignTextureName]:Clone()

EatDeerTexture.Name = "Eat deer.bmp"

P3DModifications["Map_L1_R6"].ReplacedChunks[P3D.Identifiers.Texture]["Eat deer.bmp"] = EatDeerTexture

--
-- Radar Style Setting
--

local RadarSprites = {}

LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/frontend/sprites/radar.p3d", RadarSprites, P3D.Identifiers.Sprite, "radar.png")

if Settings.RadarStyle == 1 then
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["radar.png"] = RadarSprites["radar_blue.png"]
elseif Settings.RadarStyle == 2 then
	-- Do Nothing
elseif Settings.RadarStyle == 3 then
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["radar.png"] = RadarSprites["radar_red.png"]
end

--
-- Radar Top Style Setting
--

local RadarTopSprites = {}

LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/frontend/sprites/radartop.p3d", RadarTopSprites, P3D.Identifiers.Sprite, "radartop.png")

if Settings.RadarTopStyle == 1 then
	-- Do Nothing
elseif Settings.RadarTopStyle == 2 then
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["radartop.png"] = RadarTopSprites["radartop_partially_obscured.png"]
elseif Settings.RadarTopStyle == 3 then
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["radartop.png"] = RadarTopSprites["radartop_fully_obscured.png"]
end

--
-- Remove Frontend TV Screen
--

if not Settings.ShowFrontendTVOverlay then
	local BlankSprites = {}

	LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/frontend/sprites/blank.p3d", BlankSprites, P3D.Identifiers.Sprite)

	local BlankSprite = BlankSprites["blank.png"]

	local TVFrameSprite = BlankSprite:Clone()

	TVFrameSprite.Name = "tvframe.png"

	P3DModifications["Frontend_Frontend"].ReplacedChunks[P3D.Identifiers.Sprite]["tvframe.png"] = TVFrameSprite

	local TVGlass1Sprite = BlankSprite:Clone()

	TVGlass1Sprite.Name = "tvglass1.png"

	P3DModifications["Frontend_Frontend"].ReplacedChunks[P3D.Identifiers.Sprite]["tvglass1.png"] = TVGlass1Sprite

	local TVGlass2Sprite = BlankSprite:Clone()

	TVGlass2Sprite.Name = "tvglass2.png"

	P3DModifications["Frontend_Frontend"].ReplacedChunks[P3D.Identifiers.Sprite]["tvglass2.png"] = TVGlass2Sprite
end

--
-- Skybox Setting
--

if Settings.Skybox == 2 then
	local Textures = {}

	LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/textures/skyboxes/level1_level4_hybrid.p3d", Textures, P3D.Identifiers.Texture)

	for textureName, texture in pairs(Textures) do
		P3DModifications.Map_L1_TERRA.ReplacedChunks[P3D.Identifiers.Texture][textureName] = texture
	end
end

--
-- Global Functions
--

function InjectP3DModifications(filePath, modificationsKey, outputToGame)
	--
	-- Default Options
	--

	if outputToGame == nil then
		outputToGame = true
	end

	--
	-- Load P3D File
	--

	local P3DFile = P3D.P3DFile(filePath)

	--
	-- Get Modifications
	--

	local p3dModifications = P3DModifications[modificationsKey]

	if p3dModifications == nil then
		return P3DFile
	end

	--
	-- Replace Chunks
	--

	for index, chunk in P3DFile:GetChunksIndexed(nil, true) do
		local RemovedChunkIndices = p3dModifications.RemovedChunkIndices

		if RemovedChunkIndices ~= nil then
			for _, removedChunkIndex in ipairs(RemovedChunkIndices) do
				local actualChunkIndex = index - 1

				if actualChunkIndex == removedChunkIndex then
					P3DFile:RemoveChunk(index)
				end
			end
		end

		if p3dModifications.ReplacedChunks ~= nil then
			local ReplacedChunks = p3dModifications.ReplacedChunks[chunk.Identifier]
	
			if ReplacedChunks ~= nil then
				local replacementChunk = ReplacedChunks[chunk.Name]
	
				if replacementChunk ~= nil then
					P3DFile.Chunks[index] = replacementChunk
				end
			end
		end
	end

	--
	-- Append Additional File Chunks
	--

	if p3dModifications.AdditionalFiles ~= nil then
		for _, additionalFilePath in ipairs(p3dModifications.AdditionalFiles) do
			local AdditionalP3DFile = P3D.P3DFile(additionalFilePath)

			for _, chunk in AdditionalP3DFile:GetChunksIndexed(nil, true) do
				P3DFile:AddChunk(chunk)
			end
		end
	end

	--
	-- Output P3D Data
	--

	if outputToGame then
		P3DFile:Output()
	end

	-- 
	-- Return P3D File
	--

	return P3DFile
end