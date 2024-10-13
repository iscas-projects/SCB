(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3934 0)
(declare-sort var516 0)
(declare-sort var700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exportPropertyFunction/1460596429 (var3934) String)
(declare-fun var700_getRootOfQualifiedName/-763095942 (String) String)
(declare-fun exportSymbolFunction/1460596429 (var3934) String)
(declare-fun declareSyntheticExternsVar/366803125 (var3934 String var516) void)
(declare-const null-var3934 var3934)
(declare-const null-var516 var516)
(declare-const var3997 var3934) ; Statement: r0 := @this: com.google.javascript.jscomp.GenerateExports 
(assert (not (= var3997 null-var3934)))
(declare-const var2751 var516) ; Statement: r5 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2751 null-var516)))
(define-const var671 String (exportPropertyFunction/1460596429 var3997)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.GenerateExports: java.lang.String exportPropertyFunction> 
(define-const var2158 String (var700_getRootOfQualifiedName/-763095942 var671)) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getRootOfQualifiedName(java.lang.String)>($r1) 
(define-const var3690 String (exportSymbolFunction/1460596429 var3997)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.GenerateExports: java.lang.String exportSymbolFunction> 
(define-const var2076 String (var700_getRootOfQualifiedName/-763095942 var3690)) ; Statement: r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getRootOfQualifiedName(java.lang.String)>($r3) 
(assert true)
(define-const var1639 Bool (= var2158 var2076)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.GenerateExports: void declareSyntheticExternsVar(java.lang.String,com.google.javascript.rhino.Node)>(r2, r5) 
(assert (= (ite var1639 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (declareSyntheticExternsVar/366803125 var3997 var2158 var2751)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.GenerateExports: void declareSyntheticExternsVar(java.lang.String,com.google.javascript.rhino.Node)>(r2, r5) 

(declare-const var3997!1 var3934)
(declare-const var2158!1 String)
(declare-const var2751!1 var516)
(assert true)
;(assert (declareSyntheticExternsVar/366803125 var3997!1 var2076 var2751!1)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.GenerateExports: void declareSyntheticExternsVar(java.lang.String,com.google.javascript.rhino.Node)>(r4, r5) 

(declare-const var3997!2 var3934)
(declare-const var2076!1 String)
(declare-const var2751!2 var516)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exportPropertyFunction/1460596429=([com.google.javascript.jscomp.GenerateExports], java.lang.String), var700_getRootOfQualifiedName/-763095942=([java.lang.String], java.lang.String), exportSymbolFunction/1460596429=([com.google.javascript.jscomp.GenerateExports], java.lang.String), declareSyntheticExternsVar/366803125=([com.google.javascript.jscomp.GenerateExports, java.lang.String, com.google.javascript.rhino.Node], void)}
; {var3934=com.google.javascript.jscomp.GenerateExports, var3997=r0, var516=com.google.javascript.rhino.Node, var2751=r5, var671=$r1, var700=com.google.javascript.jscomp.NodeUtil, var2158=r2, var3690=$r3, var2076=r4, var1639=$z0}
; {com.google.javascript.jscomp.GenerateExports=var3934, r0=var3997, com.google.javascript.rhino.Node=var516, r5=var2751, $r1=var671, com.google.javascript.jscomp.NodeUtil=var700, r2=var2158, $r3=var3690, r4=var2076, $z0=var1639}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.GenerateExports;	r5 := @parameter0: com.google.javascript.rhino.Node;	$r1 = r0.<com.google.javascript.jscomp.GenerateExports: java.lang.String exportPropertyFunction>;	r2 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getRootOfQualifiedName(java.lang.String)>($r1);	$r3 = r0.<com.google.javascript.jscomp.GenerateExports: java.lang.String exportSymbolFunction>;	r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getRootOfQualifiedName(java.lang.String)>($r3);	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.GenerateExports: void declareSyntheticExternsVar(java.lang.String,com.google.javascript.rhino.Node)>(r2, r5);	virtualinvoke r0.<com.google.javascript.jscomp.GenerateExports: void declareSyntheticExternsVar(java.lang.String,com.google.javascript.rhino.Node)>(r2, r5);	virtualinvoke r0.<com.google.javascript.jscomp.GenerateExports: void declareSyntheticExternsVar(java.lang.String,com.google.javascript.rhino.Node)>(r4, r5);	return
;block_num 3