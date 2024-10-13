(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1413 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1413 null-String)))
(define-const var2640 String "\u0022") ; Statement: $r1 = "\"" 
(assert true)
(define-const var3272 Bool (= var2640 var1413)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $z5 = 1 
(assert (not (= (ite var3272 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1132 Bool (ite (= 1 1) true false)) ; Statement: $z5 = 1 
 ; Statement: goto [?= return $z5] 
(assert true) ; Non Conditional
 ; Statement: return $z5 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1413=r0, var1652=null_type, var2640=$r1, var3272=$z0, var1132=$z5}
; {r0=var1413, null_type=var1652, $r1=var2640, $z0=var3272, $z5=var1132}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "\"";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $z5 = 1;	$z5 = 1;	goto [?= return $z5];	return $z5
;block_num 3