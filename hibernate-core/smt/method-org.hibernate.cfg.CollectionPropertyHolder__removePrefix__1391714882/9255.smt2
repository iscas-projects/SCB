(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var372 0)
(declare-sort var2329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var372 var372)
(declare-const null-String String)
(declare-const var652 var372) ; Statement: r8 := @this: org.hibernate.cfg.CollectionPropertyHolder 
(assert (not (= var652 null-var372)))
(declare-const var2920 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2920 null-String)))
(declare-const var3873 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3873 null-String)))
(declare-const var2356 String) ; Statement: r6 := @parameter2: java.lang.String 
(assert (not (= var2356 null-String)))
(assert true)
(define-const var1170 Bool (= var2920 var3873)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var1170 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var372=org.hibernate.cfg.CollectionPropertyHolder, var652=r8, var2920=r0, var2329=null_type, var3873=r1, var2356=r6, var1170=$z0}
; {org.hibernate.cfg.CollectionPropertyHolder=var372, r8=var652, r0=var2920, null_type=var2329, r1=var3873, r6=var2356, $z0=var1170}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: org.hibernate.cfg.CollectionPropertyHolder;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r6 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	return ""
;block_num 2