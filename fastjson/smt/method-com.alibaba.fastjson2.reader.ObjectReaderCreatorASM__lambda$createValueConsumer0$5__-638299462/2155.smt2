(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var137 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var48 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var48 null-ClassObject)))
(declare-const var2383 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2383 null-String)))
(assert true)
(define-const var3382 String (getName/-1958580599 var48)) ; Statement: $r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2901 Bool (= var3382 var2383)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = null 
(assert (not (= (ite var2901 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2032 ClassObject var48) ; Statement: $r3 = r0 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var48=r0, var2383=r1, var137=null_type, var3382=$r2, var2901=$z0, var2032=$r3}
; {r0=var48, r1=var2383, null_type=var137, $r2=var3382, $z0=var2901, $r3=var2032}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = null;	$r3 = r0;	goto [?= return $r3];	return $r3
;block_num 3