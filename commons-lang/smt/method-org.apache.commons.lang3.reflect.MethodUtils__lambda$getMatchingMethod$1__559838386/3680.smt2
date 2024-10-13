(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var85 0)
(declare-sort var3459 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var3459) String)
(declare-const null-String String)
(declare-const null-var3459 var3459)
(declare-const var1357 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1357 null-String)))
(declare-const var762 var3459) ; Statement: r0 := @parameter1: java.lang.reflect.Method 
(assert (not (= var762 null-var3459)))
(assert true)
(define-const var2165 String (getName/1227988463 var762)) ; Statement: $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3947 Bool (= var2165 var1357)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var1357=r1, var85=null_type, var3459=java.lang.reflect.Method, var762=r0, var2165=$r2, var3947=$z0}
; {r1=var1357, null_type=var85, java.lang.reflect.Method=var3459, r0=var762, $r2=var2165, $z0=var3947}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.reflect.Method;	$r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 1