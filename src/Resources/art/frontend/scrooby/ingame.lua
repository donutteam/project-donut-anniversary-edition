local P3DFile = InjectP3DModifications("/GameData/art/frontend/scrooby/ingame.p3d", "Frontend_Ingame", false)

local FrontendProjectChunk = P3DFile:GetChunk(P3D.Identifiers.Frontend_Project)

for P3DChunk in FrontendProjectChunk:GetChunks(P3D.Identifiers.Frontend_Page) do
	if P3DChunk.Name == "PhoneBooth.pag" then
		P3DChunk:AddChunk(P3D.FrontendPure3DResourceP3DChunk("3Dmodel", 1, "pure3d\\_stubs\\dummy.p3d", "dummy", "Pedestal_Camera", ""))
		P3DChunk:AddChunk(P3D.FrontendPure3DResourceP3DChunk("phonebg", 1, "pure3d\\_stubs\\dummy.p3d", "dummy", "Pedestal_Camera", ""))
		P3DChunk:AddChunk(P3D.FrontendPure3DResourceP3DChunk("rewardfg", 1, "pure3d\\rewardfg.p3d", "PurchaseScene", "Pedestal_Camera", ""))
		
		local FrontendGroupChunk = P3D.FrontendGroupP3DChunk("3DModel", 0, 255)
		
		FrontendGroupChunk:AddChunk(P3D.FrontendPure3DObjectP3DChunk("RewardBG", 1,
			{
				X = 29,
				Y = 145,
			},
			{
				X = 400,
				Y = 300,
			},
			{
				X = P3D.FrontendPure3DObjectP3DChunk.Justifications.Left,
				Y = P3D.FrontendPure3DObjectP3DChunk.Justifications.Top,
			},
			{
				A=255,
				R=255,
				G=255,
				B=255,
			},
			0,
			0,
			"phonebg"))

		FrontendGroupChunk:AddChunk(P3D.FrontendPure3DObjectP3DChunk("RewardFG", 1,
			{
				X=29,
				Y=145,
			},
			{
				X=400,
				Y=300,
			},
			{
				X = P3D.FrontendPure3DObjectP3DChunk.Justifications.Left,
				Y = P3D.FrontendPure3DObjectP3DChunk.Justifications.Top,
			},
			{
				A = 255,
				R = 255,
				G = 255,
				B = 255,
			},
			0,
			0,
			"rewardfg"))

		FrontendGroupChunk:AddChunk(P3D.FrontendPure3DObjectP3DChunk("PreviewWindow", 1,
			{
				X=29,
				Y=145,
			},
			{
				X=400,
				Y=300,
			},
			{
				X = P3D.FrontendPure3DObjectP3DChunk.Justifications.Left,
				Y = P3D.FrontendPure3DObjectP3DChunk.Justifications.Top,
			},
			{
				A = 255,
				R = 255,
				G = 255,
				B = 255,
			},
			0,
			0,
			"3Dmodel"))
		
		local FrontendLayerChunk = P3DChunk:GetChunk(P3D.Identifiers.Frontend_Layer)
	
		FrontendLayerChunk:AddChunk(FrontendGroupChunk, #FrontendLayerChunk.Chunks - 2)
		
		break
	end
end

P3DFile:Output()