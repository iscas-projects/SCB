(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var3965 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3965 null-String)))
(define-const var1733 String "JBossAS") ; Statement: $r1 = "JBossAS" 
(assert true)
(define-const var3736 Bool (= var1733 var3965)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "JBossTS" 
(assert (not (= (ite var3736 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return class "Lorg/hibernate/engine/transaction/jta/platform/internal/JBossAppServerJtaPlatform;" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3965=r0, var1181=null_type, var1733=$r1, var3736=$z0}
; {r0=var3965, null_type=var1181, $r1=var1733, $z0=var3736}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = "JBossAS";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "JBossTS";	return class "Lorg/hibernate/engine/transaction/jta/platform/internal/JBossAppServerJtaPlatform;"
;block_num 2