--
-- Get Settings
--

Settings = GetSettings()

--
-- Imports
--

dofile(GetModPath() .. "/Resources/modules/Game.lua")
dofile(GetModPath() .. "/Resources/modules/P3D2.lua")

P3D.LoadChunks(GetModPath() .. "/Resources/modules/P3DChunks")

dofile(GetModPath() .. "/Resources/scripts/data/HitAndRunCarModel.lua")
dofile(GetModPath() .. "/Resources/scripts/data/P3DChunkReplacements.lua")