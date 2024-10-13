(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var809 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var809 null-String)))
(assert true)
(define-const var3770 Bool (= var809 "void")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("int") 
(assert (not (= (ite var3770 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "V" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var809=r0, var2820=null_type, var3770=$z0}
; {r0=var809, null_type=var2820, $z0=var3770}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("void");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("int");	return "V"
;block_num 2