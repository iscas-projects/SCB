(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2202 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1515 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1515 null-String)))
(define-const var3905 String "Bitronix") ; Statement: $r1 = "Bitronix" 
(assert true)
(define-const var3007 Bool (= var3905 var1515)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "Borland" 
(assert (not (= (ite var3007 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/engine/transaction/jta/platform/internal/BitronixJtaPlatform;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1515=r0, var2202=null_type, var3905=$r1, var3007=$z0}
; {r0=var1515, null_type=var2202, $r1=var3905, $z0=var3007}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "Bitronix";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "Borland";	return class "Lorg/hibernate/engine/transaction/jta/platform/internal/BitronixJtaPlatform;"
;block_num 2