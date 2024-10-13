(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2073 0)
(declare-sort var2645 0)
(declare-sort var3493 0)
(declare-sort var2437 0)
(declare-sort var1975 0)
(declare-sort var2235 0)
(declare-sort var3397 0)
(declare-sort var3427 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node_descriptor/-576648796 (var2645) var1975)
(declare-fun getNodeType/-707025417 (var1975) String)
(declare-fun var2235_getNodeClass/-1384960322 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3397_ensure/-405642493 (var3493 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeVar/-576648796 (var2645) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var3493 String) void)
(declare-fun var3427_getStatic/-616544340 () Bool)
(declare-fun var2235_getNodeUsesParser/1997544654 () Bool)
(declare-fun var2235_getNodeFactory/-1655041108 () String)
(declare-fun getNodeId/-1379187338 (var1975) String)
(declare-fun println/1333914633 (var3493 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var2645) Bool)
(declare-fun openNode/114769770 (var1975 String) String)
(declare-fun var2235_getNodeScopeHook/893147786 () Bool)
(declare-fun var2235_getTrackTokens/1877101562 () Bool)
(declare-const null-var2073 var2073)
(declare-const null-var2645 var2645)
(declare-const null-var3493 var3493)
(declare-const null-String String)
(declare-const var819 var2073) ; Statement: r73 := @this: org.javacc.jjtree.JavaCodeGenerator 
(assert (not (= var819 null-var2073)))
(declare-const var1879 var2645) ; Statement: r0 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var1879 null-var2645)))
(declare-const var2263 var3493) ; Statement: r4 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var2263 null-var3493)))
(declare-const var2443 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2443 null-String)))
(define-const var462 var1975 (node_descriptor/-576648796 var1879)) ; Statement: $r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var2992 String (getNodeType/-707025417 var462)) ; Statement: r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>() 
(define-const var1304 String var2235_getNodeClass/-1384960322) ; Statement: $r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>() 
(assert true)
(define-const var2654 Int (length/-134980193 var1304)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto r74 = r2 
(assert (<= var2654 0)) ; Cond: $i0 <= 0 
(define-const var866 String var2992) ; Statement: r74 = r2 
(assert true) ; Non Conditional
;(assert (var3397_ensure/-405642493 var2263 var2992)) ; Statement: staticinvoke <org.javacc.jjtree.NodeFiles: void ensure(org.javacc.jjtree.IO,java.lang.String)>(r4, r2) 

(declare-const var2263!1 var3493)
(declare-const var2992!1 String)
(define-const var3617 String String-init) ; Statement: $r75 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3617)) ; Statement: specialinvoke $r75.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3617!1 String)
(assert (= var3617!1 ""))
(assert true)
(define-const var3695 String (append/672562846 var3617!1 var2443)) ; Statement: $r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3617!2 String)
(assert (= var3617!2 (str.++ var3617!1 var2443)))
(assert true)
(define-const var1421 String (append/672562846 var3695 var866)) ; Statement: $r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var3695!1 String)
(assert (= var3695!1 (str.++ var3695 var866)))
(assert true)
(define-const var2086 String (append/672562846 var1421 " ")) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1421!1 String)
(assert (= var1421!1 (str.++ var1421 " ")))
(define-const var1662 String (nodeVar/-576648796 var1879)) ; Statement: $r79 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var571 String (append/672562846 var2086 var1662)) ; Statement: $r80 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79) 
(declare-const var2086!1 String)
(assert (= var2086!1 (str.++ var2086 var1662)))
(assert true)
(define-const var1712 String (append/672562846 var571 " = ")) ; Statement: $r81 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var571!1 String)
(assert (= var571!1 (str.++ var571 " = ")))
(assert true)
(define-const var3478 String (toString/-2075883882 var1712)) ; Statement: $r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var2263!1 var3478)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r82) 

(declare-const var2263!2 var3493)
(declare-const var3478!1 String)
(define-const var3795 Bool var3427_getStatic/-616544340) ; Statement: $z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>() 
 ; Statement: if $z5 == 0 goto $r83 = "this" 
(assert (= (ite var3795 1 0) 0)) ; Cond: $z5 == 0 
(define-const var358 String "this") ; Statement: $r83 = "this" 
(assert true) ; Non Conditional
(define-const var2419 Bool var2235_getNodeUsesParser/1997544654) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>() 
 ; Statement: if $z0 == 0 goto $r84 = "" 
