(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2077 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const var1347 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1347 null-String)))
(assert true)
(define-const var3308 Bool (= var1347 "JDataStore")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("JDataStore") 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var3308 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1347=r0, var2077=null_type, var3308=$z0}
; {r0=var1347, null_type=var2077, $z0=var3308}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("JDataStore");	if $z0 == 0 goto return null;	return null
;block_num 2