(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3952 0)
(declare-sort var2132 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var3952 var3952)
(declare-const null-String String)
(declare-const var1337 var3952) ; Statement: r5 := @this: freemarker.cache.TemplateNameFormat$Default020300 
(assert (not (= var1337 null-var3952)))
(declare-const var289 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var289 null-String)))
(assert true)
(define-const var2051 Int (indexOf/-1209756239 var289 "://")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("://") 
 ; Statement: if $i0 <= 0 goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
(assert (not (<= var2051 0))) ; Negate: Cond: $i0 <= 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var3952=freemarker.cache.TemplateNameFormat$Default020300, var1337=r5, var289=r0, var2132=null_type, var2051=$i0}
; {freemarker.cache.TemplateNameFormat$Default020300=var3952, r5=var1337, r0=var289, null_type=var2132, $i0=var2051}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r5 := @this: freemarker.cache.TemplateNameFormat$Default020300;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("://");	if $i0 <= 0 goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	return r0
;block_num 2