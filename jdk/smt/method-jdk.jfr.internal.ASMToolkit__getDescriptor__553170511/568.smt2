(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1900 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1900 null-String)))
(define-const var3803 String "int") ; Statement: $r1 = "int" 
(assert true)
(define-const var2389 Bool (= var3803 var1900)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "long" 
(assert (not (= (ite var2389 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "I" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1900=r0, var2109=null_type, var3803=$r1, var2389=$z0}
; {r0=var1900, null_type=var2109, $r1=var3803, $z0=var2389}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "int";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "long";	return "I"
;block_num 2