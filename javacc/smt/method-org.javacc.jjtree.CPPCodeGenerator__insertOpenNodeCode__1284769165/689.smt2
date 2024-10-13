(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2338 0)
(declare-sort var965 0)
(declare-sort var1165 0)
(declare-sort var550 0)
(declare-sort var2927 0)
(declare-sort var1138 0)
(declare-sort var266 0)
(declare-sort var3595 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node_descriptor/-576648796 (var965) var2927)
(declare-fun getNodeType/-707025417 (var2927) String)
(declare-fun var1138_getNodeClass/-1384960322 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var266_addType/-972038703 (String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeVar/-576648796 (var965) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var1165 String) void)
(declare-fun var3595_getStatic/-616544340 () Bool)
(declare-fun var1138_getNodeUsesParser/1997544654 () Bool)
(declare-fun var1138_getNodeFactory/-1655041108 () String)
(declare-fun getNodeId/-1379187338 (var2927) String)
(declare-fun println/1333914633 (var1165 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var965) Bool)
(declare-fun openNode/114769770 (var2927 String) String)
(declare-fun var1138_getNodeScopeHook/893147786 () Bool)
(declare-fun var1138_getTrackTokens/1877101562 () Bool)
(declare-const null-var2338 var2338)
(declare-const null-var965 var965)
(declare-const null-var1165 var1165)
(declare-const null-String String)
(declare-const var2082 var2338) ; Statement: r70 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var2082 null-var2338)))
(declare-const var3000 var965) ; Statement: r0 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var3000 null-var965)))
(declare-const var934 var1165) ; Statement: r4 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var934 null-var1165)))
(declare-const var3375 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var3375 null-String)))
(define-const var145 var2927 (node_descriptor/-576648796 var3000)) ; Statement: $r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var2341 String (getNodeType/-707025417 var145)) ; Statement: r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>() 
(define-const var606 String var1138_getNodeClass/-1384960322) ; Statement: $r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>() 
(assert true)
(define-const var3316 Int (length/-134980193 var606)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto r71 = r2 
(assert (<= var3316 0)) ; Cond: $i0 <= 0 
(define-const var3909 String var2341) ; Statement: r71 = r2 
(assert true) ; Non Conditional
;(assert (var266_addType/-972038703 var2341)) ; Statement: staticinvoke <org.javacc.jjtree.CPPNodeFiles: void addType(java.lang.String)>(r2) 

(declare-const var2341!1 String)
(define-const var1132 String String-init) ; Statement: $r72 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1132)) ; Statement: specialinvoke $r72.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1132!1 String)
(assert (= var1132!1 ""))
(assert true)
(define-const var3216 String (append/672562846 var1132!1 var3375)) ; Statement: $r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1132!2 String)
(assert (= var1132!2 (str.++ var1132!1 var3375)))
(assert true)
(define-const var918 String (append/672562846 var3216 var3909)) ; Statement: $r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var3216!1 String)
(assert (= var3216!1 (str.++ var3216 var3909)))
(assert true)
(define-const var1534 String (append/672562846 var918 " *")) ; Statement: $r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" *") 
(declare-const var918!1 String)
(assert (= var918!1 (str.++ var918 " *")))
(define-const var106 String (nodeVar/-576648796 var3000)) ; Statement: $r76 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var1602 String (append/672562846 var1534 var106)) ; Statement: $r77 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r76) 
(declare-const var1534!1 String)
(assert (= var1534!1 (str.++ var1534 var106)))
(assert true)
(define-const var1943 String (append/672562846 var1602 " = ")) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var1602!1 String)
(assert (= var1602!1 (str.++ var1602 " = ")))
(assert true)
(define-const var2860 String (toString/-2075883882 var1943)) ; Statement: $r79 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var934 var2860)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r79) 

(declare-const var934!1 var1165)
(declare-const var2860!1 String)
(define-const var3218 Bool var3595_getStatic/-616544340) ; Statement: $z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>() 
 ; Statement: if $z5 == 0 goto $r80 = "this" 
(assert (= (ite var3218 1 0) 0)) ; Cond: $z5 == 0 
(define-const var950 String "this") ; Statement: $r80 = "this" 
(assert true) ; Non Conditional
(define-const var2787 Bool var1138_getNodeUsesParser/1997544654) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>() 
 ; Statement: if $z0 == 0 goto $r81 = "" 
