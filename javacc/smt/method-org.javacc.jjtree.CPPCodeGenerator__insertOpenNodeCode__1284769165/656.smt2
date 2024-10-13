(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1864 0)
(declare-sort var2312 0)
(declare-sort var23 0)
(declare-sort var2109 0)
(declare-sort var1076 0)
(declare-sort var2892 0)
(declare-sort var3968 0)
(declare-sort var1231 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node_descriptor/-576648796 (var2312) var1076)
(declare-fun getNodeType/-707025417 (var1076) String)
(declare-fun var2892_getNodeClass/-1384960322 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3968_addType/-972038703 (String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeVar/-576648796 (var2312) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var23 String) void)
(declare-fun var1231_getStatic/-616544340 () Bool)
(declare-fun var2892_getNodeUsesParser/1997544654 () Bool)
(declare-fun var2892_getNodeFactory/-1655041108 () String)
(declare-fun getNodeId/-1379187338 (var1076) String)
(declare-fun println/1333914633 (var23 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var2312) Bool)
(declare-fun openNode/114769770 (var1076 String) String)
(declare-fun var2892_getNodeScopeHook/893147786 () Bool)
(declare-fun var2892_getTrackTokens/1877101562 () Bool)
(declare-const null-var1864 var1864)
(declare-const null-var2312 var2312)
(declare-const null-var23 var23)
(declare-const null-String String)
(declare-const var3869 var1864) ; Statement: r70 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var3869 null-var1864)))
(declare-const var2462 var2312) ; Statement: r0 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var2462 null-var2312)))
(declare-const var3443 var23) ; Statement: r4 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var3443 null-var23)))
(declare-const var2120 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2120 null-String)))
(define-const var3030 var1076 (node_descriptor/-576648796 var2462)) ; Statement: $r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var3163 String (getNodeType/-707025417 var3030)) ; Statement: r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>() 
(define-const var830 String var2892_getNodeClass/-1384960322) ; Statement: $r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>() 
(assert true)
(define-const var2872 Int (length/-134980193 var830)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto r71 = r2 
(assert (<= var2872 0)) ; Cond: $i0 <= 0 
(define-const var3812 String var3163) ; Statement: r71 = r2 
(assert true) ; Non Conditional
;(assert (var3968_addType/-972038703 var3163)) ; Statement: staticinvoke <org.javacc.jjtree.CPPNodeFiles: void addType(java.lang.String)>(r2) 

(declare-const var3163!1 String)
(define-const var277 String String-init) ; Statement: $r72 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var277)) ; Statement: specialinvoke $r72.<java.lang.StringBuilder: void <init>()>() 
(declare-const var277!1 String)
(assert (= var277!1 ""))
(assert true)
(define-const var2057 String (append/672562846 var277!1 var2120)) ; Statement: $r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var277!2 String)
(assert (= var277!2 (str.++ var277!1 var2120)))
(assert true)
(define-const var193 String (append/672562846 var2057 var3812)) ; Statement: $r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var2057!1 String)
(assert (= var2057!1 (str.++ var2057 var3812)))
(assert true)
(define-const var479 String (append/672562846 var193 " *")) ; Statement: $r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" *") 
(declare-const var193!1 String)
(assert (= var193!1 (str.++ var193 " *")))
(define-const var1409 String (nodeVar/-576648796 var2462)) ; Statement: $r76 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var647 String (append/672562846 var479 var1409)) ; Statement: $r77 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r76) 
(declare-const var479!1 String)
(assert (= var479!1 (str.++ var479 var1409)))
(assert true)
(define-const var2899 String (append/672562846 var647 " = ")) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var647!1 String)
(assert (= var647!1 (str.++ var647 " = ")))
(assert true)
(define-const var1209 String (toString/-2075883882 var2899)) ; Statement: $r79 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var3443 var1209)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r79) 

(declare-const var3443!1 var23)
(declare-const var1209!1 String)
(define-const var801 Bool var1231_getStatic/-616544340) ; Statement: $z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>() 
 ; Statement: if $z5 == 0 goto $r80 = "this" 
