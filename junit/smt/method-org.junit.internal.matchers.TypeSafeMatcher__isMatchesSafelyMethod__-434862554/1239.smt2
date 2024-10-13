(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3828 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3828) String)
(declare-const null-var3828 var3828)
(declare-const var1458 var3828) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var1458 null-var3828)))
(define-const var3448 String "matchesSafely") ; Statement: $r2 = "matchesSafely" 
(assert true)
(define-const var3985 String (getName/1227988463 var1458)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3197 Bool (= var3448 var3985)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var3197 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2825 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var3828=java.lang.reflect.Method, var1458=r0, var3448=$r2, var3985=$r1, var3197=$z0, var2825=$z2}
; {java.lang.reflect.Method=var3828, r0=var1458, $r2=var3448, $r1=var3985, $z0=var3197, $z2=var2825}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	$r2 = "matchesSafely";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3