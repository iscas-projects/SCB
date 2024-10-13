(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var3532 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3532 null-String)))
(assert true)
(define-const var3749 Bool (= var3532 "Node")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Node") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3749 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3532=r0, var2966=null_type, var3749=$z0}
; {r0=var3532, null_type=var2966, $z0=var3749}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Node");	if $z0 != 0 goto return;	return
;block_num 2