(assert (not (= (ite var801 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var468 String "null") ; Statement: $r80 = "null" 
 ; Statement: goto [?= $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>()] 
(assert true) ; Non Conditional
(define-const var13 Bool var2892_getNodeUsesParser/1997544654) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>() 
 ; Statement: if $z0 == 0 goto $r81 = "" 
(assert (= (ite var13 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1826 String "") ; Statement: $r81 = "" 
(assert true) ; Non Conditional
(define-const var2458 String var2892_getNodeFactory/-1655041108) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert true)
(define-const var2484 Bool (= var2458 "*")) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*") 
 ; Statement: if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert (not (= (ite var2484 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1548 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1548)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1548!1 String)
(assert (= var1548!1 ""))
(assert true)
(define-const var833 String (append/672562846 var1548!1 "(")) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1548!2 String)
(assert (= var1548!2 (str.++ var1548!1 "(")))
(assert true)
(define-const var3772 String (append/672562846 var833 var3812)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var833!1 String)
(assert (= var833!1 (str.++ var833 var3812)))
(assert true)
(define-const var2296 String (append/672562846 var3772 "*)")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*)") 
(declare-const var3772!1 String)
(assert (= var3772!1 (str.++ var3772 "*)")))
(assert true)
(define-const var662 String (append/672562846 var2296 var3812)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var2296!1 String)
(assert (= var2296!1 (str.++ var2296 var3812)))
(assert true)
(define-const var1624 String (append/672562846 var662 "::jjtCreate(")) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::jjtCreate(") 
(declare-const var662!1 String)
(assert (= var662!1 (str.++ var662 "::jjtCreate(")))
(assert true)
(define-const var2424 String (append/672562846 var1624 var1826)) ; Statement: $r63 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r81) 
(declare-const var1624!1 String)
(assert (= var1624!1 (str.++ var1624 var1826)))
(define-const var597 var1076 (node_descriptor/-576648796 var2462)) ; Statement: $r61 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var3371 String (getNodeId/-1379187338 var597)) ; Statement: $r62 = virtualinvoke $r61.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>() 
(assert true)
(define-const var2342 String (append/672562846 var2424 var3371)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62) 
(declare-const var2424!1 String)
(assert (= var2424!1 (str.++ var2424 var3371)))
(assert true)
(define-const var3953 String (append/672562846 var2342 ");")) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var2342!1 String)
(assert (= var2342!1 (str.++ var2342 ");")))
(assert true)
(define-const var1578 String (toString/-2075883882 var3953)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3443!1 var1578)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r66) 

(declare-const var3443!2 var23)
(declare-const var1578!1 String)
 ; Statement: goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var544 Bool (usesCloseNodeVar/-1769174946 var2462)) ; Statement: $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z6 == 0 goto $r18 = new java.lang.StringBuilder 
(assert (= (ite var544 1 0) 0)) ; Cond: $z6 == 0 
(define-const var54 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var54)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var54!1 String)
(assert (= var54!1 ""))
(assert true)
(define-const var522 String (append/672562846 var54!1 var2120)) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var54!2 String)
(assert (= var54!2 (str.++ var54!1 var2120)))
(define-const var2979 var1076 (node_descriptor/-576648796 var2462)) ; Statement: $r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(define-const var1748 String (nodeVar/-576648796 var2462)) ; Statement: $r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var1505 String (openNode/114769770 var2979 var1748)) ; Statement: $r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19) 
(assert true)
(define-const var3861 String (append/672562846 var522 var1505)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var522!1 String)
(assert (= var522!1 (str.++ var522 var1505)))
(assert true)
(define-const var3215 String (toString/-2075883882 var3861)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3443!2 var3215)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24) 

(declare-const var3443!3 var23)
(declare-const var3215!1 String)
(define-const var2140 Bool var2892_getNodeScopeHook/893147786) ; Statement: $z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
 ; Statement: if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
