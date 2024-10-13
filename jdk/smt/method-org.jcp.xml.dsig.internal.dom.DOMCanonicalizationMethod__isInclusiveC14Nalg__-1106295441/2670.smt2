(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var47 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1936 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1936 null-String)))
(assert true)
(define-const var1496 Bool (= var1936 "http://www.w3.org/TR/2001/REC-xml-c14n-20010315")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/TR/2001/REC-xml-c14n-20010315") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var1496 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2771 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1936=r0, var47=null_type, var1496=$z0, var2771=$z2}
; {r0=var1936, null_type=var47, $z0=var1496, $z2=var2771}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/TR/2001/REC-xml-c14n-20010315");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3