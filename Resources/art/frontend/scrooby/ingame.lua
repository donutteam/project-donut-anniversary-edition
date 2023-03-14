if Settings.HitAndRunMeterStyle == 1 then
	Redirect("/GameData/art/frontend/scrooby/ingame_hnrm_normal.p3d")
elseif Settings.HitAndRunMeterStyle == 2 then
	Redirect("/GameData/art/frontend/scrooby/ingame_hnrm_partially_obscured.p3d")
elseif Settings.HitAndRunMeterStyle == 3 then
	Redirect("/GameData/art/frontend/scrooby/ingame_hnrm_fully_obscured.p3d")
end