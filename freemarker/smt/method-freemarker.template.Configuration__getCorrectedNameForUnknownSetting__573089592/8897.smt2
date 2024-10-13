(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2453 0)
(declare-sort var1504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2453 var2453)
(declare-const null-String String)
(declare-const var3383 var2453) ; Statement: r5 := @this: freemarker.template.Configuration 
(assert (not (= var3383 null-var2453)))
(declare-const var2417 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2417 null-String)))
(define-const var3345 String "encoding") ; Statement: $r1 = "encoding" 
(assert true)
(define-const var2288 Bool (= var3345 var2417)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto return "default_encoding" 
(assert (not (= (ite var2288 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return "default_encoding" 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2453=freemarker.template.Configuration, var3383=r5, var2417=r0, var1504=null_type, var3345=$r1, var2288=$z0}
; {freemarker.template.Configuration=var2453, r5=var3383, r0=var2417, null_type=var1504, $r1=var3345, $z0=var2288}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	$r1 = "encoding";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto return "default_encoding";	return "default_encoding"
;block_num 2