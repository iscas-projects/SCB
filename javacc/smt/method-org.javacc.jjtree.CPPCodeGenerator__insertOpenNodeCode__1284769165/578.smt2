(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3052 0)
(declare-sort var685 0)
(declare-sort var3635 0)
(declare-sort var152 0)
(declare-sort var1137 0)
(declare-sort var1526 0)
(declare-sort var2857 0)
(declare-sort var2691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node_descriptor/-576648796 (var685) var1137)
(declare-fun getNodeType/-707025417 (var1137) String)
(declare-fun var1526_getNodeClass/-1384960322 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2857_addType/-972038703 (String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeVar/-576648796 (var685) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var3635 String) void)
(declare-fun var2691_getStatic/-616544340 () Bool)
(declare-fun var1526_getNodeUsesParser/1997544654 () Bool)
(declare-fun var1526_getNodeFactory/-1655041108 () String)
(declare-fun getNodeId/-1379187338 (var1137) String)
(declare-fun println/1333914633 (var3635 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var685) Bool)
(declare-fun openNode/114769770 (var1137 String) String)
(declare-fun var1526_getNodeScopeHook/893147786 () Bool)
(declare-fun var1526_getTrackTokens/1877101562 () Bool)
(declare-const null-var3052 var3052)
(declare-const null-var685 var685)
(declare-const null-var3635 var3635)
(declare-const null-String String)
(declare-const var2913 var3052) ; Statement: r70 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var2913 null-var3052)))
(declare-const var1650 var685) ; Statement: r0 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var1650 null-var685)))
(declare-const var921 var3635) ; Statement: r4 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var921 null-var3635)))
(declare-const var3988 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var3988 null-String)))
(define-const var1520 var1137 (node_descriptor/-576648796 var1650)) ; Statement: $r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var3227 String (getNodeType/-707025417 var1520)) ; Statement: r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>() 
(define-const var723 String var1526_getNodeClass/-1384960322) ; Statement: $r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>() 
(assert true)
(define-const var3820 Int (length/-134980193 var723)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto r71 = r2 
(assert (<= var3820 0)) ; Cond: $i0 <= 0 
(define-const var2910 String var3227) ; Statement: r71 = r2 
(assert true) ; Non Conditional
;(assert (var2857_addType/-972038703 var3227)) ; Statement: staticinvoke <org.javacc.jjtree.CPPNodeFiles: void addType(java.lang.String)>(r2) 

(declare-const var3227!1 String)
(define-const var545 String String-init) ; Statement: $r72 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var545)) ; Statement: specialinvoke $r72.<java.lang.StringBuilder: void <init>()>() 
(declare-const var545!1 String)
(assert (= var545!1 ""))
(assert true)
(define-const var816 String (append/672562846 var545!1 var3988)) ; Statement: $r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var545!2 String)
(assert (= var545!2 (str.++ var545!1 var3988)))
(assert true)
(define-const var2444 String (append/672562846 var816 var2910)) ; Statement: $r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var816!1 String)
(assert (= var816!1 (str.++ var816 var2910)))
(assert true)
(define-const var210 String (append/672562846 var2444 " *")) ; Statement: $r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" *") 
(declare-const var2444!1 String)
(assert (= var2444!1 (str.++ var2444 " *")))
(define-const var2728 String (nodeVar/-576648796 var1650)) ; Statement: $r76 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var77 String (append/672562846 var210 var2728)) ; Statement: $r77 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r76) 
(declare-const var210!1 String)
(assert (= var210!1 (str.++ var210 var2728)))
(assert true)
(define-const var1296 String (append/672562846 var77 " = ")) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var77!1 String)
(assert (= var77!1 (str.++ var77 " = ")))
(assert true)
(define-const var2855 String (toString/-2075883882 var1296)) ; Statement: $r79 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var921 var2855)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r79) 

(declare-const var921!1 var3635)
(declare-const var2855!1 String)
(define-const var1389 Bool var2691_getStatic/-616544340) ; Statement: $z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>() 
 ; Statement: if $z5 == 0 goto $r80 = "this" 
