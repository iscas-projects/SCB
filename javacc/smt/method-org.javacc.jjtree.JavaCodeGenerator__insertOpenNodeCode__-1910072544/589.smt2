(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var545 0)
(declare-sort var757 0)
(declare-sort var56 0)
(declare-sort var2378 0)
(declare-sort var2992 0)
(declare-sort var3961 0)
(declare-sort var3065 0)
(declare-sort var1035 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node_descriptor/-576648796 (var757) var2992)
(declare-fun getNodeType/-707025417 (var2992) String)
(declare-fun var3961_getNodeClass/-1384960322 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var3065_ensure/-405642493 (var56 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeVar/-576648796 (var757) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var56 String) void)
(declare-fun var1035_getStatic/-616544340 () Bool)
(declare-fun var3961_getNodeUsesParser/1997544654 () Bool)
(declare-fun var3961_getNodeFactory/-1655041108 () String)
(declare-fun getNodeId/-1379187338 (var2992) String)
(declare-fun println/1333914633 (var56 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var757) Bool)
(declare-fun openNode/114769770 (var2992 String) String)
(declare-fun var3961_getNodeScopeHook/893147786 () Bool)
(declare-fun var3961_getTrackTokens/1877101562 () Bool)
(declare-const null-var545 var545)
(declare-const null-var757 var757)
(declare-const null-var56 var56)
(declare-const null-String String)
(declare-const var3848 var545) ; Statement: r73 := @this: org.javacc.jjtree.JavaCodeGenerator 
(assert (not (= var3848 null-var545)))
(declare-const var3914 var757) ; Statement: r0 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var3914 null-var757)))
(declare-const var3687 var56) ; Statement: r4 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var3687 null-var56)))
(declare-const var3896 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var3896 null-String)))
(define-const var1698 var2992 (node_descriptor/-576648796 var3914)) ; Statement: $r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var1117 String (getNodeType/-707025417 var1698)) ; Statement: r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>() 
(define-const var3976 String var3961_getNodeClass/-1384960322) ; Statement: $r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>() 
(assert true)
(define-const var1320 Int (length/-134980193 var3976)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto r74 = r2 
(assert (<= var1320 0)) ; Cond: $i0 <= 0 
(define-const var1885 String var1117) ; Statement: r74 = r2 
(assert true) ; Non Conditional
;(assert (var3065_ensure/-405642493 var3687 var1117)) ; Statement: staticinvoke <org.javacc.jjtree.NodeFiles: void ensure(org.javacc.jjtree.IO,java.lang.String)>(r4, r2) 

(declare-const var3687!1 var56)
(declare-const var1117!1 String)
(define-const var3900 String String-init) ; Statement: $r75 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3900)) ; Statement: specialinvoke $r75.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3900!1 String)
(assert (= var3900!1 ""))
(assert true)
(define-const var2944 String (append/672562846 var3900!1 var3896)) ; Statement: $r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3900!2 String)
(assert (= var3900!2 (str.++ var3900!1 var3896)))
(assert true)
(define-const var768 String (append/672562846 var2944 var1885)) ; Statement: $r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var2944!1 String)
(assert (= var2944!1 (str.++ var2944 var1885)))
(assert true)
(define-const var1822 String (append/672562846 var768 " ")) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var768!1 String)
(assert (= var768!1 (str.++ var768 " ")))
(define-const var1319 String (nodeVar/-576648796 var3914)) ; Statement: $r79 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var991 String (append/672562846 var1822 var1319)) ; Statement: $r80 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79) 
(declare-const var1822!1 String)
(assert (= var1822!1 (str.++ var1822 var1319)))
(assert true)
(define-const var3302 String (append/672562846 var991 " = ")) ; Statement: $r81 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var991!1 String)
(assert (= var991!1 (str.++ var991 " = ")))
(assert true)
(define-const var3449 String (toString/-2075883882 var3302)) ; Statement: $r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var3687!1 var3449)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r82) 

(declare-const var3687!2 var56)
(declare-const var3449!1 String)
(define-const var810 Bool var1035_getStatic/-616544340) ; Statement: $z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>() 
 ; Statement: if $z5 == 0 goto $r83 = "this" 
(assert (not (= (ite var810 1 0) 0))) ; Negate: Cond: $z5 == 0  
(define-const var1281 String "null") ; Statement: $r83 = "null" 
 ; Statement: goto [?= $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>()] 
(assert true) ; Non Conditional
(define-const var3786 Bool var3961_getNodeUsesParser/1997544654) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>() 
 ; Statement: if $z0 == 0 goto $r84 = "" 
