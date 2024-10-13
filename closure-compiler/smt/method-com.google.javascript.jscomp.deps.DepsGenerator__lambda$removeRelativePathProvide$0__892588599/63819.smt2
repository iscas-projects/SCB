(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2243 0)
(declare-sort var1758 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2243_getPathRelativeToClosureBase/-145143712 (var2243) String)
(declare-const null-var2243 var2243)
(declare-const null-String String)
(declare-const var491 var2243) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.deps.DependencyInfo 
(assert (not (= var491 null-var2243)))
(declare-const var2135 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2135 null-String)))
(define-const var1722 String (var2243_getPathRelativeToClosureBase/-145143712 var491)) ; Statement: $r2 = interfaceinvoke r1.<com.google.javascript.jscomp.deps.DependencyInfo: java.lang.String getPathRelativeToClosureBase()>() 
(assert true)
(define-const var30 Bool (= var2135 var1722)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (= (ite var30 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1393 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2243_getPathRelativeToClosureBase/-145143712=([com.google.javascript.jscomp.deps.DependencyInfo], java.lang.String)}
; {var2243=com.google.javascript.jscomp.deps.DependencyInfo, var491=r1, var2135=r0, var1758=null_type, var1722=$r2, var30=$z0, var1393=$z1}
; {com.google.javascript.jscomp.deps.DependencyInfo=var2243, r1=var491, r0=var2135, null_type=var1758, $r2=var1722, $z0=var30, $z1=var1393}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.deps.DependencyInfo;	r0 := @parameter1: java.lang.String;	$r2 = interfaceinvoke r1.<com.google.javascript.jscomp.deps.DependencyInfo: java.lang.String getPathRelativeToClosureBase()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3