(assert (not (= (ite var2419 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2354 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2354)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2354!1 String)
(assert (= var2354!1 ""))
(assert true)
(define-const var1986 String (append/672562846 var2354!1 var358)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83) 
(declare-const var2354!2 String)
(assert (= var2354!2 (str.++ var2354!1 var358)))
(assert true)
(define-const var2046 String (append/672562846 var1986 ", ")) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1986!1 String)
(assert (= var1986!1 (str.++ var1986 ", ")))
(assert true)
(define-const var2482 String (toString/-2075883882 var2046)) ; Statement: $r84 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>()] 
(assert true) ; Non Conditional
(define-const var2319 String var2235_getNodeFactory/-1655041108) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert true)
(define-const var2335 Bool (= var2319 "*")) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*") 
 ; Statement: if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert (not (= (ite var2335 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1670 String String-init) ; Statement: $r58 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1670)) ; Statement: specialinvoke $r58.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1670!1 String)
(assert (= var1670!1 ""))
(assert true)
(define-const var661 String (append/672562846 var1670!1 "(")) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1670!2 String)
(assert (= var1670!2 (str.++ var1670!1 "(")))
(assert true)
(define-const var3870 String (append/672562846 var661 var866)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var661!1 String)
(assert (= var661!1 (str.++ var661 var866)))
(assert true)
(define-const var182 String (append/672562846 var3870 ")")) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3870!1 String)
(assert (= var3870!1 (str.++ var3870 ")")))
(assert true)
(define-const var1651 String (append/672562846 var182 var866)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var182!1 String)
(assert (= var182!1 (str.++ var182 var866)))
(assert true)
(define-const var357 String (append/672562846 var1651 ".jjtCreate(")) ; Statement: $r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jjtCreate(") 
(declare-const var1651!1 String)
(assert (= var1651!1 (str.++ var1651 ".jjtCreate(")))
(assert true)
(define-const var1878 String (append/672562846 var357 var2482)) ; Statement: $r66 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r84) 
(declare-const var357!1 String)
(assert (= var357!1 (str.++ var357 var2482)))
(define-const var3089 var1975 (node_descriptor/-576648796 var1879)) ; Statement: $r64 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var3591 String (getNodeId/-1379187338 var3089)) ; Statement: $r65 = virtualinvoke $r64.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>() 
(assert true)
(define-const var242 String (append/672562846 var1878 var3591)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r65) 
(declare-const var1878!1 String)
(assert (= var1878!1 (str.++ var1878 var3591)))
(assert true)
(define-const var899 String (append/672562846 var242 ");")) ; Statement: $r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var242!1 String)
(assert (= var242!1 (str.++ var242 ");")))
(assert true)
(define-const var1395 String (toString/-2075883882 var899)) ; Statement: $r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var2263!2 var1395)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r69) 

(declare-const var2263!3 var3493)
(declare-const var1395!1 String)
 ; Statement: goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2541 Bool (usesCloseNodeVar/-1769174946 var1879)) ; Statement: $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z6 == 0 goto $r18 = new java.lang.StringBuilder 
(assert (= (ite var2541 1 0) 0)) ; Cond: $z6 == 0 
(define-const var3460 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3460)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3460!1 String)
(assert (= var3460!1 ""))
(assert true)
(define-const var1312 String (append/672562846 var3460!1 var2443)) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3460!2 String)
(assert (= var3460!2 (str.++ var3460!1 var2443)))
(define-const var851 var1975 (node_descriptor/-576648796 var1879)) ; Statement: $r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(define-const var3843 String (nodeVar/-576648796 var1879)) ; Statement: $r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var3215 String (openNode/114769770 var851 var3843)) ; Statement: $r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19) 
(assert true)
(define-const var2921 String (append/672562846 var1312 var3215)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1312!1 String)
(assert (= var1312!1 (str.++ var1312 var3215)))
(assert true)
(define-const var3561 String (toString/-2075883882 var2921)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var2263!3 var3561)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24) 

(declare-const var2263!4 var3493)
(declare-const var3561!1 String)
(define-const var3483 Bool var2235_getNodeScopeHook/893147786) ; Statement: $z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
 ; Statement: if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
