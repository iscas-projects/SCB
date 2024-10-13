(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2258 0)
(declare-sort var3629 0)
(declare-sort var3353 0)
(declare-sort var2634 0)
(declare-sort var202 0)
(declare-sort var609 0)
(declare-sort var1330 0)
(declare-sort var2431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node_descriptor/-576648796 (var3629) var202)
(declare-fun getNodeType/-707025417 (var202) String)
(declare-fun var609_getNodeClass/-1384960322 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1330_ensure/-405642493 (var3353 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeVar/-576648796 (var3629) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var3353 String) void)
(declare-fun var2431_getStatic/-616544340 () Bool)
(declare-fun var609_getNodeUsesParser/1997544654 () Bool)
(declare-fun var609_getNodeFactory/-1655041108 () String)
(declare-fun getNodeId/-1379187338 (var202) String)
(declare-fun println/1333914633 (var3353 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var3629) Bool)
(declare-fun openNode/114769770 (var202 String) String)
(declare-fun var609_getNodeScopeHook/893147786 () Bool)
(declare-fun var609_getTrackTokens/1877101562 () Bool)
(declare-const null-var2258 var2258)
(declare-const null-var3629 var3629)
(declare-const null-var3353 var3353)
(declare-const null-String String)
(declare-const var1776 var2258) ; Statement: r73 := @this: org.javacc.jjtree.JavaCodeGenerator 
(assert (not (= var1776 null-var2258)))
(declare-const var3611 var3629) ; Statement: r0 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var3611 null-var3629)))
(declare-const var1317 var3353) ; Statement: r4 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var1317 null-var3353)))
(declare-const var3134 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var3134 null-String)))
(define-const var3019 var202 (node_descriptor/-576648796 var3611)) ; Statement: $r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var561 String (getNodeType/-707025417 var3019)) ; Statement: r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>() 
(define-const var1237 String var609_getNodeClass/-1384960322) ; Statement: $r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>() 
(assert true)
(define-const var2878 Int (length/-134980193 var1237)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto r74 = r2 
(assert (<= var2878 0)) ; Cond: $i0 <= 0 
(define-const var3219 String var561) ; Statement: r74 = r2 
(assert true) ; Non Conditional
;(assert (var1330_ensure/-405642493 var1317 var561)) ; Statement: staticinvoke <org.javacc.jjtree.NodeFiles: void ensure(org.javacc.jjtree.IO,java.lang.String)>(r4, r2) 

(declare-const var1317!1 var3353)
(declare-const var561!1 String)
(define-const var2369 String String-init) ; Statement: $r75 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2369)) ; Statement: specialinvoke $r75.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2369!1 String)
(assert (= var2369!1 ""))
(assert true)
(define-const var3027 String (append/672562846 var2369!1 var3134)) ; Statement: $r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2369!2 String)
(assert (= var2369!2 (str.++ var2369!1 var3134)))
(assert true)
(define-const var1391 String (append/672562846 var3027 var3219)) ; Statement: $r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var3027!1 String)
(assert (= var3027!1 (str.++ var3027 var3219)))
(assert true)
(define-const var1962 String (append/672562846 var1391 " ")) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var1391!1 String)
(assert (= var1391!1 (str.++ var1391 " ")))
(define-const var111 String (nodeVar/-576648796 var3611)) ; Statement: $r79 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var2133 String (append/672562846 var1962 var111)) ; Statement: $r80 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79) 
(declare-const var1962!1 String)
(assert (= var1962!1 (str.++ var1962 var111)))
(assert true)
(define-const var1915 String (append/672562846 var2133 " = ")) ; Statement: $r81 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var2133!1 String)
(assert (= var2133!1 (str.++ var2133 " = ")))
(assert true)
(define-const var3318 String (toString/-2075883882 var1915)) ; Statement: $r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var1317!1 var3318)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r82) 

(declare-const var1317!2 var3353)
(declare-const var3318!1 String)
(define-const var949 Bool var2431_getStatic/-616544340) ; Statement: $z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>() 
 ; Statement: if $z5 == 0 goto $r83 = "this" 