(assert (= (ite var2787 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3578 String "") ; Statement: $r81 = "" 
(assert true) ; Non Conditional
(define-const var60 String var1138_getNodeFactory/-1655041108) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert true)
(define-const var3826 Bool (= var60 "*")) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*") 
 ; Statement: if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert (not (= (ite var3826 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3264 String String-init) ; Statement: $r55 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3264)) ; Statement: specialinvoke $r55.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3264!1 String)
(assert (= var3264!1 ""))
(assert true)
(define-const var2445 String (append/672562846 var3264!1 "(")) ; Statement: $r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3264!2 String)
(assert (= var3264!2 (str.++ var3264!1 "(")))
(assert true)
(define-const var2795 String (append/672562846 var2445 var3909)) ; Statement: $r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var2445!1 String)
(assert (= var2445!1 (str.++ var2445 var3909)))
(assert true)
(define-const var2838 String (append/672562846 var2795 "*)")) ; Statement: $r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*)") 
(declare-const var2795!1 String)
(assert (= var2795!1 (str.++ var2795 "*)")))
(assert true)
(define-const var1618 String (append/672562846 var2838 var3909)) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71) 
(declare-const var2838!1 String)
(assert (= var2838!1 (str.++ var2838 var3909)))
(assert true)
(define-const var3176 String (append/672562846 var1618 "::jjtCreate(")) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::jjtCreate(") 
(declare-const var1618!1 String)
(assert (= var1618!1 (str.++ var1618 "::jjtCreate(")))
(assert true)
(define-const var2689 String (append/672562846 var3176 var3578)) ; Statement: $r63 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r81) 
(declare-const var3176!1 String)
(assert (= var3176!1 (str.++ var3176 var3578)))
(define-const var1466 var2927 (node_descriptor/-576648796 var3000)) ; Statement: $r61 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var942 String (getNodeId/-1379187338 var1466)) ; Statement: $r62 = virtualinvoke $r61.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>() 
(assert true)
(define-const var2340 String (append/672562846 var2689 var942)) ; Statement: $r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62) 
(declare-const var2689!1 String)
(assert (= var2689!1 (str.++ var2689 var942)))
(assert true)
(define-const var1858 String (append/672562846 var2340 ");")) ; Statement: $r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var2340!1 String)
(assert (= var2340!1 (str.++ var2340 ");")))
(assert true)
(define-const var2264 String (toString/-2075883882 var1858)) ; Statement: $r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var934!1 var2264)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r66) 

(declare-const var934!2 var1165)
(declare-const var2264!1 String)
 ; Statement: goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2363 Bool (usesCloseNodeVar/-1769174946 var3000)) ; Statement: $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z6 == 0 goto $r18 = new java.lang.StringBuilder 
(assert (= (ite var2363 1 0) 0)) ; Cond: $z6 == 0 
(define-const var2396 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2396)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2396!1 String)
(assert (= var2396!1 ""))
(assert true)
(define-const var2451 String (append/672562846 var2396!1 var3375)) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2396!2 String)
(assert (= var2396!2 (str.++ var2396!1 var3375)))
(define-const var2858 var2927 (node_descriptor/-576648796 var3000)) ; Statement: $r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(define-const var2970 String (nodeVar/-576648796 var3000)) ; Statement: $r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var2291 String (openNode/114769770 var2858 var2970)) ; Statement: $r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19) 
(assert true)
(define-const var2303 String (append/672562846 var2451 var2291)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2451!1 String)
(assert (= var2451!1 (str.++ var2451 var2291)))
(assert true)
(define-const var2757 String (toString/-2075883882 var2303)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var934!2 var2757)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24) 

(declare-const var934!3 var1165)
(declare-const var2757!1 String)
(define-const var1676 Bool var1138_getNodeScopeHook/893147786) ; Statement: $z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
 ; Statement: if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
