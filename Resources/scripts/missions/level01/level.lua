Game.AddMission("m0");
Game.AddMission("m1");
Game.AddMission("m2");
Game.AddMission("m3");
Game.AddMission("m4");
Game.AddMission("m5");
Game.AddMission("m6");
Game.AddMission("m7");
Game.AddMission("m8");
Game.AddBonusMission("sr1");
Game.AddBonusMission("sr2");
Game.AddBonusMission("sr3");
Game.AddBonusMission("gr1");
Game.AddBonusMission("bm1");

Game.LoadDisposableCar("art\\cars\\famil_v.p3d", "famil_v", "DEFAULT");

Game.LoadP3DFile("art\\cards.p3d");
Game.LoadP3DFile("art\\l01_fx.p3d", "GMA_LEVEL_OTHER");
Game.LoadP3DFile("art\\phonecamera.p3d");
Game.LoadP3DFile("art\\wrench.p3d");

Game.LoadP3DFile("art\\cars\\cPolice.p3d");
Game.LoadP3DFile("art\\cars\\glastruc.p3d");
Game.LoadP3DFile("art\\cars\\huskA.p3d");
Game.LoadP3DFile("art\\cars\\minivanA.p3d");
Game.LoadP3DFile("art\\cars\\pickupA.p3d");
Game.LoadP3DFile("art\\cars\\nuctruck.p3d");
Game.LoadP3DFile("art\\cars\\schoolbu.p3d");

Game.LoadP3DFile("art\\chars\\homer_kickwave.p3d");
Game.LoadP3DFile("art\\chars\\homer_electrocuted.p3d");

Game.LoadP3DFile("art\\missions\\generic\\missgen.p3d");
Game.LoadP3DFile("art\\missions\\generic\\sim_door.p3d");

Game.LoadP3DFile("art\\missions\\level01\\jumps.p3d");
Game.LoadP3DFile("art\\missions\\level01\\l1_doors.p3d");
Game.LoadP3DFile("art\\missions\\level01\\level.p3d");
Game.LoadP3DFile("art\\missions\\level01\\wasps.p3d");

Game.ClearGagBindings();

Game.GagBegin("gag_s5.p3d");
	Game.GagSetInterior("SimpsonsHouse");
	Game.GagSetCycle("cycle");
	Game.GagSetPosition(500.196, -20, -400.579);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_s5"); 
	Game.GagSetTrigger("touch", 496.942, -19.341, -394, 6.0);
Game.GagEnd();
     
Game.GagBegin("gag_s1.p3d");
	Game.GagSetInterior("SimpsonsHouse");
	Game.GagSetCycle("single");
	Game.GagSetPosition(500.196, -20, -400.579);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_s1");    
	Game.GagSetTrigger("touch", 496.942, -19.341, -394, 2.0);
Game.GagEnd();
     
Game.GagBegin("gag_s2.p3d");
	Game.GagSetInterior("SimpsonsHouse");
	Game.GagSetCycle("single");
	Game.GagSetPosition(500.196, -20, -400.579);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_s2");
	Game.GagSetTrigger("touch", 496.942, -19.341, -394, 2.0);
Game.GagEnd();
             
Game.GagBegin("gag_s3.p3d");
	Game.GagSetInterior("SimpsonsHouse");
	Game.GagSetCycle("single");
	Game.GagSetPosition(500.196, -20, -400.579);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_s3");   
	Game.GagSetTrigger("touch", 496.942, -19.341, -394, 2.0);
Game.GagEnd();
   
Game.GagBegin("gag_s4.p3d");
	Game.GagSetInterior("SimpsonsHouse");
	Game.GagSetCycle("single");
	Game.GagSetPosition(500.196  ,-20 ,-400.579 );
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_s4");   
	Game.GagSetTrigger("touch", 496.942 , -19.341 , -394 ,  2.0 );
Game.GagEnd();
     
Game.GagBegin("gag_s_m1.p3d");
	Game.GagSetInterior("SimpsonsHouse");
	Game.GagSetCycle("single");
	Game.GagSetPosition(500.292, -20, -400.751);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_s_m1");
	Game.GagSetTrigger("touch", 496.942, -19.341, -394, 2.0);
Game.GagEnd();
              
Game.GagBegin("gag_s_m2.p3d");
	Game.GagSetInterior("SimpsonsHouse");
	Game.GagSetCycle("cycle");
	Game.GagSetPosition(500.292, -20.2, -400.751);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_s_m2");
	Game.GagSetTrigger("touch", 496.942, -19.341, -394, 2.0);
Game.GagEnd();

