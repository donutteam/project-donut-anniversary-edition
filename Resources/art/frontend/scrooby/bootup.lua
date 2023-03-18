local ChunkReplacements = P3DChunkReplacements["art//frontend//scrooby//bootup.p3d"]

local P3DFile = P3D.P3DFile("/GameData/art/frontend/scrooby/bootup.p3d")

for index, chunk in P3DFile:GetChunksIndexed(P3D.Identifiers.Sprite) do
	if ChunkReplacements[chunk.Name] then
		P3DFile.Chunks[index] = ChunkReplacements[chunk.Name]
	end
end

P3DFile:Output()