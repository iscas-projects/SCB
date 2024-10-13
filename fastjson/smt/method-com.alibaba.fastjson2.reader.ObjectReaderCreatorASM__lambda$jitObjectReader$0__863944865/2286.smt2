(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var2687 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2687 null-ClassObject)))
(declare-const var3486 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3486 null-String)))
(assert true)
(define-const var3458 String (getName/-1958580599 var2687)) ; Statement: $r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var308 Bool (= var3458 var3486)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = null 
(assert (= (ite var308 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2246 ClassObject null-ClassObject) ; Statement: $r3 = null 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var2687=r0, var3486=r1, var531=null_type, var3458=$r2, var308=$z0, var2246=$r3}
; {r0=var2687, r1=var3486, null_type=var531, $r2=var3458, $z0=var308, $r3=var2246}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = null;	$r3 = null;	return $r3
;block_num 3