(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2780 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var3280 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3280 null-String)))
 ; Statement: if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
(assert (not (= var3280 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var1419 Bool (endsWith/985337093 var3280 ".")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".") 
 ; Statement: if $z0 == 0 goto $r1 = <com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern EMAIL_PATTERN> 
(assert (not (= (ite var1419 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var3280=r0, var2780=null_type, var1419=$z0}
; {r0=var3280, null_type=var2780, $z0=var1419}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".");	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(".");	if $z0 == 0 goto $r1 = <com.alibaba.fastjson2.schema.StringSchema: java.util.regex.Pattern EMAIL_PATTERN>;	return 0
;block_num 3