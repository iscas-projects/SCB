(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var868 0)
(declare-sort var33 0)
(declare-sort var856 0)
(declare-sort var537 0)
(declare-sort var3260 0)
(declare-sort var3394 0)
(declare-sort var954 0)
(declare-sort var2723 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node_descriptor/-576648796 (var33) var3260)
(declare-fun getNodeType/-707025417 (var3260) String)
(declare-fun var3394_getNodeClass/-1384960322 () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var954_ensure/-405642493 (var856 String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun nodeVar/-576648796 (var33) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun print/-1652180213 (var856 String) void)
(declare-fun var2723_getStatic/-616544340 () Bool)
(declare-fun var3394_getNodeUsesParser/1997544654 () Bool)
(declare-fun var3394_getNodeFactory/-1655041108 () String)
(declare-fun getNodeId/-1379187338 (var3260) String)
(declare-fun println/1333914633 (var856 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var33) Bool)
(declare-fun openNode/114769770 (var3260 String) String)
(declare-fun var3394_getNodeScopeHook/893147786 () Bool)
(declare-fun var3394_getTrackTokens/1877101562 () Bool)
(declare-const null-var868 var868)
(declare-const null-var33 var33)
(declare-const null-var856 var856)
(declare-const null-String String)
(declare-const var3586 var868) ; Statement: r73 := @this: org.javacc.jjtree.JavaCodeGenerator 
(assert (not (= var3586 null-var868)))
(declare-const var1513 var33) ; Statement: r0 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var1513 null-var33)))
(declare-const var2477 var856) ; Statement: r4 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var2477 null-var856)))
(declare-const var2372 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2372 null-String)))
(define-const var1493 var3260 (node_descriptor/-576648796 var1513)) ; Statement: $r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var1074 String (getNodeType/-707025417 var1493)) ; Statement: r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>() 
(define-const var1594 String var3394_getNodeClass/-1384960322) ; Statement: $r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>() 
(assert true)
(define-const var3299 Int (length/-134980193 var1594)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto r74 = r2 
(assert (<= var3299 0)) ; Cond: $i0 <= 0 
(define-const var2442 String var1074) ; Statement: r74 = r2 
(assert true) ; Non Conditional
;(assert (var954_ensure/-405642493 var2477 var1074)) ; Statement: staticinvoke <org.javacc.jjtree.NodeFiles: void ensure(org.javacc.jjtree.IO,java.lang.String)>(r4, r2) 

(declare-const var2477!1 var856)
(declare-const var1074!1 String)
(define-const var2105 String String-init) ; Statement: $r75 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2105)) ; Statement: specialinvoke $r75.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2105!1 String)
(assert (= var2105!1 ""))
(assert true)
(define-const var2836 String (append/672562846 var2105!1 var2372)) ; Statement: $r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2105!2 String)
(assert (= var2105!2 (str.++ var2105!1 var2372)))
(assert true)
(define-const var581 String (append/672562846 var2836 var2442)) ; Statement: $r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var2836!1 String)
(assert (= var2836!1 (str.++ var2836 var2442)))
(assert true)
(define-const var2506 String (append/672562846 var581 " ")) ; Statement: $r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var581!1 String)
(assert (= var581!1 (str.++ var581 " ")))
(define-const var30 String (nodeVar/-576648796 var1513)) ; Statement: $r79 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var3521 String (append/672562846 var2506 var30)) ; Statement: $r80 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79) 
(declare-const var2506!1 String)
(assert (= var2506!1 (str.++ var2506 var30)))
(assert true)
(define-const var557 String (append/672562846 var3521 " = ")) ; Statement: $r81 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ") 
(declare-const var3521!1 String)
(assert (= var3521!1 (str.++ var3521 " = ")))
(assert true)
(define-const var2490 String (toString/-2075883882 var557)) ; Statement: $r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (print/-1652180213 var2477!1 var2490)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r82) 

(declare-const var2477!2 var856)
(declare-const var2490!1 String)
(define-const var3464 Bool var2723_getStatic/-616544340) ; Statement: $z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>() 
 ; Statement: if $z5 == 0 goto $r83 = "this" 
(assert (= (ite var3464 1 0) 0)) ; Cond: $z5 == 0 
(define-const var189 String "this") ; Statement: $r83 = "this" 
(assert true) ; Non Conditional
(define-const var3058 Bool var3394_getNodeUsesParser/1997544654) ; Statement: $z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>() 
 ; Statement: if $z0 == 0 goto $r84 = "" 
(assert (= (ite var3058 1 0) 0)) ; Cond: $z0 == 0 
(define-const var310 String "") ; Statement: $r84 = "" 
(assert true) ; Non Conditional
(define-const var854 String var3394_getNodeFactory/-1655041108) ; Statement: $r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert true)
(define-const var1270 Bool (= var854 "*")) ; Statement: $z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*") 
 ; Statement: if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>() 
