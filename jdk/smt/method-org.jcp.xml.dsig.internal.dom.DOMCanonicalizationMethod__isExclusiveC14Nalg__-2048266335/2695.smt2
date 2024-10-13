(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var400 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var400 null-String)))
(assert true)
(define-const var1463 Bool (= var400 "http://www.w3.org/2001/10/xml-exc-c14n#")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/10/xml-exc-c14n#") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var1463 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3667 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var400=r0, var3413=null_type, var1463=$z0, var3667=$z2}
; {r0=var400, null_type=var3413, $z0=var1463, $z2=var3667}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/10/xml-exc-c14n#");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3