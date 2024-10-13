(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2616 0)
(declare-sort var2478 0)
(declare-sort var3497 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2616 var2616)
(declare-const null-var2478 var2478)
(declare-const null-String String)
(declare-const var2383 var2616) ; Statement: r1 := @this: com.google.javascript.jscomp.Es6ConvertSuperConstructorCalls 
(assert (not (= var2383 null-var2616)))
(declare-const var2311 var2478) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.NodeTraversal 
(assert (not (= var2311 null-var2478)))
(declare-const var2531 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2531 null-String)))
(assert true)
(define-const var2005 Bool (= var2531 "Object")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Object") 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var2005 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1677 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2616=com.google.javascript.jscomp.Es6ConvertSuperConstructorCalls, var2383=r1, var2478=com.google.javascript.jscomp.NodeTraversal, var2311=r2, var2531=r0, var3497=null_type, var2005=$z0, var1677=$z2}
; {com.google.javascript.jscomp.Es6ConvertSuperConstructorCalls=var2616, r1=var2383, com.google.javascript.jscomp.NodeTraversal=var2478, r2=var2311, r0=var2531, null_type=var3497, $z0=var2005, $z2=var1677}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.Es6ConvertSuperConstructorCalls;	r2 := @parameter0: com.google.javascript.jscomp.NodeTraversal;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Object");	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3