(assert (= (ite var1676 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2987 Bool var1138_getTrackTokens/1877101562) ; Statement: $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var2987 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {node_descriptor/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTNodeDescriptor), getNodeType/-707025417=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), var1138_getNodeClass/-1384960322=([], java.lang.String), length/-134980193=([java.lang.String], int), var266_addType/-972038703=([java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeVar/-576648796=([org.javacc.jjtree.NodeScope], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), var3595_getStatic/-616544340=([], boolean), var1138_getNodeUsesParser/1997544654=([], boolean), var1138_getNodeFactory/-1655041108=([], java.lang.String), getNodeId/-1379187338=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean), openNode/114769770=([org.javacc.jjtree.ASTNodeDescriptor, java.lang.String], java.lang.String), var1138_getNodeScopeHook/893147786=([], boolean), var1138_getTrackTokens/1877101562=([], boolean)}
; {var2338=org.javacc.jjtree.CPPCodeGenerator, var2082=r70, var965=org.javacc.jjtree.NodeScope, var3000=r0, var1165=org.javacc.jjtree.IO, var934=r4, var3375=r5, var550=null_type, var2927=org.javacc.jjtree.ASTNodeDescriptor, var145=$r1, var2341=r2, var1138=org.javacc.jjtree.JJTreeOptions, var606=$r3, var3316=$i0, var3909=r71, var266=org.javacc.jjtree.CPPNodeFiles, var1132=$r72, var3216=$r73, var918=$r74, var1534=$r75, var106=$r76, var1602=$r77, var1943=$r78, var2860=$r79, var3595=org.javacc.parser.Options, var3218=$z5, var950=$r80, var2787=$z0, var3578=$r81, var60=$r6, var3826=$z1, var3264=$r55, var2445=$r56, var2795=$r57, var2838=$r58, var1618=$r59, var3176=$r60, var2689=$r63, var1466=$r61, var942=$r62, var2340=$r64, var1858=$r65, var2264=$r66, var2363=$z6, var2396=$r18, var2451=$r22, var2858=$r20, var2970=$r19, var2291=$r21, var2303=$r23, var2757=$r24, var1676=$z2, var2987=$z3}
; {org.javacc.jjtree.CPPCodeGenerator=var2338, r70=var2082, org.javacc.jjtree.NodeScope=var965, r0=var3000, org.javacc.jjtree.IO=var1165, r4=var934, r5=var3375, null_type=var550, org.javacc.jjtree.ASTNodeDescriptor=var2927, $r1=var145, r2=var2341, org.javacc.jjtree.JJTreeOptions=var1138, $r3=var606, $i0=var3316, r71=var3909, org.javacc.jjtree.CPPNodeFiles=var266, $r72=var1132, $r73=var3216, $r74=var918, $r75=var1534, $r76=var106, $r77=var1602, $r78=var1943, $r79=var2860, org.javacc.parser.Options=var3595, $z5=var3218, $r80=var950, $z0=var2787, $r81=var3578, $r6=var60, $z1=var3826, $r55=var3264, $r56=var2445, $r57=var2795, $r58=var2838, $r59=var1618, $r60=var3176, $r63=var2689, $r61=var1466, $r62=var942, $r64=var2340, $r65=var1858, $r66=var2264, $z6=var2363, $r18=var2396, $r22=var2451, $r20=var2858, $r19=var2970, $r21=var2291, $r23=var2303, $r24=var2757, $z2=var1676, $z3=var2987}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 15,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r70 := @this: org.javacc.jjtree.CPPCodeGenerator;	r0 := @parameter0: org.javacc.jjtree.NodeScope;	r4 := @parameter1: org.javacc.jjtree.IO;	r5 := @parameter2: java.lang.String;	$r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>();	$r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>();	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	if $i0 <= 0 goto r71 = r2;	r71 = r2;	staticinvoke <org.javacc.jjtree.CPPNodeFiles: void addType(java.lang.String)>(r2);	$r72 = new java.lang.StringBuilder;	specialinvoke $r72.<java.lang.StringBuilder: void <init>()>();	$r73 = virtualinvoke $r72.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r74 = virtualinvoke $r73.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r75 = virtualinvoke $r74.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" *");	$r76 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r77 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r76);	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r79 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r79);	$z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>();	if $z5 == 0 goto $r80 = "this";	$r80 = "this";	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>();	if $z0 == 0 goto $r81 = "";	$r81 = "";	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*");	if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$r55 = new java.lang.StringBuilder;	specialinvoke $r55.<java.lang.StringBuilder: void <init>()>();	$r56 = virtualinvoke $r55.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r57 = virtualinvoke $r56.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r58 = virtualinvoke $r57.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*)");	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r71);	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("::jjtCreate(");	$r63 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r81);	$r61 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r62 = virtualinvoke $r61.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>();	$r64 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r62);	$r65 = virtualinvoke $r64.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r66 = virtualinvoke $r65.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r66);	goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()];	$z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z6 == 0 goto $r18 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24);	$z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	$z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	if $z3 == 0 goto return;	return
;block_num 12