(assert (not (= (ite var1270 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1231 String String-init) ; Statement: $r58 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1231)) ; Statement: specialinvoke $r58.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1231!1 String)
(assert (= var1231!1 ""))
(assert true)
(define-const var2835 String (append/672562846 var1231!1 "(")) ; Statement: $r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var1231!2 String)
(assert (= var1231!2 (str.++ var1231!1 "(")))
(assert true)
(define-const var225 String (append/672562846 var2835 var2442)) ; Statement: $r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var2835!1 String)
(assert (= var2835!1 (str.++ var2835 var2442)))
(assert true)
(define-const var3917 String (append/672562846 var225 ")")) ; Statement: $r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var225!1 String)
(assert (= var225!1 (str.++ var225 ")")))
(assert true)
(define-const var1044 String (append/672562846 var3917 var2442)) ; Statement: $r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74) 
(declare-const var3917!1 String)
(assert (= var3917!1 (str.++ var3917 var2442)))
(assert true)
(define-const var3371 String (append/672562846 var1044 ".jjtCreate(")) ; Statement: $r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jjtCreate(") 
(declare-const var1044!1 String)
(assert (= var1044!1 (str.++ var1044 ".jjtCreate(")))
(assert true)
(define-const var896 String (append/672562846 var3371 var310)) ; Statement: $r66 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r84) 
(declare-const var3371!1 String)
(assert (= var3371!1 (str.++ var3371 var310)))
(define-const var789 var3260 (node_descriptor/-576648796 var1513)) ; Statement: $r64 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(assert true)
(define-const var3699 String (getNodeId/-1379187338 var789)) ; Statement: $r65 = virtualinvoke $r64.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>() 
(assert true)
(define-const var1139 String (append/672562846 var896 var3699)) ; Statement: $r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r65) 
(declare-const var896!1 String)
(assert (= var896!1 (str.++ var896 var3699)))
(assert true)
(define-const var3670 String (append/672562846 var1139 ");")) ; Statement: $r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");") 
(declare-const var1139!1 String)
(assert (= var1139!1 (str.++ var1139 ");")))
(assert true)
(define-const var3088 String (toString/-2075883882 var3670)) ; Statement: $r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var2477!2 var3088)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r69) 

(declare-const var2477!3 var856)
(declare-const var3088!1 String)
 ; Statement: goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2608 Bool (usesCloseNodeVar/-1769174946 var1513)) ; Statement: $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z6 == 0 goto $r18 = new java.lang.StringBuilder 
(assert (= (ite var2608 1 0) 0)) ; Cond: $z6 == 0 
(define-const var3423 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3423)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3423!1 String)
(assert (= var3423!1 ""))
(assert true)
(define-const var1721 String (append/672562846 var3423!1 var2372)) ; Statement: $r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3423!2 String)
(assert (= var3423!2 (str.++ var3423!1 var2372)))
(define-const var1505 var3260 (node_descriptor/-576648796 var1513)) ; Statement: $r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(define-const var1135 String (nodeVar/-576648796 var1513)) ; Statement: $r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var3894 String (openNode/114769770 var1505 var1135)) ; Statement: $r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19) 
(assert true)
(define-const var2631 String (append/672562846 var1721 var3894)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1721!1 String)
(assert (= var1721!1 (str.++ var1721 var3894)))
(assert true)
(define-const var729 String (toString/-2075883882 var2631)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var2477!3 var729)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24) 

(declare-const var2477!4 var856)
(declare-const var729!1 String)
(define-const var2897 Bool var3394_getNodeScopeHook/893147786) ; Statement: $z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
 ; Statement: if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
