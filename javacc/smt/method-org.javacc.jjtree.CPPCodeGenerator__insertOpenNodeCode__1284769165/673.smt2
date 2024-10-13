(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var900 0)
(declare-sort var1431 0)
(declare-sort var1923 0)
(declare-sort var464 0)
(declare-sort var2698 0)
(declare-sort var3160 0)
(declare-sort var1802 0)
(declare-sort var2434 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node_descriptor/-576648796 (var1431) var2698)
(declare-fun getNodeType/-707025417 (var2698) String)
(declare-fun var3160_getNodeClass/-1384960322 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1802_addType/-972038703 (String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeVar/-576648796 (var1431) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var1923 String) void)
(declare-fun var2434_getStatic/-616544340 () Bool)
(declare-fun var3160_getNodeUsesParser/1997544654 () Bool)
(declare-fun var3160_getNodeFactory/-1655041108 () String)
(declare-fun getNodeId/-1379187338 (var2698) String)
(declare-fun println/1333914633 (var1923 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var1431) Bool)
(declare-fun openNode/114769770 (var2698 String) String)
(declare-fun var3160_getNodeScopeHook/893147786 () Bool)
(declare-fun var3160_getTrackTokens/1877101562 () Bool)
(declare-const null-var900 var900)
(declare-const null-var1431 var1431)
(declare-const null-var1923 var1923)
(declare-const null-String String)
(declare-const var1650 var900) ; Statement: r70 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var1650 null-var900)))
(declare-const var627 var1431) ; Statement: r0 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var627 null-var1431)))
(declare-const var1518 var1923) ; Statement: r4 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var1518 null-var1923)))
(declare-const var1723 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var1723 null-String)))
(define-const var2202 var2698 (node_descriptor/-576648796 var627)) ; Statement: $r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var1477 String (getNodeType/-707025417 var2202)) ; Statement: r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>() 
(define-const var931 String var3160_getNodeClass/-1384960322) ; Statement: $r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>() 
(assert true)
(define-const var1540 Int (length/-134980193 var931)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto r71 = r2 
(assert (<= var1540 0)) ; Cond: $i0 <= 0 
(define-const var3743 String var1477) ; Statement: r71 = r2 
(assert true) ; Non Conditional
;(assert (var1802_addType/-972038703 var1477)) ; Statement: staticinvoke <org.javacc.jjtree.CPPNodeFiles: void addType(java.lang.String)>(r2) 

(declare-const var1477!1 String)
(define-const var1739 String String-init) ; Statement: $r72 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1739)) ; Statement: specialinvoke $r72.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1739!1 String)
(assert (= var1739!1 ""))
(assert true)
(define-const var3754 String (append/672562846 var1739!1 var1723)) ; Statement: $r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1739!2 String)
(assert (= var1739!2 (str.++ var1739!1 var1723)))
(assert true)
(define-const var2619 String (append/672562846 var3754 var3743)) ; Statement: $r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var3754!1 String)
(assert (= var3754!1 (str.++ var3754 var3743)))
(assert true)
(define-const var3650 String (append/672562846 var2619 " *")) ; Statement: $r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" *") 
(declare-const var2619!1 String)
(assert (= var2619!1 (str.++ var2619 " *")))
(define-const var1295 String (nodeVar/-576648796 var627)) ; Statement: $r76 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var331 String (append/672562846 var3650 var1295)) ; Statement: $r77 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r76) 
(declare-const var3650!1 String)
(assert (= var3650!1 (str.++ var3650 var1295)))
(assert true)
(define-const var3462 String (append/672562846 var331 " = ")) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var331!1 String)
(assert (= var331!1 (str.++ var331 " = ")))
(assert true)
(define-const var823 String (toString/-2075883882 var3462)) ; Statement: $r79 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var1518 var823)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r79) 

(declare-const var1518!1 var1923)
(declare-const var823!1 String)
(define-const var1294 Bool var2434_getStatic/-616544340) ; Statement: $z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>() 
 ; Statement: if $z5 == 0 goto $r80 = "this" 
(assert (= (ite var1294 1 0) 0)) ; Cond: $z5 == 0 
(define-const var3933 String "this") ; Statement: $r80 = "this" 
(assert true) ; Non Conditional
(define-const var3385 Bool var3160_getNodeUsesParser/1997544654) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>() 
 ; Statement: if $z0 == 0 goto $r81 = "" 