(assert (not (= (ite var3786 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2512 String String-init) ; Statement: $r70 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2512)) ; Statement: specialinvoke $r70.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2512!1 String)
(assert (= var2512!1 ""))
(assert true)
(define-const var2782 String (append/672562846 var2512!1 var1281)) ; Statement: $r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83) 
(declare-const var2512!2 String)
(assert (= var2512!2 (str.++ var2512!1 var1281)))
(assert true)
(define-const var2967 String (append/672562846 var2782 ", ")) ; Statement: $r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2782!1 String)
(assert (= var2782!1 (str.++ var2782 ", ")))
(assert true)
(define-const var1839 String (toString/-2075883882 var2967)) ; Statement: $r84 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>()] 
(assert true) ; Non Conditional
(define-const var1757 String var3961_getNodeFactory/-1655041108) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert true)
(define-const var2398 Bool (= var1757 "*")) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*") 
 ; Statement: if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert (not (= (ite var2398 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1781 String String-init) ; Statement: $r58 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1781)) ; Statement: specialinvoke $r58.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1781!1 String)
(assert (= var1781!1 ""))
(assert true)
(define-const var1102 String (append/672562846 var1781!1 "(")) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1781!2 String)
(assert (= var1781!2 (str.++ var1781!1 "(")))
(assert true)
(define-const var2423 String (append/672562846 var1102 var1885)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var1102!1 String)
(assert (= var1102!1 (str.++ var1102 var1885)))
(assert true)
(define-const var1176 String (append/672562846 var2423 ")")) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2423!1 String)
(assert (= var2423!1 (str.++ var2423 ")")))
(assert true)
(define-const var708 String (append/672562846 var1176 var1885)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var1176!1 String)
(assert (= var1176!1 (str.++ var1176 var1885)))
(assert true)
(define-const var3598 String (append/672562846 var708 ".jjtCreate(")) ; Statement: $r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jjtCreate(") 
(declare-const var708!1 String)
(assert (= var708!1 (str.++ var708 ".jjtCreate(")))
(assert true)
(define-const var3307 String (append/672562846 var3598 var1839)) ; Statement: $r66 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r84) 
(declare-const var3598!1 String)
(assert (= var3598!1 (str.++ var3598 var1839)))
(define-const var1160 var2992 (node_descriptor/-576648796 var3914)) ; Statement: $r64 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var123 String (getNodeId/-1379187338 var1160)) ; Statement: $r65 = virtualinvoke $r64.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>() 
(assert true)
(define-const var1599 String (append/672562846 var3307 var123)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r65) 
(declare-const var3307!1 String)
(assert (= var3307!1 (str.++ var3307 var123)))
(assert true)
(define-const var511 String (append/672562846 var1599 ");")) ; Statement: $r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var1599!1 String)
(assert (= var1599!1 (str.++ var1599 ");")))
(assert true)
(define-const var1303 String (toString/-2075883882 var511)) ; Statement: $r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3687!2 var1303)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r69) 

(declare-const var3687!3 var56)
(declare-const var1303!1 String)
 ; Statement: goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2000 Bool (usesCloseNodeVar/-1769174946 var3914)) ; Statement: $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z6 == 0 goto $r18 = new java.lang.StringBuilder 
(assert (= (ite var2000 1 0) 0)) ; Cond: $z6 == 0 
(define-const var3820 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3820)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3820!1 String)
(assert (= var3820!1 ""))
(assert true)
(define-const var141 String (append/672562846 var3820!1 var3896)) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3820!2 String)
(assert (= var3820!2 (str.++ var3820!1 var3896)))
(define-const var3453 var2992 (node_descriptor/-576648796 var3914)) ; Statement: $r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(define-const var251 String (nodeVar/-576648796 var3914)) ; Statement: $r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var1808 String (openNode/114769770 var3453 var251)) ; Statement: $r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19) 
(assert true)
(define-const var868 String (append/672562846 var141 var1808)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var141!1 String)
(assert (= var141!1 (str.++ var141 var1808)))
(assert true)
(define-const var1078 String (toString/-2075883882 var868)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3687!3 var1078)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24) 

(declare-const var3687!4 var56)
(declare-const var1078!1 String)
(define-const var2215 Bool var3961_getNodeScopeHook/893147786) ; Statement: $z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
 ; Statement: if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
