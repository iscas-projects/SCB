(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var280 0)
(declare-sort var3816 0)
(declare-sort var1133 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exportPropertyFunction/1460596429 (var280) String)
(declare-fun var1133_getRootOfQualifiedName/-763095942 (String) String)
(declare-fun exportSymbolFunction/1460596429 (var280) String)
(declare-fun declareSyntheticExternsVar/366803125 (var280 String var3816) void)
(declare-const null-var280 var280)
(declare-const null-var3816 var3816)
(declare-const var931 var280) ; Statement: r0 := @this: com.google.javascript.jscomp.GenerateExports 
(assert (not (= var931 null-var280)))
(declare-const var705 var3816) ; Statement: r5 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var705 null-var3816)))
(define-const var435 String (exportPropertyFunction/1460596429 var931)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.GenerateExports: java.lang.String exportPropertyFunction> 
(define-const var186 String (var1133_getRootOfQualifiedName/-763095942 var435)) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getRootOfQualifiedName(java.lang.String)>($r1) 
(define-const var3 String (exportSymbolFunction/1460596429 var931)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.GenerateExports: java.lang.String exportSymbolFunction> 
(define-const var1490 String (var1133_getRootOfQualifiedName/-763095942 var3)) ; Statement: r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getRootOfQualifiedName(java.lang.String)>($r3) 
(assert true)
(define-const var476 Bool (= var186 var1490)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.GenerateExports: void declareSyntheticExternsVar(java.lang.String,com.google.javascript.rhino.Node)>(r2, r5) 
(assert (not (= (ite var476 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (declareSyntheticExternsVar/366803125 var931 var186 var705)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.GenerateExports: void declareSyntheticExternsVar(java.lang.String,com.google.javascript.rhino.Node)>(r2, r5) 

(declare-const var931!1 var280)
(declare-const var186!1 String)
(declare-const var705!1 var3816)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exportPropertyFunction/1460596429=([com.google.javascript.jscomp.GenerateExports], java.lang.String), var1133_getRootOfQualifiedName/-763095942=([java.lang.String], java.lang.String), exportSymbolFunction/1460596429=([com.google.javascript.jscomp.GenerateExports], java.lang.String), declareSyntheticExternsVar/366803125=([com.google.javascript.jscomp.GenerateExports, java.lang.String, com.google.javascript.rhino.Node], void)}
; {var280=com.google.javascript.jscomp.GenerateExports, var931=r0, var3816=com.google.javascript.rhino.Node, var705=r5, var435=$r1, var1133=com.google.javascript.jscomp.NodeUtil, var186=r2, var3=$r3, var1490=r4, var476=$z0}
; {com.google.javascript.jscomp.GenerateExports=var280, r0=var931, com.google.javascript.rhino.Node=var3816, r5=var705, $r1=var435, com.google.javascript.jscomp.NodeUtil=var1133, r2=var186, $r3=var3, r4=var1490, $z0=var476}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.GenerateExports;	r5 := @parameter0: com.google.javascript.rhino.Node;	$r1 = r0.<com.google.javascript.jscomp.GenerateExports: java.lang.String exportPropertyFunction>;	r2 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getRootOfQualifiedName(java.lang.String)>($r1);	$r3 = r0.<com.google.javascript.jscomp.GenerateExports: java.lang.String exportSymbolFunction>;	r4 = staticinvoke <com.google.javascript.jscomp.NodeUtil: java.lang.String getRootOfQualifiedName(java.lang.String)>($r3);	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 == 0 goto virtualinvoke r0.<com.google.javascript.jscomp.GenerateExports: void declareSyntheticExternsVar(java.lang.String,com.google.javascript.rhino.Node)>(r2, r5);	virtualinvoke r0.<com.google.javascript.jscomp.GenerateExports: void declareSyntheticExternsVar(java.lang.String,com.google.javascript.rhino.Node)>(r2, r5);	goto [?= return];	return
;block_num 3