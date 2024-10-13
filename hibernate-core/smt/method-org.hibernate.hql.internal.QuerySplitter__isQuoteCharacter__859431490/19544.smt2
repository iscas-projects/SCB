(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var3507 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3507 null-String)))
(define-const var13 String "\u0027") ; Statement: $r1 = "\'" 
(assert true)
(define-const var2199 Bool (= var13 var3507)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2199 1 0) 0))) ; Cond: $z0 != 0 
(define-const var286 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3507=r0, var3596=null_type, var13=$r1, var2199=$z0, var286=$z2}
; {r0=var3507, null_type=var3596, $r1=var13, $z0=var2199, $z2=var286}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "\'";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3