(assert (not (= (ite var949 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var1708 String "null") ; Statement: $r83 = "null" 
 ; Statement: goto [?= $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>()] 
(assert true) ; Non Conditional
(define-const var950 Bool var609_getNodeUsesParser/1997544654) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>() 
 ; Statement: if $z0 == 0 goto $r84 = "" 
(assert (= (ite var950 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1495 String "") ; Statement: $r84 = "" 
(assert true) ; Non Conditional
(define-const var1972 String var609_getNodeFactory/-1655041108) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert true)
(define-const var1177 Bool (= var1972 "*")) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*") 
 ; Statement: if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert (not (= (ite var1177 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3162 String String-init) ; Statement: $r58 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3162)) ; Statement: specialinvoke $r58.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3162!1 String)
(assert (= var3162!1 ""))
(assert true)
(define-const var912 String (append/672562846 var3162!1 "(")) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3162!2 String)
(assert (= var3162!2 (str.++ var3162!1 "(")))
(assert true)
(define-const var2496 String (append/672562846 var912 var3219)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var912!1 String)
(assert (= var912!1 (str.++ var912 var3219)))
(assert true)
(define-const var65 String (append/672562846 var2496 ")")) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2496!1 String)
(assert (= var2496!1 (str.++ var2496 ")")))
(assert true)
(define-const var2964 String (append/672562846 var65 var3219)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var65!1 String)
(assert (= var65!1 (str.++ var65 var3219)))
(assert true)
(define-const var3640 String (append/672562846 var2964 ".jjtCreate(")) ; Statement: $r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jjtCreate(") 
(declare-const var2964!1 String)
(assert (= var2964!1 (str.++ var2964 ".jjtCreate(")))
(assert true)
(define-const var2847 String (append/672562846 var3640 var1495)) ; Statement: $r66 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r84) 
(declare-const var3640!1 String)
(assert (= var3640!1 (str.++ var3640 var1495)))
(define-const var3811 var202 (node_descriptor/-576648796 var3611)) ; Statement: $r64 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var3 String (getNodeId/-1379187338 var3811)) ; Statement: $r65 = virtualinvoke $r64.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>() 
(assert true)
(define-const var1425 String (append/672562846 var2847 var3)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r65) 
(declare-const var2847!1 String)
(assert (= var2847!1 (str.++ var2847 var3)))
(assert true)
(define-const var148 String (append/672562846 var1425 ");")) ; Statement: $r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var1425!1 String)
(assert (= var1425!1 (str.++ var1425 ");")))
(assert true)
(define-const var1343 String (toString/-2075883882 var148)) ; Statement: $r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1317!2 var1343)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r69) 

(declare-const var1317!3 var3353)
(declare-const var1343!1 String)
 ; Statement: goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var1721 Bool (usesCloseNodeVar/-1769174946 var3611)) ; Statement: $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z6 == 0 goto $r18 = new java.lang.StringBuilder 
(assert (= (ite var1721 1 0) 0)) ; Cond: $z6 == 0 
(define-const var2452 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2452)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2452!1 String)
(assert (= var2452!1 ""))
(assert true)
(define-const var710 String (append/672562846 var2452!1 var3134)) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2452!2 String)
(assert (= var2452!2 (str.++ var2452!1 var3134)))
(define-const var3032 var202 (node_descriptor/-576648796 var3611)) ; Statement: $r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(define-const var2189 String (nodeVar/-576648796 var3611)) ; Statement: $r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var2818 String (openNode/114769770 var3032 var2189)) ; Statement: $r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19) 
(assert true)
(define-const var1000 String (append/672562846 var710 var2818)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var710!1 String)
(assert (= var710!1 (str.++ var710 var2818)))
(assert true)
(define-const var2595 String (toString/-2075883882 var1000)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var1317!3 var2595)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24) 

(declare-const var1317!4 var3353)
(declare-const var2595!1 String)
(define-const var2574 Bool var609_getNodeScopeHook/893147786) ; Statement: $z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
 ; Statement: if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
