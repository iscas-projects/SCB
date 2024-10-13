(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3568) String)
(declare-const null-var3568 var3568)
(declare-const var2576 var3568) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var2576 null-var3568)))
(define-const var240 String "valueOf") ; Statement: $r2 = "valueOf" 
(assert true)
(define-const var2337 String (getName/1227988463 var2576)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1260 Bool (= var240 var2337)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if 0 != $z0 goto $z1 = 0 
(assert (not (= 0 (ite var1260 1 0)))) ; Cond: 0 != $z0 
(define-const var527 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var3568=java.lang.reflect.Method, var2576=r0, var240=$r2, var2337=$r1, var1260=$z0, var527=$z1}
; {java.lang.reflect.Method=var3568, r0=var2576, $r2=var240, $r1=var2337, $z0=var1260, $z1=var527}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	$r2 = "valueOf";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if 0 != $z0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3