Game.GagBegin("gag_k_k1.p3d");
	Game.GagSetInterior("KwikEMart");
	Game.GagSetCycle("single");
	Game.GagSetPosition(499, -20, -300);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_k_k1"); 
	Game.GagSetTrigger("touch", 505, -20, -292, 7.0);
Game.GagEnd();
               
Game.GagBegin("gag_k_h1.p3d"); 
	Game.GagSetInterior("KwikEMart");
	Game.GagSetCycle("single");
	Game.GagSetPosition(499.457, -20, -285.458);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_k_h1");
	Game.GagSetTrigger("touch", 504.052, -20, -295.18, 1.1);
Game.GagEnd();
              
Game.GagBegin("gag_k_m1.p3d");
	Game.GagSetInterior("KwikEMart");
	Game.GagSetCycle("cycle");
	Game.GagSetPosition(500, -20, -299.886);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_k_m1");  
	Game.GagSetTrigger("touch", 505, -20, -292, 15);
Game.GagEnd();
                    
Game.GagBegin("gag_k_sr.p3d");
	Game.GagSetInterior("KwikEMart");
	Game.GagSetCycle("single");
	Game.GagSetPosition(499.156, -20, -297.801);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_k_sr");
	Game.GagSetTrigger("touch", 505, -20, -288.223, 12);
Game.GagEnd();
           
Game.GagBegin("gag_k_n1.p3d");
	Game.GagSetInterior("KwikEMart");
	Game.GagSetCycle("single");
	Game.GagSetPosition(500.745, -20, -288.223);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_k_n1"); 
	Game.GagSetTrigger("touch", 505, -20, -292,  6.8);
Game.GagEnd();
                        
Game.GagBegin("gag_k_js.p3d");
	Game.GagSetInterior("KwikEMart");
	Game.GagSetCycle("single");
	Game.GagSetPosition(500, -20, -300);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_k_js");
	Game.GagSetTrigger("touch", 505, -20, -292,  6.8);
Game.GagEnd();

Game.GagBegin("gag_sc_1.p3d");
	Game.GagSetInterior("SpringfieldElementary");
	Game.GagSetCycle("single");
	Game.GagSetPosition(495.79, -20, -349.513);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_sc_1");  
	Game.GagSetTrigger("touch", 502, -18, -355, 3.3);
Game.GagEnd();

Game.GagBegin("gag_sc_2.p3d");
	Game.GagSetInterior("SpringfieldElementary");
	Game.GagSetCycle("single");
	Game.GagSetPosition(500.185, -20, -349.966);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_sc_2"); 
	Game.GagSetTrigger("touch", 502, -18, -355, 3.3);
Game.GagEnd();
 
Game.GagBegin("gag_sc_3.p3d");
	Game.GagSetInterior("SpringfieldElementary");
	Game.GagSetCycle("cycle");
	Game.GagSetPosition(499.752  ,-20 ,-350.21 );
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_sc_3");
	Game.GagSetTrigger("touch", 502  , -18 , -355 ,  3.3 );
Game.GagEnd();

Game.GagBegin("gag_sc_4.p3d");
	Game.GagSetInterior("SpringfieldElementary");
	Game.GagSetCycle("single");
	Game.GagSetPosition(495.79   ,-20 ,-350.224   );
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_sc_4"); 
	Game.GagSetTrigger("touch", 502  , -18 , -355 ,  3.3 );
Game.GagEnd();

Game.GagBegin("gag_sc_5.p3d");
	Game.GagSetInterior("SpringfieldElementary");
	Game.GagSetCycle("single");
	Game.GagSetPosition(500.328, -20, -350.121);
	Game.GagSetRandom(1);
	Game.GagSetSound("gag_sc_5");
	Game.GagSetTrigger("touch", 502, -18, -349,  4.5);
Game.GagEnd();

Game.GagBegin("gag_bbq.p3d");
	Game.GagSetCycle("single");
	Game.GagSetPosition(228.567, 3.355, -199.931);
	Game.GagSetSparkle(1);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_bbq");
	Game.GagSetTrigger("action", 228.567, 3.355, -201.097, .812);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_gas.p3d");
	Game.GagSetCycle("reset");
	Game.GagSetPosition(11, 0.998, 337);
	Game.GagSetSparkle(1);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_gas");
	Game.GagSetTrigger("action", 12.35, 0.998, 337, 1.5);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_shel.p3d");
	Game.GagSetCycle("single");
	Game.GagSetPosition(262.601, 2.149, -208.027);
	Game.GagSetSparkle(1);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_shel");
	Game.GagSetTrigger("action", 261.874, 2.515, -206.561, 1.5);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_swng.p3d");
	Game.GagSetCycle("single");
	Game.GagSetPosition(221.179, 3.766, -204.937);
	Game.GagSetSparkle(1);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_swng");
	Game.GagSetTrigger("action", 219.314, 3.957, -206.512, 3.5);
	Game.GagSetAnimCollision(1);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_swg2.p3d");
	Game.GagSetCycle("single");
	Game.GagSetPosition(152.941, 6.365, -200.761);
	Game.GagSetSparkle(1);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_swng");
	Game.GagSetTrigger("action", 150.821, 6.337, -202.115, 3.5);
	Game.GagSetAnimCollision(1);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_crow.p3d");
	Game.GagSetCycle("single");
	Game.GagSetPosition(196.418, 0.119, 402.482);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_crows");
	Game.GagSetTrigger("touch", 197.749, -2.872, 400.099, 20);
