(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1352 0)
(declare-sort var78 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1352 var1352)
(declare-const null-String String)
(declare-const var2993 var1352) ; Statement: r1 := @this: freemarker.core.XHTMLOutputFormat 
(assert (not (= var2993 null-var1352)))
(declare-const var3305 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3305 null-String)))
(assert true)
(define-const var3869 Bool (= var3305 "html")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("html") 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var3869 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2873 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1352=freemarker.core.XHTMLOutputFormat, var2993=r1, var3305=r0, var78=null_type, var3869=$z0, var2873=$z3}
; {freemarker.core.XHTMLOutputFormat=var1352, r1=var2993, r0=var3305, null_type=var78, $z0=var3869, $z3=var2873}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.core.XHTMLOutputFormat;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("html");	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3