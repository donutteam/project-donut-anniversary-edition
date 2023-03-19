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
	Frontend_Ingame =
	{
		ReplacedChunks = 
		{
			[P3D.Identifiers.Sprite] = {}
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

	Map_L1_R3 =
	{
		RemovedChunkIndices =
		{
			-- card13 Locator
			201,
		},
	},

	Map_L1_R4A =
	{
		RemovedChunkIndices =
		{
			-- card15 Locator
			109,
		}
	},

	Map_L1_R6 =
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
	},

	Map_L1_Z2 =
	{
		RemovedChunkIndices =
		{
			-- card12 Locator
			262,
		},
	},

	Map_L1_Z6 =
	{
		RemovedChunkIndices =
		{
			-- card16 Locator
			350,
		},
	},

	Map_L1_Z7 =
	{
		RemovedChunkIndices =
		{
			-- card17 Locator
			173,
		},
	},
}

--
-- Collector Cards
--

--
-- Error Icon Style Setting
--

local ErrorSprites = {}

LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/frontend/sprites/error.p3d", ErrorSprites, P3D.Identifiers.Sprite, "error.png")

if Settings.ErrorIconStyle == 1 then
	P3DModifications["Frontend_Bootup"].ReplacedChunks[P3D.Identifiers.Sprite]["error.png"] = ErrorSprites["error_pink_donut.png"]
	P3DModifications["Frontend_Ingame"].ReplacedChunks[P3D.Identifiers.Sprite]["error.png"] = ErrorSprites["error_pink_donut.png"]
elseif Settings.ErrorIconStyle == 2 then
	-- TODO: Replace with Tyler's Icon
elseif Settings.ErrorIconStyle == 3 then
	-- Do Nothing
end

--
-- Level Theme Setting
--

if Settings.LevelTheme == 2 then
	local Textures = {}

	LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/textures/level-themes/autumn.p3d", Textures, P3D.Identifiers.Texture)

	for textureName, texture in pairs(Textures) do
		P3DModifications.Map_L1_TERRA.ReplacedChunks[P3D.Identifiers.Texture][textureName] = texture
	end
end

--
-- Project Donut Billboard
--

local BillboardSignTextures = {}

LoadNamedChunksFromP3DFile(GetModPath() .. "/Resources/art/textures/billboard-signs.p3d", BillboardSignTextures, P3D.Identifiers.Texture)

local DontEatBeefTexture = BillboardSignTextures["project_donut.png"]:Clone()

DontEatBeefTexture.Name = "Don't eat beef.bmp"

P3DModifications["Map_L1_R6"].ReplacedChunks[P3D.Identifiers.Texture]["Don't eat beef.bmp"] = DontEatBeefTexture

local EatDeerTexture = BillboardSignTextures["project_donut.png"]:Clone()

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
-- Global Functions
--

function InjectP3DModifications(filePath, modificationsKey)
	--
	-- Load P3D File
	--

	local P3DFile = P3D.P3DFile(filePath)

	--
	-- Get Modifications
	--

	local p3dModifications = P3DModifications[modificationsKey]

	if p3dModifications == nil then
		return
	end

	--
	-- Replace Chunks
	--

	for index, chunk in P3DFile:GetChunksIndexed(nil, true) do
		local RemovedChunkIndices = p3dModifications.RemovedChunkIndices

		if RemovedChunkIndices ~= nil then

			for _, removedChunkIndex in ipairs(RemovedChunkIndices) do
				if index == removedChunkIndex then
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

	P3DFile:Output()
end