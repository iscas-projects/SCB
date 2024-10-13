(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1402 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2936 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2936 null-String)))
(define-const var1520 String "true") ; Statement: $r1 = "true" 
(assert true)
(define-const var3937 Bool (= var1520 var2936)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "false" 
(assert (not (= (ite var3937 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2936=r0, var1402=null_type, var1520=$r1, var3937=$z0}
; {r0=var2936, null_type=var1402, $r1=var1520, $z0=var3937}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "true";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "false";	return 1
;block_num 2