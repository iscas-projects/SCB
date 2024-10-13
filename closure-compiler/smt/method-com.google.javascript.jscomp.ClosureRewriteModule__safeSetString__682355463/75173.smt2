(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var860 0)
(declare-sort var1942 0)
(declare-sort var122 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var1942) String)
(declare-const null-var860 var860)
(declare-const null-var1942 var1942)
(declare-const null-String String)
(declare-const var3802 var860) ; Statement: r5 := @this: com.google.javascript.jscomp.ClosureRewriteModule 
(assert (not (= var3802 null-var860)))
(declare-const var2513 var1942) ; Statement: r0 := @parameter0: com.google.javascript.rhino.Node 
(assert (not (= var2513 null-var1942)))
(declare-const var78 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var78 null-String)))
(assert true)
(define-const var121 String (getString/-897720134 var2513)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1524 Bool (= var121 var78)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert (not (= (ite var1524 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String)}
; {var860=com.google.javascript.jscomp.ClosureRewriteModule, var3802=r5, var1942=com.google.javascript.rhino.Node, var2513=r0, var78=r1, var122=null_type, var121=$r2, var1524=$z0}
; {com.google.javascript.jscomp.ClosureRewriteModule=var860, r5=var3802, com.google.javascript.rhino.Node=var1942, r0=var2513, r1=var78, null_type=var122, $r2=var121, $z0=var1524}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.ClosureRewriteModule;	r0 := @parameter0: com.google.javascript.rhino.Node;	r1 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto r3 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	return
;block_num 2