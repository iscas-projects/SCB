(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3374 0)
(declare-sort var1465 0)
(declare-sort var930 0)
(declare-sort var1325 0)
(declare-sort var3789 0)
(declare-sort var2597 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node_descriptor/-576648796 (var1465) var3789)
(declare-fun nodeVar/-576648796 (var1465) String)
(declare-fun closeNode/1062269652 (var3789 String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1333914633 (var930 String) void)
(declare-fun usesCloseNodeVar/-1769174946 (var1465) Bool)
(declare-fun var2597_getNodeScopeHook/893147786 () Bool)
(declare-fun var2597_getTrackTokens/1877101562 () Bool)
(declare-const null-var3374 var3374)
(declare-const null-var1465 var1465)
(declare-const null-var930 var930)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1154 var3374) ; Statement: r37 := @this: org.javacc.jjtree.JavaCodeGenerator 
(assert (not (= var1154 null-var3374)))
(declare-const var3028 var1465) ; Statement: r0 := @parameter0: org.javacc.jjtree.NodeScope 
(assert (not (= var3028 null-var1465)))
(declare-const var3499 var930) ; Statement: r4 := @parameter1: org.javacc.jjtree.IO 
(assert (not (= var3499 null-var930)))
(declare-const var126 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var126 null-String)))
(declare-const var522 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var522 null-Bool)))
(define-const var1334 var3789 (node_descriptor/-576648796 var3028)) ; Statement: $r2 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor> 
(define-const var3341 String (nodeVar/-576648796 var3028)) ; Statement: $r1 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar> 
(assert true)
(define-const var3508 String (closeNode/1062269652 var1334 var3341)) ; Statement: r3 = virtualinvoke $r2.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String closeNode(java.lang.String)>($r1) 
(define-const var52 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var52)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var52!1 String)
(assert (= var52!1 ""))
(assert true)
(define-const var967 String (append/672562846 var52!1 var126)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var52!2 String)
(assert (= var52!2 (str.++ var52!1 var126)))
(assert true)
(define-const var2019 String (append/672562846 var967 var3508)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var967!1 String)
(assert (= var967!1 (str.++ var967 var3508)))
(assert true)
(define-const var1796 String (toString/-2075883882 var2019)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1333914633 var3499 var1796)) ; Statement: virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r9) 

(declare-const var3499!1 var930)
(declare-const var1796!1 String)
(assert true)
(define-const var3587 Bool (usesCloseNodeVar/-1769174946 var3028)) ; Statement: $z0 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>() 
 ; Statement: if $z0 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
(assert (= (ite var3587 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2425 Bool var2597_getNodeScopeHook/893147786) ; Statement: $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>() 
 ; Statement: if $z3 == 0 goto $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
(assert (= (ite var2425 1 0) 0)) ; Cond: $z3 == 0 
(define-const var416 Bool var2597_getTrackTokens/1877101562) ; Statement: $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var416 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {node_descriptor/-576648796=([org.javacc.jjtree.NodeScope], org.javacc.jjtree.ASTNodeDescriptor), nodeVar/-576648796=([org.javacc.jjtree.NodeScope], java.lang.String), closeNode/1062269652=([org.javacc.jjtree.ASTNodeDescriptor, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1333914633=([org.javacc.jjtree.IO, java.lang.String], void), usesCloseNodeVar/-1769174946=([org.javacc.jjtree.NodeScope], boolean), var2597_getNodeScopeHook/893147786=([], boolean), var2597_getTrackTokens/1877101562=([], boolean)}
; {var3374=org.javacc.jjtree.JavaCodeGenerator, var1154=r37, var1465=org.javacc.jjtree.NodeScope, var3028=r0, var930=org.javacc.jjtree.IO, var3499=r4, var126=r6, var1325=null_type, var522=z2, var3789=org.javacc.jjtree.ASTNodeDescriptor, var1334=$r2, var3341=$r1, var3508=r3, var52=$r5, var967=$r7, var2019=$r8, var1796=$r9, var3587=$z0, var2597=org.javacc.jjtree.JJTreeOptions, var2425=$z3, var416=$z1}
; {org.javacc.jjtree.JavaCodeGenerator=var3374, r37=var1154, org.javacc.jjtree.NodeScope=var1465, r0=var3028, org.javacc.jjtree.IO=var930, r4=var3499, r6=var126, null_type=var1325, z2=var522, org.javacc.jjtree.ASTNodeDescriptor=var3789, $r2=var1334, $r1=var3341, r3=var3508, $r5=var52, $r7=var967, $r8=var2019, $r9=var1796, $z0=var3587, org.javacc.jjtree.JJTreeOptions=var2597, $z3=var2425, $z1=var416}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r37 := @this: org.javacc.jjtree.JavaCodeGenerator;	r0 := @parameter0: org.javacc.jjtree.NodeScope;	r4 := @parameter1: org.javacc.jjtree.IO;	r6 := @parameter2: java.lang.String;	z2 := @parameter3: boolean;	$r2 = r0.<org.javacc.jjtree.NodeScope: org.javacc.jjtree.ASTNodeDescriptor node_descriptor>;	$r1 = r0.<org.javacc.jjtree.NodeScope: java.lang.String nodeVar>;	r3 = virtualinvoke $r2.<org.javacc.jjtree.ASTNodeDescriptor: java.lang.String closeNode(java.lang.String)>($r1);	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r4.<org.javacc.jjtree.IO: void println(java.lang.String)>($r9);	$z0 = virtualinvoke r0.<org.javacc.jjtree.NodeScope: boolean usesCloseNodeVar()>();	if $z0 == 0 goto $z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	$z3 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getNodeScopeHook()>();	if $z3 == 0 goto $z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	$z1 = staticinvoke <org.javacc.jjtree.JJTreeOptions: boolean getTrackTokens()>();	if $z1 == 0 goto return;	return
;block_num 4