(assert (not (= (ite var1389 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var1157 String "null") ; Statement: $r80 = "null" 
 ; Statement: goto [?= $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>()] 
(assert true) ; Non Conditional
(define-const var2419 Bool var1526_getNodeUsesParser/1997544654) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>() 
 ; Statement: if $z0 == 0 goto $r81 = "" 
(assert (not (= (ite var2419 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2499 String String-init) ; Statement: $r67 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2499)) ; Statement: specialinvoke $r67.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2499!1 String)
(assert (= var2499!1 ""))
(assert true)
(define-const var959 String (append/672562846 var2499!1 var1157)) ; Statement: $r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r80) 
(declare-const var2499!2 String)
(assert (= var2499!2 (str.++ var2499!1 var1157)))
(assert true)
(define-const var2487 String (append/672562846 var959 ", ")) ; Statement: $r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var959!1 String)
(assert (= var959!1 (str.++ var959 ", ")))
(assert true)
(define-const var1823 String (toString/-2075883882 var2487)) ; Statement: $r81 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>()] 
(assert true) ; Non Conditional
(define-const var562 String var1526_getNodeFactory/-1655041108) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert true)
(define-const var2573 Bool (= var562 "*")) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*") 
 ; Statement: if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert (not (= (ite var2573 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var207 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var207)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var207!1 String)
(assert (= var207!1 ""))
(assert true)
(define-const var2873 String (append/672562846 var207!1 "(")) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var207!2 String)
(assert (= var207!2 (str.++ var207!1 "(")))
(assert true)
(define-const var2523 String (append/672562846 var2873 var2910)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var2873!1 String)
(assert (= var2873!1 (str.++ var2873 var2910)))
(assert true)
(define-const var3885 String (append/672562846 var2523 "*)")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*)") 
(declare-const var2523!1 String)
(assert (= var2523!1 (str.++ var2523 "*)")))
(assert true)
(define-const var2147 String (append/672562846 var3885 var2910)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var3885!1 String)
(assert (= var3885!1 (str.++ var3885 var2910)))
(assert true)
(define-const var2790 String (append/672562846 var2147 "::jjtCreate(")) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::jjtCreate(") 
(declare-const var2147!1 String)
(assert (= var2147!1 (str.++ var2147 "::jjtCreate(")))
(assert true)
(define-const var615 String (append/672562846 var2790 var1823)) ; Statement: $r63 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r81) 
(declare-const var2790!1 String)
(assert (= var2790!1 (str.++ var2790 var1823)))
(define-const var2697 var1137 (node_descriptor/-576648796 var1650)) ; Statement: $r61 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var315 String (getNodeId/-1379187338 var2697)) ; Statement: $r62 = virtualinvoke $r61.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>() 
(assert true)
(define-const var1698 String (append/672562846 var615 var315)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62) 
(declare-const var615!1 String)
(assert (= var615!1 (str.++ var615 var315)))
(assert true)
(define-const var837 String (append/672562846 var1698 ");")) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var1698!1 String)
(assert (= var1698!1 (str.++ var1698 ");")))
(assert true)
(define-const var1007 String (toString/-2075883882 var837)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var921!1 var1007)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r66) 

(declare-const var921!2 var3635)
(declare-const var1007!1 String)
 ; Statement: goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2020 Bool (usesCloseNodeVar/-1769174946 var1650)) ; Statement: $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z6 == 0 goto $r18 = new java.lang.StringBuilder 
(assert (= (ite var2020 1 0) 0)) ; Cond: $z6 == 0 
(define-const var1845 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1845)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1845!1 String)
(assert (= var1845!1 ""))
(assert true)
(define-const var3590 String (append/672562846 var1845!1 var3988)) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1845!2 String)
(assert (= var1845!2 (str.++ var1845!1 var3988)))
(define-const var229 var1137 (node_descriptor/-576648796 var1650)) ; Statement: $r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(define-const var2418 String (nodeVar/-576648796 var1650)) ; Statement: $r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var583 String (openNode/114769770 var229 var2418)) ; Statement: $r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19) 
(assert true)
(define-const var405 String (append/672562846 var3590 var583)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3590!1 String)
(assert (= var3590!1 (str.++ var3590 var583)))
(assert true)
(define-const var1168 String (toString/-2075883882 var405)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var921!2 var1168)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24) 

(declare-const var921!3 var3635)
(declare-const var1168!1 String)
(define-const var3872 Bool var1526_getNodeScopeHook/893147786) ; Statement: $z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
 ; Statement: if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
