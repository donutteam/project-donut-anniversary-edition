if Settings.HitAndRunMeterStyle == 1 then
	return
end

local IngameP3DFile = P3D.P3DFile("/GameData/art/frontend/scrooby/ingame.p3d")

local ChunkIndex

for index, chunk in IngameP3DFile:GetChunksIndexed(P3D.Identifiers.Sprite) do
    if chunk.Name == "radartop.png" then
        ChunkIndex = index
		
        break
    end
end

if not ChunkIndex then
    return
end

if Settings.HitAndRunMeterStyle == 2 then
	IngameP3DFile.Chunks[ChunkIndex] = RadarTopSprites["radartop_partially_obscured.png"]
elseif Settings.HitAndRunMeterStyle == 3 then
	IngameP3DFile.Chunks[ChunkIndex] = RadarTopSprites["radartop_fully_obscured.png"]
end

IngameP3DFile:Output()