--
-- Get Settings
--

Settings = GetSettings()

--
-- Settings Info Message
--

if Settings.ShowSettingsInfoMessage then
	Alert("Project Donut: Anniversary Edition is highly configurable, we encourage you to peruse the mod's settings in the Mod Launcher at least once to customise your experience!\n\nNote: You can also turn off this message there by unchecking \"Show Settings Info Message on Startup\".")
end

--
-- Imports
--

dofile(GetModPath() .. "/Resources/modules/Game.lua")
dofile(GetModPath() .. "/Resources/modules/P3D2.lua")

P3D.LoadChunks(GetModPath() .. "/Resources/modules/P3DChunks")

dofile(GetModPath() .. "/Resources/scripts/data/HitAndRunCarModel.lua")
dofile(GetModPath() .. "/Resources/scripts/data/P3DModifications.lua")