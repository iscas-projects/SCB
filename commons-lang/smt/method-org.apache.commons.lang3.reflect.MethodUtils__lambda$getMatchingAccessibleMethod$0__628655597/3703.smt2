(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2379 0)
(declare-sort var28 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var28) String)
(declare-const null-String String)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const null-var28 var28)
(declare-const var52 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var52 null-String)))
(declare-const var504 (Array Int ClassObject)) ; Statement: r3 := @parameter1: java.lang.Class[] 
(assert (not (= var504 null-__Array__Int__ClassObject__)))
(declare-const var3536 var28) ; Statement: r0 := @parameter2: java.lang.reflect.Method 
(assert (not (= var3536 null-var28)))
(assert true)
(define-const var1367 String (getName/1227988463 var3536)) ; Statement: $r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var1742 Bool (= var1367 var52)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var1742 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1427 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String)}
; {var52=r1, var2379=null_type, var504=r3, var28=java.lang.reflect.Method, var3536=r0, var1367=$r2, var1742=$z0, var1427=$z2}
; {r1=var52, null_type=var2379, r3=var504, java.lang.reflect.Method=var28, r0=var3536, $r2=var1367, $z0=var1742, $z2=var1427}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Class[];	r0 := @parameter2: java.lang.reflect.Method;	$r2 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3