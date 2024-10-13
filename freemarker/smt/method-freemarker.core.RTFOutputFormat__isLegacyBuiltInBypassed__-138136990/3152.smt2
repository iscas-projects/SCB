(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2435 0)
(declare-sort var2084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2435 var2435)
(declare-const null-String String)
(declare-const var3383 var2435) ; Statement: r1 := @this: freemarker.core.RTFOutputFormat 
(assert (not (= var3383 null-var2435)))
(declare-const var921 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var921 null-String)))
(assert true)
(define-const var686 Bool (= var921 "rtf")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("rtf") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2435=freemarker.core.RTFOutputFormat, var3383=r1, var921=r0, var2084=null_type, var686=$z0}
; {freemarker.core.RTFOutputFormat=var2435, r1=var3383, r0=var921, null_type=var2084, $z0=var686}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.core.RTFOutputFormat;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("rtf");	return $z0
;block_num 1