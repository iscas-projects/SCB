(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var73 0)
(declare-sort var3109 0)
(declare-sort var3384 0)
(declare-sort var2513 0)
(declare-sort var1658 0)
(declare-sort var2724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node_descriptor/-576648796 (var3109) var1658)
(declare-fun nodeVar/-576648796 (var3109) String)
(declare-fun closeNode/1062269652 (var1658 String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var3384 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var3109) Bool)
(declare-fun var2724_getNodeScopeHook/893147786 () Bool)
(declare-fun var2724_getTrackTokens/1877101562 () Bool)
(declare-const null-var73 var73)
(declare-const null-var3109 var3109)
(declare-const null-var3384 var3384)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1152 var73) ; Statement: r37 := @this: org.javacc.jjtree.CPPCodeGenerator 
(assert (not (= var1152 null-var73)))
(declare-const var850 var3109) ; Statement: r0 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var850 null-var3109)))
(declare-const var505 var3384) ; Statement: r4 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var505 null-var3384)))
(declare-const var3536 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var3536 null-String)))
(declare-const var3430 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var3430 null-Bool)))
(define-const var1047 var1658 (node_descriptor/-576648796 var850)) ; Statement: $r2 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(define-const var3814 String (nodeVar/-576648796 var850)) ; Statement: $r1 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var1756 String (closeNode/1062269652 var1047 var3814)) ; Statement: r3 = virtualinvoke $r2.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String closeNode(java.lang.String)>($r1) 
(define-const var2321 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2321)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2321!1 String)
(assert (= var2321!1 ""))
(assert true)
(define-const var1056 String (append/672562846 var2321!1 var3536)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2321!2 String)
(assert (= var2321!2 (str.++ var2321!1 var3536)))
(assert true)
(define-const var705 String (append/672562846 var1056 var1756)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1056!1 String)
(assert (= var1056!1 (str.++ var1056 var1756)))
(assert true)
(define-const var1468 String (toString/-2075883882 var705)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var505 var1468)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r9) 

(declare-const var505!1 var3384)
(declare-const var1468!1 String)
(assert true)
(define-const var1447 Bool (usesCloseNodeVar/-1769174946 var850)) ; Statement: $z0 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z0 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
(assert (= (ite var1447 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1102 Bool var2724_getNodeScopeHook/893147786) ; Statement: $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
 ; Statement: if $z3 == 0 goto $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
(assert (= (ite var1102 1 0) 0)) ; Cond: $z3 == 0 
(define-const var2909 Bool var2724_getTrackTokens/1877101562) ; Statement: $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var2909 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {node_descriptor/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTNodeDescriptor), nodeVar/-576648796=([org.javacc.jjtree.NodeScope], java.lang.String), closeNode/1062269652=([org.javacc.jjtree.ASTNodeDescriptor, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean), var2724_getNodeScopeHook/893147786=([], boolean), var2724_getTrackTokens/1877101562=([], boolean)}
; {var73=org.javacc.jjtree.CPPCodeGenerator, var1152=r37, var3109=org.javacc.jjtree.NodeScope, var850=r0, var3384=org.javacc.jjtree.IO, var505=r4, var3536=r6, var2513=null_type, var3430=z2, var1658=org.javacc.jjtree.ASTNodeDescriptor, var1047=$r2, var3814=$r1, var1756=r3, var2321=$r5, var1056=$r7, var705=$r8, var1468=$r9, var1447=$z0, var2724=org.javacc.jjtree.JJTreeOptions, var1102=$z3, var2909=$z1}
; {org.javacc.jjtree.CPPCodeGenerator=var73, r37=var1152, org.javacc.jjtree.NodeScope=var3109, r0=var850, org.javacc.jjtree.IO=var3384, r4=var505, r6=var3536, null_type=var2513, z2=var3430, org.javacc.jjtree.ASTNodeDescriptor=var1658, $r2=var1047, $r1=var3814, r3=var1756, $r5=var2321, $r7=var1056, $r8=var705, $r9=var1468, $z0=var1447, org.javacc.jjtree.JJTreeOptions=var2724, $z3=var1102, $z1=var2909}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r37 := @this: org.javacc.jjtree.CPPCodeGenerator;	r0 := @parameter0: org.javacc.jjtree.NodeScope;	r4 := @parameter1: org.javacc.jjtree.IO;	r6 := @parameter2: java.lang.String;	z2 := @parameter3: boolean;	$r2 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r1 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	r3 = virtualinvoke $r2.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String closeNode(java.lang.String)>($r1);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r9);	$z0 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z0 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	$z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	if $z3 == 0 goto $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	$z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	if $z1 == 0 goto return;	return
;block_num 4