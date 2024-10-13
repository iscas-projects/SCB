(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2639 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var2228 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2228 null-ClassObject)))
(declare-const var2132 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2132 null-String)))
(assert true)
(define-const var3762 String (getName/-1958580599 var2228)) ; Statement: $r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var675 Bool (= var3762 var2132)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = null 
(assert (not (= (ite var675 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var968 ClassObject var2228) ; Statement: $r3 = r0 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String)}
; {var2228=r0, var2132=r1, var2639=null_type, var3762=$r2, var675=$z0, var968=$r3}
; {r0=var2228, r1=var2132, null_type=var2639, $r2=var3762, $z0=var675, $r3=var968}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 := @parameter1: java.lang.String;	$r2 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = null;	$r3 = r0;	goto [?= return $r3];	return $r3
;block_num 3