(assert (not (= (ite var3385 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1930 String String-init) ; Statement: $r67 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1930)) ; Statement: specialinvoke $r67.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1930!1 String)
(assert (= var1930!1 ""))
(assert true)
(define-const var3611 String (append/672562846 var1930!1 var3933)) ; Statement: $r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r80) 
(declare-const var1930!2 String)
(assert (= var1930!2 (str.++ var1930!1 var3933)))
(assert true)
(define-const var3602 String (append/672562846 var3611 ", ")) ; Statement: $r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3611!1 String)
(assert (= var3611!1 (str.++ var3611 ", ")))
(assert true)
(define-const var1927 String (toString/-2075883882 var3602)) ; Statement: $r81 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>()] 
(assert true) ; Non Conditional
(define-const var117 String var3160_getNodeFactory/-1655041108) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert true)
(define-const var1814 Bool (= var117 "*")) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*") 
 ; Statement: if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert (not (= (ite var1814 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1105 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1105)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1105!1 String)
(assert (= var1105!1 ""))
(assert true)
(define-const var2852 String (append/672562846 var1105!1 "(")) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1105!2 String)
(assert (= var1105!2 (str.++ var1105!1 "(")))
(assert true)
(define-const var987 String (append/672562846 var2852 var3743)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var2852!1 String)
(assert (= var2852!1 (str.++ var2852 var3743)))
(assert true)
(define-const var843 String (append/672562846 var987 "*)")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*)") 
(declare-const var987!1 String)
(assert (= var987!1 (str.++ var987 "*)")))
(assert true)
(define-const var1825 String (append/672562846 var843 var3743)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var843!1 String)
(assert (= var843!1 (str.++ var843 var3743)))
(assert true)
(define-const var3450 String (append/672562846 var1825 "::jjtCreate(")) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::jjtCreate(") 
(declare-const var1825!1 String)
(assert (= var1825!1 (str.++ var1825 "::jjtCreate(")))
(assert true)
(define-const var1686 String (append/672562846 var3450 var1927)) ; Statement: $r63 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r81) 
(declare-const var3450!1 String)
(assert (= var3450!1 (str.++ var3450 var1927)))
(define-const var1287 var2698 (node_descriptor/-576648796 var627)) ; Statement: $r61 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var970 String (getNodeId/-1379187338 var1287)) ; Statement: $r62 = virtualinvoke $r61.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>() 
(assert true)
(define-const var1855 String (append/672562846 var1686 var970)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62) 
(declare-const var1686!1 String)
(assert (= var1686!1 (str.++ var1686 var970)))
(assert true)
(define-const var2056 String (append/672562846 var1855 ");")) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var1855!1 String)
(assert (= var1855!1 (str.++ var1855 ");")))
(assert true)
(define-const var3284 String (toString/-2075883882 var2056)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1518!1 var3284)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r66) 

(declare-const var1518!2 var1923)
(declare-const var3284!1 String)
 ; Statement: goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3817 Bool (usesCloseNodeVar/-1769174946 var627)) ; Statement: $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z6 == 0 goto $r18 = new java.lang.StringBuilder 
(assert (= (ite var3817 1 0) 0)) ; Cond: $z6 == 0 
(define-const var3927 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3927)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3927!1 String)
(assert (= var3927!1 ""))
(assert true)
(define-const var1089 String (append/672562846 var3927!1 var1723)) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3927!2 String)
(assert (= var3927!2 (str.++ var3927!1 var1723)))
(define-const var1098 var2698 (node_descriptor/-576648796 var627)) ; Statement: $r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(define-const var3847 String (nodeVar/-576648796 var627)) ; Statement: $r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var1870 String (openNode/114769770 var1098 var3847)) ; Statement: $r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19) 
(assert true)
(define-const var3407 String (append/672562846 var1089 var1870)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1089!1 String)
(assert (= var1089!1 (str.++ var1089 var1870)))
(assert true)
(define-const var3026 String (toString/-2075883882 var3407)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1518!2 var3026)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24) 

(declare-const var1518!3 var1923)
(declare-const var3026!1 String)
(define-const var1058 Bool var3160_getNodeScopeHook/893147786) ; Statement: $z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
 ; Statement: if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
