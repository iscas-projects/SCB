(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2583 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2583 null-String)))
(assert true)
(define-const var2734 Bool (= var2583 "http://www.w3.org/2006/12/xml-c14n11")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2006/12/xml-c14n11") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2734 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2997 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2583=r0, var996=null_type, var2734=$z0, var2997=$z2}
; {r0=var2583, null_type=var996, $z0=var2734, $z2=var2997}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2006/12/xml-c14n11");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3