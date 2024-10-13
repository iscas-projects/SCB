(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1827 0)
(declare-sort var681 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var681-TRUE var681)
(declare-const var791 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var791 null-String)))
(declare-const var2532 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2532 null-String)))
(declare-const var81 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var81 null-String)))
(declare-const var700 String) ; Statement: r3 := @parameter3: java.lang.String 
(assert (not (= var700 null-String)))
 ; Statement: if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
(assert (not (= var791 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2420 Bool (= var791 var2532)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(assert (not (= (ite var2420 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2298 var681 var681-TRUE) ; Statement: $r6 = <java.lang.Boolean: java.lang.Boolean TRUE> 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var791=r0, var1827=null_type, var2532=r1, var81=r2, var700=r3, var2420=$z0, var681=java.lang.Boolean, var2298=$r6}
; {r0=var791, null_type=var1827, r1=var2532, r2=var81, r3=var700, $z0=var2420, java.lang.Boolean=var681, $r6=var2298}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r3 := @parameter3: java.lang.String;	if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2);	$r6 = <java.lang.Boolean: java.lang.Boolean TRUE>;	return $r6
;block_num 3