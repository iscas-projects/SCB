(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1434 0)
(declare-sort var1808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1434_getPathRelativeToClosureBase/-145143712 (var1434) String)
(declare-const null-var1434 var1434)
(declare-const null-String String)
(declare-const var1290 var1434) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.deps.DependencyInfo 
(assert (not (= var1290 null-var1434)))
(declare-const var2711 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2711 null-String)))
(define-const var1722 String (var1434_getPathRelativeToClosureBase/-145143712 var1290)) ; Statement: $r2 = interfaceinvoke r1.<com.google.javascript.jscomp.deps.DependencyInfo: java.lang.String getPathRelativeToClosureBase()>() 
(assert true)
(define-const var2365 Bool (= var2711 var1722)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $z1 = 0 
(assert (not (not (= (ite var2365 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3469 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1434_getPathRelativeToClosureBase/-145143712=([com.google.javascript.jscomp.deps.DependencyInfo], java.lang.String)}
; {var1434=com.google.javascript.jscomp.deps.DependencyInfo, var1290=r1, var2711=r0, var1808=null_type, var1722=$r2, var2365=$z0, var3469=$z1}
; {com.google.javascript.jscomp.deps.DependencyInfo=var1434, r1=var1290, r0=var2711, null_type=var1808, $r2=var1722, $z0=var2365, $z1=var3469}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.deps.DependencyInfo;	r0 := @parameter1: java.lang.String;	$r2 = interfaceinvoke r1.<com.google.javascript.jscomp.deps.DependencyInfo: java.lang.String getPathRelativeToClosureBase()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3