(assert (= (ite var3483 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2326 Bool var2235_getTrackTokens/1877101562) ; Statement: $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var2326 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {node_descriptor/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTNodeDescriptor), getNodeType/-707025417=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), var2235_getNodeClass/-1384960322=([], java.lang.String), length/-134980193=([java.lang.String], int), var3397_ensure/-405642493=([org.javacc.jjtree.IO, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeVar/-576648796=([org.javacc.jjtree.NodeScope], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), var3427_getStatic/-616544340=([], boolean), var2235_getNodeUsesParser/1997544654=([], boolean), var2235_getNodeFactory/-1655041108=([], java.lang.String), getNodeId/-1379187338=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean), openNode/114769770=([org.javacc.jjtree.ASTNodeDescriptor, java.lang.String], java.lang.String), var2235_getNodeScopeHook/893147786=([], boolean), var2235_getTrackTokens/1877101562=([], boolean)}
; {var2073=org.javacc.jjtree.JavaCodeGenerator, var819=r73, var2645=org.javacc.jjtree.NodeScope, var1879=r0, var3493=org.javacc.jjtree.IO, var2263=r4, var2443=r5, var2437=null_type, var1975=org.javacc.jjtree.ASTNodeDescriptor, var462=$r1, var2992=r2, var2235=org.javacc.jjtree.JJTreeOptions, var1304=$r3, var2654=$i0, var866=r74, var3397=org.javacc.jjtree.NodeFiles, var3617=$r75, var3695=$r76, var1421=$r77, var2086=$r78, var1662=$r79, var571=$r80, var1712=$r81, var3478=$r82, var3427=org.javacc.parser.Options, var3795=$z5, var358=$r83, var2419=$z0, var2354=$r70, var1986=$r71, var2046=$r72, var2482=$r84, var2319=$r6, var2335=$z1, var1670=$r58, var661=$r59, var3870=$r60, var182=$r61, var1651=$r62, var357=$r63, var1878=$r66, var3089=$r64, var3591=$r65, var242=$r67, var899=$r68, var1395=$r69, var2541=$z6, var3460=$r18, var1312=$r22, var851=$r20, var3843=$r19, var3215=$r21, var2921=$r23, var3561=$r24, var3483=$z2, var2326=$z3}
; {org.javacc.jjtree.JavaCodeGenerator=var2073, r73=var819, org.javacc.jjtree.NodeScope=var2645, r0=var1879, org.javacc.jjtree.IO=var3493, r4=var2263, r5=var2443, null_type=var2437, org.javacc.jjtree.ASTNodeDescriptor=var1975, $r1=var462, r2=var2992, org.javacc.jjtree.JJTreeOptions=var2235, $r3=var1304, $i0=var2654, r74=var866, org.javacc.jjtree.NodeFiles=var3397, $r75=var3617, $r76=var3695, $r77=var1421, $r78=var2086, $r79=var1662, $r80=var571, $r81=var1712, $r82=var3478, org.javacc.parser.Options=var3427, $z5=var3795, $r83=var358, $z0=var2419, $r70=var2354, $r71=var1986, $r72=var2046, $r84=var2482, $r6=var2319, $z1=var2335, $r58=var1670, $r59=var661, $r60=var3870, $r61=var182, $r62=var1651, $r63=var357, $r66=var1878, $r64=var3089, $r65=var3591, $r67=var242, $r68=var899, $r69=var1395, $z6=var2541, $r18=var3460, $r22=var1312, $r20=var851, $r19=var3843, $r21=var3215, $r23=var2921, $r24=var3561, $z2=var3483, $z3=var2326}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 17,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r73 := @this: org.javacc.jjtree.JavaCodeGenerator;	r0 := @parameter0: org.javacc.jjtree.NodeScope;	r4 := @parameter1: org.javacc.jjtree.IO;	r5 := @parameter2: java.lang.String;	$r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>();	$r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>();	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	if $i0 <= 0 goto r74 = r2;	r74 = r2;	staticinvoke <org.javacc.jjtree.NodeFiles: void ensure(org.javacc.jjtree.IO,java.lang.String)>(r4, r2);	$r75 = new java.lang.StringBuilder;	specialinvoke $r75.<java.lang.StringBuilder: void <init>()>();	$r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r79 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r80 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79);	$r81 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r82);	$z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>();	if $z5 == 0 goto $r83 = "this";	$r83 = "this";	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>();	if $z0 == 0 goto $r84 = "";	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r84 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>()];	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*");	if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$r58 = new java.lang.StringBuilder;	specialinvoke $r58.<java.lang.StringBuilder: void <init>()>();	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jjtCreate(");	$r66 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r84);	$r64 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r65 = virtualinvoke $r64.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>();	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r65);	$r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r69);	goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()];	$z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z6 == 0 goto $r18 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24);	$z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	$z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	if $z3 == 0 goto return;	return
;block_num 12