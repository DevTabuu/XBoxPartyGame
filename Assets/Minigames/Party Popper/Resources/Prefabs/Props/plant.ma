//Maya ASCII 2018 scene
//Name: plant.ma
//Last modified: Wed, Oct 17, 2018 11:53:32 AM
//Codeset: 1252
requires maya "2018";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "pSphere24";
	rename -uid "6E6C69F9-4641-3F07-322B-E09AA4038B6B";
	setAttr ".rp" -type "double3" 3.1975986013471944 3.0800748810476675 -1.2194740525159067 ;
	setAttr ".sp" -type "double3" 3.1975986013471944 3.0800748810476675 -1.2194740525159067 ;
createNode mesh -n "pSphere24Shape" -p "pSphere24";
	rename -uid "2C8285EF-4761-82E9-04AD-57883C1D9BB7";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:47]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 66 ".uvst[0].uvsp[0:65]" -type "float2" 0.52225912 0.61115098
		 0.5356369 0.61066723 0.51738894 0.62556005 0.50681543 0.63341975 0.48560417 0.60705876
		 0.47489566 0.6227482 0.55011392 0.60988164 0.44984537 0.60021329 0.47851849 0.58586109
		 0.5106948 0.58100176 0.52074158 0.58859897 0.54750538 0.54537266 0.53375226 0.53529543
		 0.55658495 0.53185403 0.57178885 0.53393579 0.57746363 0.57066953 0.59407985 0.56201982
		 0.5195744 0.52582586 0.60341084 0.5952633 0.57117283 0.59124923 0.54028869 0.57613939
		 0.53385079 0.56127179 0.727907 0.55048841 0.77444166 0.53932691 0.76987457 0.57627207
		 0.73298883 0.5971151 0.66539133 0.57108629 0.67408359 0.60371447 0.81266928 0.52706516
		 0.62743795 0.58614141 0.65720642 0.54219031 0.70779485 0.51060891 0.75285828 0.51482302
		 0.93261123 0.46516791 0.92114878 0.41966471 0.95908999 0.42413056 0.9804951 0.46019873
		 0.95376456 0.52629793 0.98727238 0.51779842 0.90855634 0.38228443 0.96922541 0.56341016
		 0.92408931 0.53430152 0.8916564 0.48483443 0.89598417 0.44076979 0.78955287 0.64565843
		 0.73961174 0.66012216 0.74451315 0.61224675 0.78409904 0.58523715 0.85664505 0.6189667
		 0.84731644 0.57668543 0.69858563 0.67601162 0.89737713 0.5994575 0.86542916 0.65641153
		 0.81113738 0.69733649 0.76277512 0.69187552 0.80287421 0.45001772 0.81779987 0.49384385
		 0.7848264 0.49106318 0.76066291 0.45535415 0.78293461 0.39554137 0.75421071 0.40437177
		 0.83214277 0.52918923 0.77245128 0.36577034 0.81349665 0.39153713 0.84416234 0.4361634
		 0.8440969 0.4781538;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 66 ".pt[0:65]" -type "float3"  -0.17220254 -0.17025968 0.14718463 
		-0.18870187 -0.18655929 -0.0347047 -0.22164495 0.069004171 0.18457149 -0.24073552 
		0.045057964 -0.073383108 -0.37998807 0.21031734 0.16065845 -0.39781657 0.19248961 
		-0.020867376 -0.027658571 -0.30459842 0.042450532 -0.52109152 0.25508088 0.090029843 
		-0.34511778 0.29128033 0.056341957 -0.16473491 0.13001357 0.036204226 -0.098901734 
		-0.12428781 0.03858462 0.022228131 -0.14841707 -0.12974623 0.13410582 -0.16054358 
		0.01502211 0.053909875 0.08553315 -0.20291068 0.20892586 0.067813605 0.0047781612 
		0.20589443 0.21586184 -0.27726847 0.3186225 0.20210677 -0.13342686 -0.048027523 -0.26902595 
		0.044687524 0.36454141 0.25251371 -0.29702213 0.23685138 0.30210361 -0.17599323 0.089423813 
		0.15473163 -0.051504176 0.021743456 -0.094202749 -0.001913171 -0.31468776 -0.2441982 
		0.098833658 -0.23094827 -0.22817613 -0.20356414 -0.53644997 -0.0026892032 0.11957186 
		-0.41246724 0.021436721 -0.30613536 -0.7854014 0.080131687 -0.035843946 -0.70234704 
		0.093561046 -0.33861154 -0.020350648 -0.29537997 0.038588881 -0.93189627 0.07165914 
		-0.25213224 -0.74512297 0.21849865 -0.17804439 -0.4374758 0.13528349 -0.076679863 
		-0.20847276 -0.12429448 -0.021752613 -0.10115503 -0.2212999 -0.24270405 0.20939609 
		-0.20347215 -0.16082065 -0.12245257 0.047426127 -0.4595513 0.31473288 0.074270383 
		-0.3383162 0.037153754 0.13957998 -0.70298457 0.34808469 0.15452339 -0.62177074 -0.039285954 
		-0.27824959 0.045109019 0.25927353 0.13015327 -0.84623182 0.18318844 0.29354027 -0.66359806 
		0.079090744 0.20094733 -0.3627699 0.022682423 -0.08788345 -0.13884352 0.26950505 
		-0.2212999 -0.043470353 0.17963526 -0.20347215 0.34839243 0.50750166 0.047426127 
		-0.070343882 0.3744424 0.074270383 0.48130956 0.77467769 0.13957998 0.13105196 0.68554306 
		0.15452339 0.52339405 -0.046379331 -0.27824959 0.034598093 0.93189585 0.13015327 
		0.4113296 0.73144931 0.29354027 0.31532279 0.40128148 0.20094733 0.18396936 0.15551452 
		-0.08788345 0.1127916 0.01160641 -0.22284137 0.27928749 -0.2800709 -0.22676028 0.21575874 
		0.011928416 0.032178499 0.48592713 -0.39898193 0.028772805 0.39148718 -0.13898118 
		0.094578564 0.70553809 -0.43073371 0.087721229 0.6423775 -0.047221214 -0.26658589 
		0.028136129 -0.34096989 0.057029586 0.83233958 -0.28938052 0.23735392 0.6858328 -0.19125567 
		0.17334975 0.41774839 -0.11780443 -0.094487332 0.20207465;
	setAttr -s 66 ".vt[0:65]"  3.086799383 2.97052574 -1.12477195 3.076183319 2.96003819 -1.24180388
		 3.054986954 3.12447381 -1.10071635 3.042703629 3.10906625 -1.26669049 2.95310521 3.21539807 -1.11610258
		 2.94163394 3.20392728 -1.23290062 3.17980242 2.88408899 -1.19216037 2.86231589 3.24419999 -1.16154671
		 2.97554159 3.26749158 -1.18322229 3.091604233 3.16372871 -1.19617939 3.13396287 3.00010514259 -1.19464779
		 3.21190071 2.9845798 -1.30295587 3.28388548 2.97677732 -1.20980847 3.2322855 3.13510895 -1.35003161
		 3.33202648 3.12370777 -1.21639967 3.33007598 3.21896553 -1.39787519 3.40260792 3.21011519 -1.30532408
		 3.16669655 2.90697718 -1.19072104 3.43215322 3.24254823 -1.41058517 3.34999442 3.27445555 -1.33271229
		 3.25513601 3.1796329 -1.25261307 3.21158886 3.019462585 -1.22070503 2.995121 2.92295194 -1.15588212
		 3.049000978 2.93326092 -1.35045207 2.85243392 3.078344584 -1.14253867 2.93220735 3.093867779 -1.41644883
		 2.69225264 3.13163352 -1.2425369 2.74569178 3.14027429 -1.43734479 3.18450451 2.89002037 -1.19464505
		 2.59799433 3.12618208 -1.38170195 2.71816874 3.22066212 -1.33403206 2.91611624 3.1671195 -1.2688117
		 3.063462257 3.00010085106 -1.2334702 3.13251305 2.93768525 -1.37563562 3.33232903 2.94915605 -1.32294989
		 3.1188097 3.11058998 -1.51516032 3.40010524 3.12786222 -1.43715477 3.22150421 3.16988397 -1.67179108
		 3.42156458 3.17949891 -1.61953616 3.17232108 2.90104246 -1.19044983 3.36442137 3.1638186 -1.76395977
		 3.3154664 3.26894569 -1.64644885 3.24848747 3.20936918 -1.45288885 3.21219301 3.023528576 -1.30880928
		 3.37100458 2.93768525 -1.24744391 3.31318021 2.94915605 -0.99531007 3.52413726 3.11058998 -1.26473498
		 3.43852377 3.12786222 -0.90978801 3.69604468 3.16988397 -1.1351521 3.63869333 3.17949891 -0.88270986
		 3.16775703 2.90104246 -1.19721282 3.79720259 3.1638186 -0.95481479 3.66823053 3.26894569 -1.016587853
		 3.45579267 3.20936918 -1.10110378 3.29766035 3.023528576 -1.14690125 3.20506644 2.93669343 -1.039773822
		 3.017394304 2.93417192 -1.080649734 3.20527363 3.10077929 -0.90681696 2.94088411 3.09858799 -0.96758187
		 3.1081748 3.14092898 -0.76551402 2.92045426 3.13651681 -0.80615306 3.16721535 2.90854716 -1.2013706
		 2.97821045 3.11676908 -0.68392694 3.011404276 3.23279405 -0.77819288 3.074540138 3.19161224 -0.95068479
		 3.12180042 3.01927948 -1.089454412;
	setAttr -s 108 ".ed[0:107]"  0 10 0 2 9 0 4 8 0 0 2 0 1 3 0 2 4 0 3 5 0
		 6 0 0 6 1 0 4 7 0 5 7 0 8 5 0 9 3 0 10 1 0 7 8 1 8 9 1 9 10 1 10 6 1 11 21 0 13 20 0
		 15 19 0 11 13 0 12 14 0 13 15 0 14 16 0 17 11 0 17 12 0 15 18 0 16 18 0 19 16 0 20 14 0
		 21 12 0 18 19 1 19 20 1 20 21 1 21 17 1 22 32 0 24 31 0 26 30 0 22 24 0 23 25 0 24 26 0
		 25 27 0 28 22 0 28 23 0 26 29 0 27 29 0 30 27 0 31 25 0 32 23 0 29 30 1 30 31 1 31 32 1
		 32 28 1 33 43 0 35 42 0 37 41 0 33 35 0 34 36 0 35 37 0 36 38 0 39 33 0 39 34 0 37 40 0
		 38 40 0 41 38 0 42 36 0 43 34 0 40 41 1 41 42 1 42 43 1 43 39 1 44 54 0 46 53 0 48 52 0
		 44 46 0 45 47 0 46 48 0 47 49 0 50 44 0 50 45 0 48 51 0 49 51 0 52 49 0 53 47 0 54 45 0
		 51 52 1 52 53 1 53 54 1 54 50 1 55 65 0 57 64 0 59 63 0 55 57 0 56 58 0 57 59 0 58 60 0
		 61 55 0 61 56 0 59 62 0 60 62 0 63 60 0 64 58 0 65 56 0 62 63 1 63 64 1 64 65 1 65 61 1;
	setAttr -s 48 -ch 168 ".fc[0:47]" -type "polyFaces" 
		f 4 16 13 4 -13
		mu 0 4 0 1 2 3
		f 4 15 12 6 -12
		mu 0 4 4 0 3 5
		f 3 -14 17 8
		mu 0 3 2 1 6
		f 3 14 11 10
		mu 0 3 7 4 5
		f 3 2 -15 -10
		mu 0 3 8 4 7
		f 4 1 -16 -3 -6
		mu 0 4 9 0 4 8
		f 4 0 -17 -2 -4
		mu 0 4 10 1 0 9
		f 3 -18 -1 -8
		mu 0 3 6 1 10
		f 4 34 31 22 -31
		mu 0 4 11 12 13 14
		f 4 33 30 24 -30
		mu 0 4 15 11 14 16
		f 3 -32 35 26
		mu 0 3 13 12 17
		f 3 32 29 28
		mu 0 3 18 15 16
		f 3 20 -33 -28
		mu 0 3 19 15 18
		f 4 19 -34 -21 -24
		mu 0 4 20 11 15 19
		f 4 18 -35 -20 -22
		mu 0 4 21 12 11 20
		f 3 -36 -19 -26
		mu 0 3 17 12 21
		f 4 52 49 40 -49
		mu 0 4 22 23 24 25
		f 4 51 48 42 -48
		mu 0 4 26 22 25 27
		f 3 -50 53 44
		mu 0 3 24 23 28
		f 3 50 47 46
		mu 0 3 29 26 27
		f 3 38 -51 -46
		mu 0 3 30 26 29
		f 4 37 -52 -39 -42
		mu 0 4 31 22 26 30
		f 4 36 -53 -38 -40
		mu 0 4 32 23 22 31
		f 3 -54 -37 -44
		mu 0 3 28 23 32
		f 4 70 67 58 -67
		mu 0 4 33 34 35 36
		f 4 69 66 60 -66
		mu 0 4 37 33 36 38
		f 3 -68 71 62
		mu 0 3 35 34 39
		f 3 68 65 64
		mu 0 3 40 37 38
		f 3 56 -69 -64
		mu 0 3 41 37 40
		f 4 55 -70 -57 -60
		mu 0 4 42 33 37 41
		f 4 54 -71 -56 -58
		mu 0 4 43 34 33 42
		f 3 -72 -55 -62
		mu 0 3 39 34 43
		f 4 88 85 76 -85
		mu 0 4 44 45 46 47
		f 4 87 84 78 -84
		mu 0 4 48 44 47 49
		f 3 -86 89 80
		mu 0 3 46 45 50
		f 3 86 83 82
		mu 0 3 51 48 49
		f 3 74 -87 -82
		mu 0 3 52 48 51
		f 4 73 -88 -75 -78
		mu 0 4 53 44 48 52
		f 4 72 -89 -74 -76
		mu 0 4 54 45 44 53
		f 3 -90 -73 -80
		mu 0 3 50 45 54
		f 4 106 103 94 -103
		mu 0 4 55 56 57 58
		f 4 105 102 96 -102
		mu 0 4 59 55 58 60
		f 3 -104 107 98
		mu 0 3 57 56 61
		f 3 104 101 100
		mu 0 3 62 59 60
		f 3 92 -105 -100
		mu 0 3 63 59 62
		f 4 91 -106 -93 -96
		mu 0 4 64 55 59 63
		f 4 90 -107 -92 -94
		mu 0 4 65 56 55 64
		f 3 -108 -91 -98
		mu 0 3 61 56 65;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode groupId -n "groupId25";
	rename -uid "7DF1697B-45DF-BE1E-7817-53A3E1CAEE45";
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
connectAttr "groupId25.id" "pSphere24Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pSphere24Shape.iog.og[0].gco";
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
// End of plant.ma