(assert (= (ite var1058 1 0) 0)) ; Cond: $z2 == 0 
(define-const var377 Bool var3160_getTrackTokens/1877101562) ; Statement: $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var377 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {node_descriptor/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTNodeDescriptor), getNodeType/-707025417=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), var3160_getNodeClass/-1384960322=([], java.lang.String), length/-134980193=([java.lang.String], int), var1802_addType/-972038703=([java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeVar/-576648796=([org.javacc.jjtree.NodeScope], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), var2434_getStatic/-616544340=([], boolean), var3160_getNodeUsesParser/1997544654=([], boolean), var3160_getNodeFactory/-1655041108=([], java.lang.String), getNodeId/-1379187338=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean), openNode/114769770=([org.javacc.jjtree.ASTNodeDescriptor, java.lang.String], java.lang.String), var3160_getNodeScopeHook/893147786=([], boolean), var3160_getTrackTokens/1877101562=([], boolean)}
; {var900=org.javacc.jjtree.CPPCodeGenerator, var1650=r70, var1431=org.javacc.jjtree.NodeScope, var627=r0, var1923=org.javacc.jjtree.IO, var1518=r4, var1723=r5, var464=null_type, var2698=org.javacc.jjtree.ASTNodeDescriptor, var2202=$r1, var1477=r2, var3160=org.javacc.jjtree.JJTreeOptions, var931=$r3, var1540=$i0, var3743=r71, var1802=org.javacc.jjtree.CPPNodeFiles, var1739=$r72, var3754=$r73, var2619=$r74, var3650=$r75, var1295=$r76, var331=$r77, var3462=$r78, var823=$r79, var2434=org.javacc.parser.Options, var1294=$z5, var3933=$r80, var3385=$z0, var1930=$r67, var3611=$r68, var3602=$r69, var1927=$r81, var117=$r6, var1814=$z1, var1105=$r55, var2852=$r56, var987=$r57, var843=$r58, var1825=$r59, var3450=$r60, var1686=$r63, var1287=$r61, var970=$r62, var1855=$r64, var2056=$r65, var3284=$r66, var3817=$z6, var3927=$r18, var1089=$r22, var1098=$r20, var3847=$r19, var1870=$r21, var3407=$r23, var3026=$r24, var1058=$z2, var377=$z3}
; {org.javacc.jjtree.CPPCodeGenerator=var900, r70=var1650, org.javacc.jjtree.NodeScope=var1431, r0=var627, org.javacc.jjtree.IO=var1923, r4=var1518, r5=var1723, null_type=var464, org.javacc.jjtree.ASTNodeDescriptor=var2698, $r1=var2202, r2=var1477, org.javacc.jjtree.JJTreeOptions=var3160, $r3=var931, $i0=var1540, r71=var3743, org.javacc.jjtree.CPPNodeFiles=var1802, $r72=var1739, $r73=var3754, $r74=var2619, $r75=var3650, $r76=var1295, $r77=var331, $r78=var3462, $r79=var823, org.javacc.parser.Options=var2434, $z5=var1294, $r80=var3933, $z0=var3385, $r67=var1930, $r68=var3611, $r69=var3602, $r81=var1927, $r6=var117, $z1=var1814, $r55=var1105, $r56=var2852, $r57=var987, $r58=var843, $r59=var1825, $r60=var3450, $r63=var1686, $r61=var1287, $r62=var970, $r64=var1855, $r65=var2056, $r66=var3284, $z6=var3817, $r18=var3927, $r22=var1089, $r20=var1098, $r19=var3847, $r21=var1870, $r23=var3407, $r24=var3026, $z2=var1058, $z3=var377}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 17,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r70 := @this: org.javacc.jjtree.CPPCodeGenerator;	r0 := @parameter0: org.javacc.jjtree.NodeScope;	r4 := @parameter1: org.javacc.jjtree.IO;	r5 := @parameter2: java.lang.String;	$r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>();	$r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>();	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	if $i0 <= 0 goto r71 = r2;	r71 = r2;	staticinvoke <org.javacc.jjtree.CPPNodeFiles: void addType(java.lang.String)>(r2);	$r72 = new java.lang.StringBuilder;	specialinvoke $r72.<java.lang.StringBuilder: void <init>()>();	$r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" *");	$r76 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r77 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r76);	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r79 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r79);	$z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>();	if $z5 == 0 goto $r80 = "this";	$r80 = "this";	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>();	if $z0 == 0 goto $r81 = "";	$r67 = new java.lang.StringBuilder;	specialinvoke $r67.<java.lang.StringBuilder: void <init>()>();	$r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r80);	$r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r81 = virtualinvoke $r69.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>()];	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*");	if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*)");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::jjtCreate(");	$r63 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r81);	$r61 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r62 = virtualinvoke $r61.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>();	$r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r66);	goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()];	$z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z6 == 0 goto $r18 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24);	$z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	$z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	if $z3 == 0 goto return;	return
;block_num 12