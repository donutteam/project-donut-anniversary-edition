local FileName = GetFileName(GetPath())

local OriginalSoundScript = ReadFile("/GameData/sound/scripts/" .. FileName)

Output(OriginalSoundScript)

-- Note: No longer including file extensions here
--  	It now always outputs ".rsd" which will get redirected by the hack
--  	To whatever format is actually provided (OGG in this case)
--
--	This just makes the daSoundResourceData names less gross
local SoundResources =
{
	"W_Idlereply_Add_card",
	"W_Idlereply_Add_exit",
	"W_Idlereply_Add_fishtank",
	"W_Idlereply_Add_mission",

	"W_Idlereply_Jef_intro",
	"W_Idlereply_Jef_phys",
	"W_Idlereply_Jef_tool",

	"P_HitByW_Jke_ohheavens",
	"P_HitByW_Jke_ow",
	"W_Idlereply_Jke_burp",
	"W_Idlereply_Jke_kick",
	"W_Idlereply_Jke_missme",
	"W_Idlereply_Jke_mpbq",
	"W_Idlereply_Jke_pizza",
	"W_Idlereply_Jke_vape",
	"W_Idlereply_Jke_wonder",

	"P_HitByW_Lor_marge",
	"P_HitByW_Lor_ohone",
	"P_HitByW_Lor_ohthree",
	"P_HitByW_Lor_ohtwo",
	"P_HitByW_Lor_ow",
	"P_HitByW_Lor_police",
	"W_Idlereply_Lor_dense",
	"W_Idlereply_Lor_intro",
	"W_Idlereply_Lor_spiders",	

	"W_Idlereply_Sol_bestmod",
	"W_Idlereply_Sol_cmilk",
	"W_Idlereply_Sol_snapshot",
}

for index = 1, #SoundResources do
	local SoundResource = SoundResources[index]

	Output(
	[[
		create daSoundResourceData named ]] .. SoundResource .. [[
		{
			AddFilename ( "sound/dialog/]] .. SoundResource .. [[.rsd" 1.000000 )
			SetStreaming ( true )
		}
	]])
end
