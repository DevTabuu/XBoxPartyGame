//Maya ASCII 2018 scene
//Name: rock big.ma
//Last modified: Wed, Oct 17, 2018 11:53:44 AM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "pSphere11";
	rename -uid "7E0B4254-4A10-DFFB-4716-44AED4B7AD8F";
	setAttr ".rp" -type "double3" 0.93032641813046324 2.9071877499362757 3.1077152583808427 ;
	setAttr ".sp" -type "double3" 0.93032641813046324 2.9071877499362757 3.1077152583808427 ;
createNode mesh -n "pSphereShape11" -p "pSphere11";
	rename -uid "2FD01A06-4E47-E243-AE1F-73835636FC4B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:22]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50505585968494415 0.67401880025863647 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.17043304 0.53122199
		 0.1345641 0.45318913 0.049002498 0.56395143 0.10577172 0.5995152 0.11953509 0.57889175
		 0.060841829 0.55063766 0.12504286 0.53625965 0.10856283 0.48834553 0.12814391 0.45656794
		 0.061505526 0.45643643 0.035387933 0.51069456 0.069704115 0.43105641 0.11297721 0.4551082
		 0.12729752 0.45619845 0.10030699 0.46749637 0.020793229 0.51926935;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  0.35591096 -0.090048574 2.2955365 
		0.60892695 -0.090048574 2.209198 0.74884993 -0.090048298 1.9047952 0.50749701 0.1442551 
		2.0720544 0.32392865 0.081960313 2.1965303 0.57178497 0.14049746 1.8851434 0.16511182 
		-0.090048395 1.951422 0.22204509 0.031920813 1.9848715 0.55029947 0.0097595928 1.7188375 
		0.49660906 -0.090048574 1.6383865 0.32133958 0.08196114 1.8290554 0.58388209 -0.018591708 
		2.1960173 0.47529155 0.14161016 2.1533861 0.52471739 0.04211295 2.2017117 0.58058035 
		-0.019837748 2.1974585 0.27515498 -0.090048485 1.7771192;
	setAttr -s 16 ".vt[0:15]"  1.85240459 2.67389393 2.081000328 2.50790715 2.67389393 1.85731804
		 2.8704133 2.67389464 1.068685174 2.24512696 3.28091741 1.50201285 1.76954627 3.11952686 1.82449973
		 2.41168141 3.2711823 1.017772079 1.35809076 2.67389441 1.18948376 1.50559092 2.98988676 1.27614343
		 2.35601759 2.93247247 0.58691442 2.21691895 2.67389393 0.37848556 1.7628386 3.11952901 0.87246192
		 2.44302201 2.85902119 1.8231703 2.16169047 3.27406502 1.71272314 2.2897408 3.016292095 1.83792317
		 2.43446803 2.855793 1.82690442 1.64318562 2.67389417 0.73790777;
	setAttr -s 37 ".ed[0:36]"  2 9 0 5 10 0 9 10 0 2 5 0 8 10 0 10 4 0 10 7 0
		 4 7 0 9 15 0 6 0 0 0 1 0 3 12 0 1 2 0 4 13 0 7 6 0 0 4 0 11 1 0 8 9 0 3 5 0 5 8 0
		 11 5 0 3 11 0 10 3 0 0 14 0 12 4 0 13 11 0 14 11 0 10 12 1 12 13 1 13 14 1 14 1 1
		 15 6 0 1 15 1 15 10 1 13 0 1 7 0 1 2 8 1;
	setAttr -s 23 -ch 74 ".fc[0:22]" -type "polyFaces" 
		f 4 -13 32 -9 -1
		mu 0 4 0 1 2 3
		f 3 4 -2 19
		mu 0 3 4 5 6
		f 3 1 22 18
		mu 0 3 6 5 7
		f 3 -19 21 20
		mu 0 3 6 7 8
		f 3 -6 6 -8
		mu 0 3 9 5 10
		f 3 33 -3 8
		mu 0 3 2 5 3
		f 3 7 35 15
		mu 0 3 9 10 11
		f 3 -26 29 26
		mu 0 3 8 12 13
		f 4 -21 16 12 3
		mu 0 4 6 8 1 0
		f 3 36 -20 -4
		mu 0 3 0 4 6
		f 3 -5 17 2
		mu 0 3 5 4 3
		f 4 -22 11 28 25
		mu 0 4 8 7 14 12
		f 3 -23 27 -12
		mu 0 3 7 5 14
		f 3 -27 30 -17
		mu 0 3 8 13 1
		f 3 -28 5 -25
		mu 0 3 14 5 9
		f 3 -29 24 13
		mu 0 3 12 14 9
		f 3 -30 34 23
		mu 0 3 13 12 11
		f 3 -31 -24 10
		mu 0 3 1 13 11
		f 4 -33 -11 -10 -32
		mu 0 4 2 1 11 15
		f 4 -7 -34 31 -15
		mu 0 4 10 5 2 15
		f 3 -35 -14 -16
		mu 0 3 11 12 9
		f 3 -36 14 9
		mu 0 3 11 10 15
		f 3 0 -18 -37
		mu 0 3 0 3 4;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode groupId -n "groupId29";
	rename -uid "431893A3-4CED-85EF-3ADD-409476EF66F0";
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
createNode groupId -n "groupId30";
	rename -uid "0F1139E5-4952-1D9F-77D8-0881262197C2";
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
connectAttr "groupId29.id" "pSphereShape11.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pSphereShape11.iog.og[0].gco";
connectAttr "groupId30.id" "pSphereShape11.ciog.cog[0].cgid";
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
connectAttr "pSphereShape11.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
// End of rock big.ma
