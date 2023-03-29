-- About 1500 Coins Obtainable in Level 1

Game.BindReward("famil_v",   "art\\cars\\famil_v.p3d",     "car", "defaultcar",   1)
Game.BindReward("cletu_v",   "art\\cars\\cletu_v.p3d",     "car", "bonusmission", 1)
Game.BindReward("elect_v",   "art\\cars\\elect_v.p3d",     "car", "streetrace",   1)
Game.BindReward("plowk_v",   "art\\cars\\plowk_v.p3d",     "car", "forsale",      1, 150 * Settings.RewardPriceMultiplier, "simpson")
Game.BindReward("cDuff",     "art\\cars\\cDuff.p3d",       "car", "forsale",      1, 100 * Settings.RewardPriceMultiplier, "gil")
Game.BindReward("cVan",      "art\\cars\\cVan.p3d", 	   "car", "forsale",      1, 100 * Settings.RewardPriceMultiplier, "gil")

Game.BindReward("cBone",     "art\\cars\\cBone.p3d",       "car", "forsale",      1, 100 * Settings.RewardPriceMultiplier, "gil")
Game.BindReward("rocke_v",   "art\\cars\\rocke_v.p3d",     "car", "forsale",      1, 100 * Settings.RewardPriceMultiplier, "gil")
Game.BindReward("donut_v",   "art\\cars\\donut_v.p3d",     "car", "forsale",      1, 100 * Settings.RewardPriceMultiplier, "gil")

Game.BindReward("homer",     "art\\chars\\homer_m.p3d",    "skin", "defaultskin", 1)

Game.BindReward("h_undrwr",  "art\\chars\\h_undr_m.p3d",   "skin", "forsale",     1, 100 * Settings.RewardPriceMultiplier, "interior")
Game.BindReward("h_fat",     "art\\chars\\h_fat_m.p3d",    "skin", "forsale",     1, 100 * Settings.RewardPriceMultiplier, "interior")
Game.BindReward("h_stcrobe", "art\\chars\\h_stcr_m.p3d",   "skin", "forsale",     1, 100 * Settings.RewardPriceMultiplier, "interior")
Game.BindReward("h_scuzzy",  "art\\chars\\h_scuz_m.p3d",   "skin", "forsale",     1, 100 * Settings.RewardPriceMultiplier, "interior")
Game.BindReward("h_evil",    "art\\chars\\h_evil_m.p3d",   "skin", "forsale",     1, 100 * Settings.RewardPriceMultiplier, "interior")
Game.BindReward("h_donut",   "art\\chars\\h_donu_m.p3d",   "skin", "forsale",     1, 100 * Settings.RewardPriceMultiplier, "interior")

Game.BindReward("h_dt2",     "art\\chars\\h_dt2_m.p3d",    "skin", "forsale",     1, 100 * Settings.RewardPriceMultiplier, "interior")
Game.BindReward("h_work",    "art\\chars\\h_work_m.p3d",   "skin", "forsale",     1, 100 * Settings.RewardPriceMultiplier, "interior")

--                               Top Speed   Acceleration   Toughness   Handling
Game.SetCarAttributes("famil_v", 1.0,        1.5,           2.5,        4.0)
Game.SetCarAttributes("cletu_v", 1.0,        1.0,           3.5,        2.5)
Game.SetCarAttributes("elect_v", 2.0,        1.5,           1.5,        4.0)
Game.SetCarAttributes("plowk_v", 1.5,        0.5,           5.0,        1.5)
Game.SetCarAttributes("cDuff",   0.5,        0.5,           4.0,        1.0)
Game.SetCarAttributes("cVan",    1.5,        1.5,           3.5,        3.0)

Game.SetCarAttributes("cBone",   0.5,        0.5,           4.0,        1.0)
Game.SetCarAttributes("rocke_v", 5.0,        5.0,           0.5,        1.0)
Game.SetCarAttributes("donut_v", 1.0,        1.5,           2.5,        4.0)

Game.SetTotalGags(1, 16)
Game.SetTotalWasps(1, 40)