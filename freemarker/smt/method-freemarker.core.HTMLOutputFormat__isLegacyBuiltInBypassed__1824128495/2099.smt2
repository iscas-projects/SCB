(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var118 0)
(declare-sort var3354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var118 var118)
(declare-const null-String String)
(declare-const var277 var118) ; Statement: r1 := @this: freemarker.core.HTMLOutputFormat 
(assert (not (= var277 null-var118)))
(declare-const var2891 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2891 null-String)))
(assert true)
(define-const var1413 Bool (= var2891 "html")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("html") 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var1413 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3181 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var118=freemarker.core.HTMLOutputFormat, var277=r1, var2891=r0, var3354=null_type, var1413=$z0, var3181=$z3}
; {freemarker.core.HTMLOutputFormat=var118, r1=var277, r0=var2891, null_type=var3354, $z0=var1413, $z3=var3181}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.core.HTMLOutputFormat;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("html");	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3