(assert (= (ite var2574 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1528 Bool var609_getTrackTokens/1877101562) ; Statement: $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var1528 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {node_descriptor/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTNodeDescriptor), getNodeType/-707025417=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), var609_getNodeClass/-1384960322=([], java.lang.String), length/-134980193=([java.lang.String], int), var1330_ensure/-405642493=([org.javacc.jjtree.IO, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeVar/-576648796=([org.javacc.jjtree.NodeScope], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), var2431_getStatic/-616544340=([], boolean), var609_getNodeUsesParser/1997544654=([], boolean), var609_getNodeFactory/-1655041108=([], java.lang.String), getNodeId/-1379187338=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean), openNode/114769770=([org.javacc.jjtree.ASTNodeDescriptor, java.lang.String], java.lang.String), var609_getNodeScopeHook/893147786=([], boolean), var609_getTrackTokens/1877101562=([], boolean)}
; {var2258=org.javacc.jjtree.JavaCodeGenerator, var1776=r73, var3629=org.javacc.jjtree.NodeScope, var3611=r0, var3353=org.javacc.jjtree.IO, var1317=r4, var3134=r5, var2634=null_type, var202=org.javacc.jjtree.ASTNodeDescriptor, var3019=$r1, var561=r2, var609=org.javacc.jjtree.JJTreeOptions, var1237=$r3, var2878=$i0, var3219=r74, var1330=org.javacc.jjtree.NodeFiles, var2369=$r75, var3027=$r76, var1391=$r77, var1962=$r78, var111=$r79, var2133=$r80, var1915=$r81, var3318=$r82, var2431=org.javacc.parser.Options, var949=$z5, var1708=$r83, var950=$z0, var1495=$r84, var1972=$r6, var1177=$z1, var3162=$r58, var912=$r59, var2496=$r60, var65=$r61, var2964=$r62, var3640=$r63, var2847=$r66, var3811=$r64, var3=$r65, var1425=$r67, var148=$r68, var1343=$r69, var1721=$z6, var2452=$r18, var710=$r22, var3032=$r20, var2189=$r19, var2818=$r21, var1000=$r23, var2595=$r24, var2574=$z2, var1528=$z3}
; {org.javacc.jjtree.JavaCodeGenerator=var2258, r73=var1776, org.javacc.jjtree.NodeScope=var3629, r0=var3611, org.javacc.jjtree.IO=var3353, r4=var1317, r5=var3134, null_type=var2634, org.javacc.jjtree.ASTNodeDescriptor=var202, $r1=var3019, r2=var561, org.javacc.jjtree.JJTreeOptions=var609, $r3=var1237, $i0=var2878, r74=var3219, org.javacc.jjtree.NodeFiles=var1330, $r75=var2369, $r76=var3027, $r77=var1391, $r78=var1962, $r79=var111, $r80=var2133, $r81=var1915, $r82=var3318, org.javacc.parser.Options=var2431, $z5=var949, $r83=var1708, $z0=var950, $r84=var1495, $r6=var1972, $z1=var1177, $r58=var3162, $r59=var912, $r60=var2496, $r61=var65, $r62=var2964, $r63=var3640, $r66=var2847, $r64=var3811, $r65=var3, $r67=var1425, $r68=var148, $r69=var1343, $z6=var1721, $r18=var2452, $r22=var710, $r20=var3032, $r19=var2189, $r21=var2818, $r23=var1000, $r24=var2595, $z2=var2574, $z3=var1528}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 15,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r73 := @this: org.javacc.jjtree.JavaCodeGenerator;	r0 := @parameter0: org.javacc.jjtree.NodeScope;	r4 := @parameter1: org.javacc.jjtree.IO;	r5 := @parameter2: java.lang.String;	$r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>();	$r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>();	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	if $i0 <= 0 goto r74 = r2;	r74 = r2;	staticinvoke <org.javacc.jjtree.NodeFiles: void ensure(org.javacc.jjtree.IO,java.lang.String)>(r4, r2);	$r75 = new java.lang.StringBuilder;	specialinvoke $r75.<java.lang.StringBuilder: void <init>()>();	$r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r79 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r80 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79);	$r81 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r82);	$z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>();	if $z5 == 0 goto $r83 = "this";	$r83 = "null";	goto [?= $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>()];	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>();	if $z0 == 0 goto $r84 = "";	$r84 = "";	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*");	if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$r58 = new java.lang.StringBuilder;	specialinvoke $r58.<java.lang.StringBuilder: void <init>()>();	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jjtCreate(");	$r66 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r84);	$r64 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r65 = virtualinvoke $r64.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>();	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r65);	$r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r69);	goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()];	$z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z6 == 0 goto $r18 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24);	$z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	$z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	if $z3 == 0 goto return;	return
;block_num 12