(assert (= (ite var2215 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1084 Bool var3961_getTrackTokens/1877101562) ; Statement: $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var1084 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {node_descriptor/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTNodeDescriptor), getNodeType/-707025417=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), var3961_getNodeClass/-1384960322=([], java.lang.String), length/-134980193=([java.lang.String], int), var3065_ensure/-405642493=([org.javacc.jjtree.IO, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeVar/-576648796=([org.javacc.jjtree.NodeScope], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), var1035_getStatic/-616544340=([], boolean), var3961_getNodeUsesParser/1997544654=([], boolean), var3961_getNodeFactory/-1655041108=([], java.lang.String), getNodeId/-1379187338=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean), openNode/114769770=([org.javacc.jjtree.ASTNodeDescriptor, java.lang.String], java.lang.String), var3961_getNodeScopeHook/893147786=([], boolean), var3961_getTrackTokens/1877101562=([], boolean)}
; {var545=org.javacc.jjtree.JavaCodeGenerator, var3848=r73, var757=org.javacc.jjtree.NodeScope, var3914=r0, var56=org.javacc.jjtree.IO, var3687=r4, var3896=r5, var2378=null_type, var2992=org.javacc.jjtree.ASTNodeDescriptor, var1698=$r1, var1117=r2, var3961=org.javacc.jjtree.JJTreeOptions, var3976=$r3, var1320=$i0, var1885=r74, var3065=org.javacc.jjtree.NodeFiles, var3900=$r75, var2944=$r76, var768=$r77, var1822=$r78, var1319=$r79, var991=$r80, var3302=$r81, var3449=$r82, var1035=org.javacc.parser.Options, var810=$z5, var1281=$r83, var3786=$z0, var2512=$r70, var2782=$r71, var2967=$r72, var1839=$r84, var1757=$r6, var2398=$z1, var1781=$r58, var1102=$r59, var2423=$r60, var1176=$r61, var708=$r62, var3598=$r63, var3307=$r66, var1160=$r64, var123=$r65, var1599=$r67, var511=$r68, var1303=$r69, var2000=$z6, var3820=$r18, var141=$r22, var3453=$r20, var251=$r19, var1808=$r21, var868=$r23, var1078=$r24, var2215=$z2, var1084=$z3}
; {org.javacc.jjtree.JavaCodeGenerator=var545, r73=var3848, org.javacc.jjtree.NodeScope=var757, r0=var3914, org.javacc.jjtree.IO=var56, r4=var3687, r5=var3896, null_type=var2378, org.javacc.jjtree.ASTNodeDescriptor=var2992, $r1=var1698, r2=var1117, org.javacc.jjtree.JJTreeOptions=var3961, $r3=var3976, $i0=var1320, r74=var1885, org.javacc.jjtree.NodeFiles=var3065, $r75=var3900, $r76=var2944, $r77=var768, $r78=var1822, $r79=var1319, $r80=var991, $r81=var3302, $r82=var3449, org.javacc.parser.Options=var1035, $z5=var810, $r83=var1281, $z0=var3786, $r70=var2512, $r71=var2782, $r72=var2967, $r84=var1839, $r6=var1757, $z1=var2398, $r58=var1781, $r59=var1102, $r60=var2423, $r61=var1176, $r62=var708, $r63=var3598, $r66=var3307, $r64=var1160, $r65=var123, $r67=var1599, $r68=var511, $r69=var1303, $z6=var2000, $r18=var3820, $r22=var141, $r20=var3453, $r19=var251, $r21=var1808, $r23=var868, $r24=var1078, $z2=var2215, $z3=var1084}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 17,"<java.lang.StringBuilder: java.lang.String toString()>": 4,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r73 := @this: org.javacc.jjtree.JavaCodeGenerator;	r0 := @parameter0: org.javacc.jjtree.NodeScope;	r4 := @parameter1: org.javacc.jjtree.IO;	r5 := @parameter2: java.lang.String;	$r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>();	$r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>();	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	if $i0 <= 0 goto r74 = r2;	r74 = r2;	staticinvoke <org.javacc.jjtree.NodeFiles: void ensure(org.javacc.jjtree.IO,java.lang.String)>(r4, r2);	$r75 = new java.lang.StringBuilder;	specialinvoke $r75.<java.lang.StringBuilder: void <init>()>();	$r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r79 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r80 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79);	$r81 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r82);	$z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>();	if $z5 == 0 goto $r83 = "this";	$r83 = "null";	goto [?= $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>()];	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>();	if $z0 == 0 goto $r84 = "";	$r70 = new java.lang.StringBuilder;	specialinvoke $r70.<java.lang.StringBuilder: void <init>()>();	$r71 = virtualinvoke $r70.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r83);	$r72 = virtualinvoke $r71.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r84 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>()];	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*");	if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$r58 = new java.lang.StringBuilder;	specialinvoke $r58.<java.lang.StringBuilder: void <init>()>();	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jjtCreate(");	$r66 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r84);	$r64 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r65 = virtualinvoke $r64.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>();	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r65);	$r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r69);	goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()];	$z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z6 == 0 goto $r18 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24);	$z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	$z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	if $z3 == 0 goto return;	return
;block_num 12