(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2243 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var1556 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1556 null-ClassObject)))
(declare-const var3101 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3101 null-String)))
(assert true)
(define-const var1645 String (getName/-1958580599 var1556)) ; Statement: $r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3326 Bool (= var1645 var3101)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = null 
(assert (= (ite var3326 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3360 ClassObject null-ClassObject) ; Statement: $r3 = null 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var1556=r0, var3101=r1, var2243=null_type, var1645=$r2, var3326=$z0, var3360=$r3}
; {r0=var1556, r1=var3101, null_type=var2243, $r2=var1645, $z0=var3326, $r3=var3360}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = null;	$r3 = null;	return $r3
;block_num 3