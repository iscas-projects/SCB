(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1742264513 (var3750) String)
(declare-const null-var3750 var3750)
(declare-const var2922 var3750) ; Statement: r1 := @this: org.junit.runners.model.FrameworkField 
(assert (not (= var2922 null-var3750)))
(declare-const var2349 var3750) ; Statement: r0 := @parameter0: org.junit.runners.model.FrameworkField 
(assert (not (= var2349 null-var3750)))
(assert true)
(define-const var1236 String (getName/-1742264513 var2349)) ; Statement: $r3 = virtualinvoke r0.<org.junit.runners.model.FrameworkField: java.lang.String getName()>() 
(assert true)
(define-const var3118 String (getName/-1742264513 var2922)) ; Statement: $r2 = virtualinvoke r1.<org.junit.runners.model.FrameworkField: java.lang.String getName()>() 
(assert true)
(define-const var1653 Bool (= var1236 var3118)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1742264513=([org.junit.runners.model.FrameworkField], java.lang.String)}
; {var3750=org.junit.runners.model.FrameworkField, var2922=r1, var2349=r0, var1236=$r3, var3118=$r2, var1653=$z0}
; {org.junit.runners.model.FrameworkField=var3750, r1=var2922, r0=var2349, $r3=var1236, $r2=var3118, $z0=var1653}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.junit.runners.model.FrameworkField;	r0 := @parameter0: org.junit.runners.model.FrameworkField;	$r3 = virtualinvoke r0.<org.junit.runners.model.FrameworkField: java.lang.String getName()>();	$r2 = virtualinvoke r1.<org.junit.runners.model.FrameworkField: java.lang.String getName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	return $z0
;block_num 1