(assert (= (ite var2897 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3949 Bool var3394_getTrackTokens/1877101562) ; Statement: $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var3949 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {node_descriptor/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTNodeDescriptor), getNodeType/-707025417=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), var3394_getNodeClass/-1384960322=([], java.lang.String), length/-134980193=([java.lang.String], int), var954_ensure/-405642493=([org.javacc.jjtree.IO, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), nodeVar/-576648796=([org.javacc.jjtree.NodeScope], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), print/-1652180213=([org.javacc.jjtree.IO, java.lang.String], void), var2723_getStatic/-616544340=([], boolean), var3394_getNodeUsesParser/1997544654=([], boolean), var3394_getNodeFactory/-1655041108=([], java.lang.String), getNodeId/-1379187338=([org.javacc.jjtree.ASTNodeDescriptor], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean), openNode/114769770=([org.javacc.jjtree.ASTNodeDescriptor, java.lang.String], java.lang.String), var3394_getNodeScopeHook/893147786=([], boolean), var3394_getTrackTokens/1877101562=([], boolean)}
; {var868=org.javacc.jjtree.JavaCodeGenerator, var3586=r73, var33=org.javacc.jjtree.NodeScope, var1513=r0, var856=org.javacc.jjtree.IO, var2477=r4, var2372=r5, var537=null_type, var3260=org.javacc.jjtree.ASTNodeDescriptor, var1493=$r1, var1074=r2, var3394=org.javacc.jjtree.JJTreeOptions, var1594=$r3, var3299=$i0, var2442=r74, var954=org.javacc.jjtree.NodeFiles, var2105=$r75, var2836=$r76, var581=$r77, var2506=$r78, var30=$r79, var3521=$r80, var557=$r81, var2490=$r82, var2723=org.javacc.parser.Options, var3464=$z5, var189=$r83, var3058=$z0, var310=$r84, var854=$r6, var1270=$z1, var1231=$r58, var2835=$r59, var225=$r60, var3917=$r61, var1044=$r62, var3371=$r63, var896=$r66, var789=$r64, var3699=$r65, var1139=$r67, var3670=$r68, var3088=$r69, var2608=$z6, var3423=$r18, var1721=$r22, var1505=$r20, var1135=$r19, var3894=$r21, var2631=$r23, var729=$r24, var2897=$z2, var3949=$z3}
; {org.javacc.jjtree.JavaCodeGenerator=var868, r73=var3586, org.javacc.jjtree.NodeScope=var33, r0=var1513, org.javacc.jjtree.IO=var856, r4=var2477, r5=var2372, null_type=var537, org.javacc.jjtree.ASTNodeDescriptor=var3260, $r1=var1493, r2=var1074, org.javacc.jjtree.JJTreeOptions=var3394, $r3=var1594, $i0=var3299, r74=var2442, org.javacc.jjtree.NodeFiles=var954, $r75=var2105, $r76=var2836, $r77=var581, $r78=var2506, $r79=var30, $r80=var3521, $r81=var557, $r82=var2490, org.javacc.parser.Options=var2723, $z5=var3464, $r83=var189, $z0=var3058, $r84=var310, $r6=var854, $z1=var1270, $r58=var1231, $r59=var2835, $r60=var225, $r61=var3917, $r62=var1044, $r63=var3371, $r66=var896, $r64=var789, $r65=var3699, $r67=var1139, $r68=var3670, $r69=var3088, $z6=var2608, $r18=var3423, $r22=var1721, $r20=var1505, $r19=var1135, $r21=var3894, $r23=var2631, $r24=var729, $z2=var2897, $z3=var3949}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 15,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r73 := @this: org.javacc.jjtree.JavaCodeGenerator;	r0 := @parameter0: org.javacc.jjtree.NodeScope;	r4 := @parameter1: org.javacc.jjtree.IO;	r5 := @parameter2: java.lang.String;	$r1 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	r2 = virtualinvoke $r1.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeType()>();	$r3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeClass()>();	$i0 = virtualinvoke $r3.<java.lang.String: int length()>();	if $i0 <= 0 goto r74 = r2;	r74 = r2;	staticinvoke <org.javacc.jjtree.NodeFiles: void ensure(org.javacc.jjtree.IO,java.lang.String)>(r4, r2);	$r75 = new java.lang.StringBuilder;	specialinvoke $r75.<java.lang.StringBuilder: void <init>()>();	$r76 = virtualinvoke $r75.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r77 = virtualinvoke $r76.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r78 = virtualinvoke $r77.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r79 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r80 = virtualinvoke $r78.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r79);	$r81 = virtualinvoke $r80.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" = ");	$r82 = virtualinvoke $r81.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void print(java.lang.String)>($r82);	$z5 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getStatic()>();	if $z5 == 0 goto $r83 = "this";	$r83 = "this";	$z0 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeUsesParser()>();	if $z0 == 0 goto $r84 = "";	$r84 = "";	$r6 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$z1 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>("*");	if $z1 == 0 goto $r7 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getNodeFactory()>();	$r58 = new java.lang.StringBuilder;	specialinvoke $r58.<java.lang.StringBuilder: void <init>()>();	$r59 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r60 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r61 = virtualinvoke $r60.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r62 = virtualinvoke $r61.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r74);	$r63 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".jjtCreate(");	$r66 = virtualinvoke $r63.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r84);	$r64 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r65 = virtualinvoke $r64.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String getNodeId()>();	$r67 = virtualinvoke $r66.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r65);	$r68 = virtualinvoke $r67.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(");");	$r69 = virtualinvoke $r68.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r69);	goto [?= $z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>()];	$z6 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z6 == 0 goto $r18 = new java.lang.StringBuilder;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r20 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r19 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	$r21 = virtualinvoke $r20.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String openNode(java.lang.String)>($r19);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r24);	$z2 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	if $z2 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	$z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	if $z3 == 0 goto return;	return
;block_num 12