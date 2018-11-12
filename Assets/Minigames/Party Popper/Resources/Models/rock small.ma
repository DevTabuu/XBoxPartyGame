//Maya ASCII 2018 scene
//Name: rock small.ma
//Last modified: Wed, Oct 17, 2018 11:53:54 AM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "pSphere16";
	rename -uid "D1BF6C6E-4C8A-D9DD-7910-5DB2C98A388A";
	setAttr ".rp" -type "double3" 0.4227549618611387 2.9071877499362757 3.1077152583808427 ;
	setAttr ".sp" -type "double3" 0.4227549618611387 2.9071877499362757 3.1077152583808427 ;
createNode mesh -n "pSphereShape16" -p "pSphere16";
	rename -uid "60281292-4E5F-8348-9C79-2380623CF5ED";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.092458701711924079 0.51930302533340489 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.1478222 0.52864808
		 0.12882316 0.47383815 0.077948473 0.46709543 0.037095197 0.5264675 0.093169026 0.57151061
		 0.10604175 0.49700856 0.10805293 0.52858722 0.085517816 0.56678283 0.07076516 0.48382258
		 0.12319797 0.47606504 0.059087195 0.53806329 0.047881864 0.51958233;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  -0.54074842 -0.027884627 
		2.0436082 -0.4406299 -0.027884627 2.030339 -0.40324086 -0.027884627 1.9224763 -0.48546243 
		0.047582168 1.984741 -0.55488473 0.024097066 2.0106902 -0.48150453 0.04521564 1.922596 
		-0.62114531 -0.027884627 1.9267675 -0.59991777 0.02010349 1.940317 -0.52585232 -0.012215179 
		1.8474293 -0.51079524 -0.032941263 1.8381251 -0.57786632 0.028052969 1.9039476 -0.45169991 
		-0.011708919 2.0259566;
	setAttr -s 12 ".vt[0:11]"  0.79384762 2.79247975 1.58278394 1.20570147 2.79247975 1.52819872
		 1.35950744 2.79247975 1.084487677 1.02127552 3.10292482 1.34062362 0.73569542 3.0063149929 1.44737029
		 1.037557006 3.093189716 1.084980011 0.4631218 2.79247975 1.10214019 0.55044472 2.98988676 1.1578784
		 0.85512507 2.8569386 0.77576923 0.91706491 2.77167845 0.7374953 0.64115697 3.022588253 1.0082669258
		 1.16016316 2.85902119 1.51017118;
	setAttr -s 24 ".ed[0:23]"  2 9 0 5 10 0 9 10 0 2 5 0 8 10 0 10 4 0 10 7 0
		 4 7 0 9 6 0 6 0 0 0 1 0 3 4 0 1 2 0 4 11 0 7 6 0 0 4 0 11 1 0 8 9 0 3 5 0 5 8 0 11 5 0
		 3 11 0 10 3 0 0 11 0;
	setAttr -s 14 -ch 48 ".fc[0:13]" -type "polyFaces" 
		f 5 -13 -11 -10 -9 -1
		mu 0 5 0 1 2 3 4
		f 3 4 -2 19
		mu 0 3 7 10 6
		f 3 1 22 18
		mu 0 3 6 10 5
		f 3 -19 21 20
		mu 0 3 6 5 9
		f 3 -6 6 -8
		mu 0 3 8 10 11
		f 4 -7 -3 8 -15
		mu 0 4 11 10 4 3
		f 4 7 14 9 15
		mu 0 4 8 11 3 2
		f 3 -14 -16 23
		mu 0 3 9 8 2
		f 4 -21 16 12 3
		mu 0 4 6 9 1 0
		f 4 0 -18 -20 -4
		mu 0 4 0 4 7 6
		f 3 -5 17 2
		mu 0 3 10 7 4
		f 3 -22 11 13
		mu 0 3 9 5 8
		f 3 -23 5 -12
		mu 0 3 5 10 8
		f 3 -24 10 -17
		mu 0 3 9 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape7" -p "pSphere16";
	rename -uid "6BF1EE69-4FEA-A925-8EC2-1188EB5B2669";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.48394858837127686 0.98941898345947266 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 29 ".uvst[0].uvsp[0:28]" -type "float2" 0 0.33333334 0.1549354
		 0.33201832 0.40000001 0.33333334 0.60000002 0.33333334 1 0.33333334 0.40000001 0.5
		 0 0.83333337 0.40000001 0.83333337 0.61024201 0.84229171 1 0.83333337 0.2 0.83333337
		 0.30003303 0.99961424 0.49993068 0.99942058 0.66786414 0.97922373 1 0.58933032 0
		 0.58933032 0.19088966 0.60379112 0.40000001 0.58933032 0.60456747 0.39228031 0 0.33333334
		 0.032942951 0.58809173 0.80000001 0.83333337 0.82328433 0.40482193 0.80000001 0.33333334
		 1 0.41259566 0 0.41259566 0 0.41259566 0.39999998 0.41259566 0.80000001 0.83333337;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 23 ".pt[0:22]" -type "float3"  0.93061018 0.15167257 1.5768023 
		-0.13261054 0.15014137 3.2911735 0.85492831 0.15014137 3.7142448 1.8748182 0.15014137 
		3.0240855 0.44315886 -0.019020557 3.6455483 0.55121881 -0.27682388 2.2528231 0.73880756 
		-0.2560313 3.1000073 1.16772 -0.24329442 2.6088617 0.36015069 -0.2560313 2.8467247 
		0.72426844 -0.25603145 2.7456799 0.4160291 -0.15092266 1.9427061 -0.051920399 -0.12963131 
		2.9446878 0.65489489 -0.13859877 3.328383 1.756567 0.085288882 3.034441 -0.11895148 
		0.15014137 1.9006257 -0.16224688 -0.10813737 2.1251891 0.99948031 -0.17580292 2.1181605 
		1.2430552 0.06580615 1.753499 1.437815 0.17735687 1.7568897 0.75947148 0.07124202 
		1.6296036 -0.21646379 0.078767747 1.9307119 0.78274691 0.063081309 3.6192548 1.0286285 
		-0.26821387 2.2169816;
	setAttr -s 23 ".vt[0:22]"  -0.21611221 2.63963675 -0.79848605 0.92645818 2.64233828 -1.70838952
		 0.35077316 2.64233828 -2.18604612 -0.51531076 2.64233828 -1.93959785 0.46707457 2.94079375 -2.088410616
		 0.20707959 3.39564085 -1.16535711 0.28246796 3.3589561 -1.75938368 -0.13016292 3.33648419 -1.52388167
		 0.48126686 3.3589561 -1.5164659 0.20707911 3.35895634 -1.52388072 0.22512788 3.17351103 -0.93443912
		 0.78761584 3.13594627 -1.49731755 0.3950662 3.15176773 -1.89228296 -0.43167639 2.75675869 -1.9224484
		 0.58207327 2.64233828 -0.79848546 0.71269161 3.09802413 -0.96731067 -0.13294353 3.2174077 -1.16774678
		 -0.38793015 2.79113245 -0.9777298 -0.52075005 2.59432149 -1.019394398 -0.085962296 2.78154182 -0.79848576
		 0.65623093 2.76826406 -0.79848576 0.37741619 2.79593992 -2.10908365 -0.12913585 3.38045001 -1.2385093;
	setAttr -s 54 ".ed[0:53]"  3 18 0 18 0 0 16 5 0 0 19 0 3 13 0 13 7 0
		 17 10 0 10 11 0 10 15 0 11 15 0 0 14 0 14 1 0 15 20 0 5 8 0 10 5 0 8 6 0 11 12 0
		 1 2 0 8 11 0 7 9 0 8 9 0 6 7 0 12 13 0 2 3 0 9 6 0 6 12 0 12 4 0 4 21 0 16 17 0 19 10 0
		 20 14 0 1 11 0 21 2 0 17 18 0 19 20 0 20 11 0 4 1 0 9 22 0 16 22 0 22 5 0 7 22 0
		 7 16 0 17 19 0 17 13 0 5 9 0 7 17 0 10 20 0 11 4 0 21 13 0 12 21 0 10 8 0 8 12 0
		 7 12 0 1 21 0;
	setAttr -s 33 -ch 108 ".fc[0:32]" -type "polyFaces" 
		f 6 -24 -18 -12 -11 -2 -1
		mu 0 6 3 2 1 19 4 23
		f 3 51 -26 -16
		mu 0 3 10 17 7
		f 3 5 52 22
		mu 0 3 18 8 17
		f 4 6 14 -3 28
		mu 0 4 22 14 9 21
		f 3 19 24 21
		mu 0 3 8 12 7
		f 3 39 44 37
		mu 0 3 28 9 13
		f 3 -27 -17 47
		mu 0 3 5 17 16
		f 3 -23 49 48
		mu 0 3 18 17 27
		f 3 29 -7 42
		mu 0 3 24 14 22
		f 3 -9 46 -13
		mu 0 3 20 15 26
		f 3 -8 8 -10
		mu 0 3 16 15 20
		f 3 -15 50 -14
		mu 0 3 6 15 10
		f 3 -21 15 -25
		mu 0 3 11 10 7
		f 3 40 -38 -20
		mu 0 3 8 28 13
		f 4 -35 -4 10 -31
		mu 0 4 26 25 0 19
		f 4 -36 30 11 31
		mu 0 4 16 26 19 1
		f 3 -28 36 53
		mu 0 3 27 5 1
		f 4 -49 32 23 4
		mu 0 4 18 27 2 3
		f 4 0 -34 43 -5
		mu 0 4 3 23 22 18
		f 3 2 -40 -39
		mu 0 3 21 9 28
		f 3 38 -41 41
		mu 0 3 21 28 8
		f 4 -43 33 1 3
		mu 0 4 24 22 23 4
		f 3 -42 45 -29
		mu 0 3 21 8 22
		f 3 20 -45 13
		mu 0 3 10 13 6
		f 3 -46 -6 -44
		mu 0 3 22 8 18
		f 3 -47 -30 34
		mu 0 3 26 15 25
		f 3 9 12 35
		mu 0 3 16 20 26
		f 3 -48 -32 -37
		mu 0 3 5 16 1
		f 3 -50 26 27
		mu 0 3 27 17 5
		f 3 -51 7 -19
		mu 0 3 10 15 16
		f 3 18 16 -52
		mu 0 3 10 16 17
		f 3 -53 -22 25
		mu 0 3 17 8 7
		f 3 -54 17 -33
		mu 0 3 27 1 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode groupId -n "groupId27";
	rename -uid "DA8C5786-42F0-E3C9-B212-F1BA16A234C1";
	setAttr ".ihi" 0;
