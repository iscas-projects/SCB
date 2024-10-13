(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var698 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var698 null-String)))
(define-const var2854 String "true") ; Statement: $r1 = "true" 
(assert true)
(define-const var1110 Bool (= var2854 var698)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var1110 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2938 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var698=r0, var2801=null_type, var2854=$r1, var1110=$z0, var2938=$z2}
; {r0=var698, null_type=var2801, $r1=var2854, $z0=var1110, $z2=var2938}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "true";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3