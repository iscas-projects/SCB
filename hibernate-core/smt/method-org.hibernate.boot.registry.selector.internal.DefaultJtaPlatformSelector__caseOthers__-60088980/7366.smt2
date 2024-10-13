(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var2691 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2691 null-String)))
(define-const var1639 String "Atomikos") ; Statement: $r1 = "Atomikos" 
(assert true)
(define-const var944 Bool (= var1639 var2691)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "OC4J" 
(assert (not (= (ite var944 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/engine/transaction/jta/platform/internal/AtomikosJtaPlatform;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2691=r0, var3469=null_type, var1639=$r1, var944=$z0}
; {r0=var2691, null_type=var3469, $r1=var1639, $z0=var944}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "Atomikos";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "OC4J";	return class "Lorg/hibernate/engine/transaction/jta/platform/internal/AtomikosJtaPlatform;"
;block_num 2