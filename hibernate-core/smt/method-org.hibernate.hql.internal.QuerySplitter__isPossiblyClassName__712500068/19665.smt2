(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2983 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2083 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2083 null-String)))
(declare-const var2512 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2512 null-String)))
(define-const var3173 String "class") ; Statement: $r1 = "class" 
(assert true)
(define-const var3182 Bool (= var3173 var2083)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var3182 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3892 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2083=r0, var2983=null_type, var2512=r3, var3173=$r1, var3182=$z0, var3892=$z3}
; {r0=var2083, null_type=var2983, r3=var2512, $r1=var3173, $z0=var3182, $z3=var3892}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	$r1 = "class";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3