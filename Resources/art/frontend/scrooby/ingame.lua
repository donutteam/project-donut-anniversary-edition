local IngameChunkReplacements = P3DChunkReplacements["art//frontend//scrooby//ingame.p3d"]

local IngameP3DFile = P3D.P3DFile("/GameData/art/frontend/scrooby/ingame.p3d")

for index, chunk in IngameP3DFile:GetChunksIndexed(P3D.Identifiers.Sprite) do
	if IngameChunkReplacements[chunk.Name] then
		IngameP3DFile.Chunks[index] = IngameChunkReplacements[chunk.Name]
	end
end

IngameP3DFile:Output()