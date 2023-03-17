local OriginalCarSoundScript = ReadFile("/GameData/sound/scripts/carsound.spt")

Output(OriginalCarSoundScript)

Output(
[[
	create daSoundResourceData named waspbike
	{
		AddFilename ( "sound/carsound/waspbike.rsd" 1.000000 )
		SetLooping ( true )
		SetStreaming ( true )
		SetTrim ( 1.000000 )
	}
	create daSoundResourceData named waspbike_horn
	{
		AddFilename ( "sound/carsound/waspbike_horn.rsd" 1.000000 )
		AddFilename ( "sound/carsound/waspbike_horn2.rsd" 1.000000 )
		AddFilename ( "sound/carsound/waspbike_horn3.rsd" 1.000000 )
		SetLooping ( false )
		SetStreaming ( true )
		SetTrim ( 1.000000 )
	}
]])