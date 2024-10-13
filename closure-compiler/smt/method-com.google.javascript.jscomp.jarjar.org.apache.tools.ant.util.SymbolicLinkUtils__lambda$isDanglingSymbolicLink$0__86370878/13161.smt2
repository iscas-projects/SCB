(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1958 0)
(declare-sort var1369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-String String)
(declare-const null-var1369 var1369)
(declare-const var461 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var461 null-String)))
(declare-const var529 var1369) ; Statement: r2 := @parameter1: java.io.File 
(assert (not (= var529 null-var1369)))
(declare-const var2091 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var2091 null-String)))
(assert true)
(define-const var2290 Bool (= var461 var2091)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var461=r0, var1958=null_type, var1369=java.io.File, var529=r2, var2091=r1, var2290=$z0}
; {r0=var461, null_type=var1958, java.io.File=var1369, r2=var529, r1=var2091, $z0=var2290}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.io.File;	r1 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r1);	return $z0
;block_num 1