createNode shadingEngine -n "lambert2SG";
	rename -uid "B38E7238-46A6-94D0-588C-22900F50E627";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 4 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "1F1F7A44-4AA7-9F2E-C912-798E91AF28DF";
createNode lambert -n "lambert2";
	rename -uid "7502ACC0-4AA8-1E0B-BEE0-CBA3173DE996";
createNode file -n "file1";
	rename -uid "D4DF0BA5-4173-ECA8-E4F0-41B9E11C2B6B";
	setAttr ".ftn" -type "string" "C:/Users/yodie/Desktop/project periode5/textures/Tx- plant tree stone.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "4C080911-45D6-078F-57DF-539B4139C262";
createNode groupId -n "groupId28";
	rename -uid "2EED17DE-4347-DA52-97FB-69BB2D72900A";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "1285D385-4673-14B3-E964-5BAF9CD0A251";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 2 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupId27.id" "pSphereShape16.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pSphereShape16.iog.og[0].gco";
connectAttr "groupId28.id" "pSphereShape16.ciog.cog[0].cgid";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pCylinder3Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pSphere24Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pSphereShape16.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pSphereShape11.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId26.msg" "lambert2SG.gn" -na;
connectAttr "groupId25.msg" "lambert2SG.gn" -na;
connectAttr "groupId27.msg" "lambert2SG.gn" -na;
connectAttr "groupId29.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "file1.oc" "lambert2.c";
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pSphereShape16.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId28.msg" ":initialShadingGroup.gn" -na;
// End of rock small.ma