Game.GagEnd();

Game.GagBegin("gag_sqsh.p3d");
	Game.GagSetInterior("KwikEMart");
	Game.GagSetCycle("single");
	Game.GagSetPosition(Squish);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_sqsh");
	Game.GagSetTrigger("action", SquishTrig, .66);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_jasp.p3d");
	Game.GagSetInterior("KwikEMart");
	Game.GagSetCycle("single");
	Game.GagSetPosition(Jasper);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_jasp");
	Game.GagSetTrigger("action", JasperTrig, 2);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_atm.p3d");
	Game.GagSetInterior("KwikEMart");
	Game.GagSetCycle("reset");
	Game.GagSetPosition(ATM);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_atm");
	Game.GagSetTrigger("action", ATMTrig, 1);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_tv.p3d");
	Game.GagSetInterior("SimpsonsHouse");
	Game.GagSetCycle("single");
	Game.GagSetPosition(TV);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_tv");
	Game.GagSetTrigger("action", TVTrig, 1.35);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_azte.p3d");
	Game.GagSetCycle("reset");
	Game.GagSetPosition(241.347, 3.345, -201.126);
	Game.GagSetSparkle(1);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_azte");
	Game.GagSetTrigger("action", 240.699, 3.366, -201.166, 2.82);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_melt.p3d");
	Game.GagSetCycle("single");
	Game.GagSetPosition(-81.089, 2.696, 323.139);
	Game.GagSetSparkle(1);
	Game.GagSetIntro(1);
	Game.GagSetOutro(60);
	Game.GagSetRandom(0);
	Game.GagSetCameraShake(.1, 450, 3.5);
	Game.GagSetSound("gag_melt");
	Game.GagSetTrigger("action", -80.698, -0.008, 320.838, 1.7);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_fire.p3d");
	Game.GagSetInterior("SpringfieldElementary");
	Game.GagSetCycle("single");
	Game.GagSetPosition(Fire);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_fire");
	Game.GagSetTrigger("action", FireTrig, 2.057);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_sknr.p3d");
	Game.GagSetInterior("SpringfieldElementary");
	Game.GagSetCycle("reset");
	Game.GagSetPosition(Alarm);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_sknr");
	Game.GagSetTrigger("action", AlarmTrig, 1.835);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_mgr.p3d");
	Game.GagSetCycle("reset");
	Game.GagSetPosition(146.717, 4.989, -183.561);
	Game.GagSetSparkle(1);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_mgr");
	Game.GagSetTrigger("action", 146.845, 5.76, -183.561, 4.429);
	Game.GagSetAnimCollision(1);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_tele.p3d");
	Game.GagSetInterior("KwikEMart");
	Game.GagPlayFMV("loot.rmv");
	Game.GagSetCycle("reset");
	Game.GagSetPosition(505.452, -19.91, -303.307);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_loot");
	Game.GagSetTrigger("action", 506.452, -19.91, -303.307, .864);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.GagBegin("gag_alm2.p3d");
	Game.GagSetInterior("KwikEMart");
	Game.GagSetCycle("reset");
	Game.GagSetPosition(504.31, -19.0961, -297.76);
	Game.GagSetRandom(0);
	Game.GagSetSound("gag_alm2");
	Game.GagSetTrigger("action", 503.872, -20, -297.024, 0.961);
	Game.GagSetPersist(1);
	Game.GagSetCoins(1, -1);
Game.GagEnd();

Game.SuppressDriver("apu");
Game.SuppressDriver("barney");
Game.SuppressDriver("brn_unf");
Game.SuppressDriver("bart");
Game.SuppressDriver("grandpa");
Game.SuppressDriver("homer");
Game.SuppressDriver("lisa");
Game.SuppressDriver("marge");
Game.SuppressDriver("skinner");
Game.SuppressDriver("smithers");