(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var614 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var3586 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3586 null-String)))
(define-const var3429 String "+") ; Statement: $r1 = "+" 
(assert true)
(define-const var982 Bool (= var3429 var3586)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "-" 
(assert (not (= (ite var982 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3586=r0, var614=null_type, var3429=$r1, var982=$z0}
; {r0=var3586, null_type=var614, $r1=var3429, $z0=var982}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "+";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "-";	return 0
;block_num 2