(assert (= (ite var2140 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1289 Bool var2892_getTrackTokens/1877101562) ; Statement: $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var1289 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {node_descriptor/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTNodeDescriptor), getNodeType/-707025417=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), var2892_getNodeClass/-1384960322=([], java.lang.String), length/-134980193=([java.lang.String], int), var3968_addType/-972038703=([java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeVar/-576648796=([org.javacc.jjtree.NodeScope], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), var1231_getStatic/-616544340=([], boolean), var2892_getNodeUsesParser/1997544654=([], boolean), var2892_getNodeFactory/-1655041108=([], java.lang.String), getNodeId/-1379187338=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean), openNode/114769770=([org.javacc.jjtree.ASTNodeDescriptor, java.lang.String], java.lang.String), var2892_getNodeScopeHook/893147786=([], boolean), var2892_getTrackTokens/1877101562=([], boolean)}
; {var1864=org.javacc.jjtree.CPPCodeGenerator, var3869=r70, var2312=org.javacc.jjtree.NodeScope, var2462=r0, var23=org.javacc.jjtree.IO, var3443=r4, var2120=r5, var2109=null_type, var1076=org.javacc.jjtree.ASTNodeDescriptor, var3030=$r1, var3163=r2, var2892=org.javacc.jjtree.JJTreeOptions, var830=$r3, var2872=$i0, var3812=r71, var3968=org.javacc.jjtree.CPPNodeFiles, var277=$r72, var2057=$r73, var193=$r74, var479=$r75, var1409=$r76, var647=$r77, var2899=$r78, var1209=$r79, var1231=org.javacc.parser.Options, var801=$z5, var468=$r80, var13=$z0, var1826=$r81, var2458=$r6, var2484=$z1, var1548=$r55, var833=$r56, var3772=$r57, var2296=$r58, var662=$r59, var1624=$r60, var2424=$r63, var597=$r61, var3371=$r62, var2342=$r64, var3953=$r65, var1578=$r66, var544=$z6, var54=$r18, var522=$r22, var2979=$r20, var1748=$r19, var1505=$r21, var3861=$r23, var3215=$r24, var2140=$z2, var1289=$z3}
; {org.javacc.jjtree.CPPCodeGenerator=var1864, r70=var3869, org.javacc.jjtree.NodeScope=var2312, r0=var2462, org.javacc.jjtree.IO=var23, r4=var3443, r5=var2120, null_type=var2109, org.javacc.jjtree.ASTNodeDescriptor=var1076, $r1=var3030, r2=var3163, org.javacc.jjtree.JJTreeOptions=var2892, $r3=var830, $i0=var2872, r71=var3812, org.javacc.jjtree.CPPNodeFiles=var3968, $r72=var277, $r73=var2057, $r74=var193, $r75=var479, $r76=var1409, $r77=var647, $r78=var2899, $r79=var1209, org.javacc.parser.Options=var1231, $z5=var801, $r80=var468, $z0=var13, $r81=var1826, $r6=var2458, $z1=var2484, $r55=var1548, $r56=var833, $r57=var3772, $r58=var2296, $r59=var662, $r60=var1624, $r63=var2424, $r61=var597, $r62=var3371, $r64=var2342, $r65=var3953, $r66=var1578, $z6=var544, $r18=var54, $r22=var522, $r20=var2979, $r19=var1748, $r21=var1505, $r23=var3861, $r24=var3215, $z2=var2140, $z3=var1289}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 15,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r70 := @this: org.javacc.jjtree.CPPCodeGenerator;	r0 := @parameter0: org.javacc.jjtree.NodeScope;	r4 := @parameter1: org.javacc.jjtree.IO;	r5 := @parameter2: java.lang.String;	$r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>();	$r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>();	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	if $i0 <= 0 goto r71 = r2;	r71 = r2;	staticinvoke <org.javacc.jjtree.CPPNodeFiles: void addType(java.lang.String)>(r2);	$r72 = new java.lang.StringBuilder;	specialinvoke $r72.<java.lang.StringBuilder: void <init>()>();	$r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" *");	$r76 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r77 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r76);	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r79 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r79);	$z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>();	if $z5 == 0 goto $r80 = "this";	$r80 = "null";	goto [?= $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>()];	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>();	if $z0 == 0 goto $r81 = "";	$r81 = "";	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*");	if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*)");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::jjtCreate(");	$r63 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r81);	$r61 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r62 = virtualinvoke $r61.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>();	$r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r66);	goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()];	$z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z6 == 0 goto $r18 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24);	$z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	$z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	if $z3 == 0 goto return;	return
;block_num 12