(assert (= (ite var3872 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2625 Bool var1526_getTrackTokens/1877101562) ; Statement: $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var2625 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {node_descriptor/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTNodeDescriptor), getNodeType/-707025417=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), var1526_getNodeClass/-1384960322=([], java.lang.String), length/-134980193=([java.lang.String], int), var2857_addType/-972038703=([java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeVar/-576648796=([org.javacc.jjtree.NodeScope], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), var2691_getStatic/-616544340=([], boolean), var1526_getNodeUsesParser/1997544654=([], boolean), var1526_getNodeFactory/-1655041108=([], java.lang.String), getNodeId/-1379187338=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean), openNode/114769770=([org.javacc.jjtree.ASTNodeDescriptor, java.lang.String], java.lang.String), var1526_getNodeScopeHook/893147786=([], boolean), var1526_getTrackTokens/1877101562=([], boolean)}
; {var3052=org.javacc.jjtree.CPPCodeGenerator, var2913=r70, var685=org.javacc.jjtree.NodeScope, var1650=r0, var3635=org.javacc.jjtree.IO, var921=r4, var3988=r5, var152=null_type, var1137=org.javacc.jjtree.ASTNodeDescriptor, var1520=$r1, var3227=r2, var1526=org.javacc.jjtree.JJTreeOptions, var723=$r3, var3820=$i0, var2910=r71, var2857=org.javacc.jjtree.CPPNodeFiles, var545=$r72, var816=$r73, var2444=$r74, var210=$r75, var2728=$r76, var77=$r77, var1296=$r78, var2855=$r79, var2691=org.javacc.parser.Options, var1389=$z5, var1157=$r80, var2419=$z0, var2499=$r67, var959=$r68, var2487=$r69, var1823=$r81, var562=$r6, var2573=$z1, var207=$r55, var2873=$r56, var2523=$r57, var3885=$r58, var2147=$r59, var2790=$r60, var615=$r63, var2697=$r61, var315=$r62, var1698=$r64, var837=$r65, var1007=$r66, var2020=$z6, var1845=$r18, var3590=$r22, var229=$r20, var2418=$r19, var583=$r21, var405=$r23, var1168=$r24, var3872=$z2, var2625=$z3}
; {org.javacc.jjtree.CPPCodeGenerator=var3052, r70=var2913, org.javacc.jjtree.NodeScope=var685, r0=var1650, org.javacc.jjtree.IO=var3635, r4=var921, r5=var3988, null_type=var152, org.javacc.jjtree.ASTNodeDescriptor=var1137, $r1=var1520, r2=var3227, org.javacc.jjtree.JJTreeOptions=var1526, $r3=var723, $i0=var3820, r71=var2910, org.javacc.jjtree.CPPNodeFiles=var2857, $r72=var545, $r73=var816, $r74=var2444, $r75=var210, $r76=var2728, $r77=var77, $r78=var1296, $r79=var2855, org.javacc.parser.Options=var2691, $z5=var1389, $r80=var1157, $z0=var2419, $r67=var2499, $r68=var959, $r69=var2487, $r81=var1823, $r6=var562, $z1=var2573, $r55=var207, $r56=var2873, $r57=var2523, $r58=var3885, $r59=var2147, $r60=var2790, $r63=var615, $r61=var2697, $r62=var315, $r64=var1698, $r65=var837, $r66=var1007, $z6=var2020, $r18=var1845, $r22=var3590, $r20=var229, $r19=var2418, $r21=var583, $r23=var405, $r24=var1168, $z2=var3872, $z3=var2625}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 17,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r70 := @this: org.javacc.jjtree.CPPCodeGenerator;	r0 := @parameter0: org.javacc.jjtree.NodeScope;	r4 := @parameter1: org.javacc.jjtree.IO;	r5 := @parameter2: java.lang.String;	$r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>();	$r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>();	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	if $i0 <= 0 goto r71 = r2;	r71 = r2;	staticinvoke <org.javacc.jjtree.CPPNodeFiles: void addType(java.lang.String)>(r2);	$r72 = new java.lang.StringBuilder;	specialinvoke $r72.<java.lang.StringBuilder: void <init>()>();	$r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" *");	$r76 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r77 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r76);	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r79 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r79);	$z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>();	if $z5 == 0 goto $r80 = "this";	$r80 = "null";	goto [?= $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>()];	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>();	if $z0 == 0 goto $r81 = "";	$r67 = new java.lang.StringBuilder;	specialinvoke $r67.<java.lang.StringBuilder: void <init>()>();	$r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r80);	$r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r81 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>()];	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*");	if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*)");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::jjtCreate(");	$r63 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r81);	$r61 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r62 = virtualinvoke $r61.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>();	$r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r66);	goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()];	$z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z6 == 0 goto $r18 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24);	$z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	$z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	if $z3 == 0 goto return;	return
;block_num 12