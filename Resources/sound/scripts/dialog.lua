local FileName = GetFileName(GetPath())

local OriginalSoundScript = ReadFile("/GameData/sound/scripts/" .. FileName)

Output(OriginalSoundScript)

local SoundResources =
{
	"P_HitByW_Lor_ohone.ogg",
	"P_HitByW_Lor_ohthree.ogg",
	"P_HitByW_Lor_ohtwo.ogg",
	"P_HitByW_Lor_ow.ogg",
	"W_Idlereply_Lor_dense.ogg",
	"W_Idlereply_Lor_intro.ogg",
	"W_Idlereply_Lor_spiders.ogg",	
}

for index = 1, #SoundResources do
	local SoundResource = SoundResources[index]

	Output(
	[[
		create daSoundResourceData named ]] .. SoundResource .. [[
		{
			AddFilename ( "sound/dialog/]] .. SoundResource .. [[" 1.000000 )
			SetStreaming ( true )
		}
	]])
end