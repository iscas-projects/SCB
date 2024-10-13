(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var3063 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3063 null-String)))
(define-const var1965 String "int") ; Statement: $r1 = "int" 
(assert true)
(define-const var2389 Bool (= var1965 var3063)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "date" 
(assert (not (= (ite var2389 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3063=r0, var2944=null_type, var1965=$r1, var2389=$z0}
; {r0=var3063, null_type=var2944, $r1=var1965, $z0=var2389}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "int";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "date";	return 0
;block_num 2