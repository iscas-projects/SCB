(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1128 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1128 null-String)))
(declare-const var3870 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3870 null-Bool)))
(define-const var749 String "") ; Statement: $r1 = "" 
(assert true)
(define-const var1555 Bool (= var749 var1128)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (not (= (ite var1555 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1128=r0, var3110=null_type, var3870=z1, var749=$r1, var1555=$z0}
; {r0=var1128, null_type=var3110, z1=var3870, $r1=var749, $z0=var1555}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	$r1 = "";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	return r0
;block_num 2