(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var1853) String)
(declare-const null-var1853 var1853)
(declare-const var3454 var1853) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var3454 null-var1853)))
(define-const var3562 String "valueOf") ; Statement: $r2 = "valueOf" 
(assert true)
(define-const var487 String (getName/1227988463 var3454)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2063 Bool (= var3562 var487)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if 0 != $z0 goto $z1 = 0 
(assert (not (not (= 0 (ite var2063 1 0))))) ; Negate: Cond: 0 != $z0  
(define-const var568 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var1853=java.lang.reflect.Method, var3454=r0, var3562=$r2, var487=$r1, var2063=$z0, var568=$z1}
; {java.lang.reflect.Method=var1853, r0=var3454, $r2=var3562, $r1=var487, $z0=var2063, $z1=var568}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	$r2 = "valueOf";	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if 0 != $z0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3