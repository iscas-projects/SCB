(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2556 0)
(declare-sort var3095 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-var2556 var2556)
(declare-const null-String String)
(declare-const var1462 var2556) ; Statement: r11 := @this: freemarker.cache.TemplateNameFormat$Default020300 
(assert (not (= var1462 null-var2556)))
(declare-const var1356 String) ; Statement: r12 := @parameter0: java.lang.String 
(assert (not (= var1356 null-String)))
(declare-const var344 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var344 null-String)))
(assert true)
(define-const var321 Int (indexOf/-1209756239 var344 "://")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("://") 
 ; Statement: if $i0 <= 0 goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
(assert (not (<= var321 0))) ; Negate: Cond: $i0 <= 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var2556=freemarker.cache.TemplateNameFormat$Default020300, var1462=r11, var1356=r12, var3095=null_type, var344=r0, var321=$i0}
; {freemarker.cache.TemplateNameFormat$Default020300=var2556, r11=var1462, r12=var1356, null_type=var3095, r0=var344, $i0=var321}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r11 := @this: freemarker.cache.TemplateNameFormat$Default020300;	r12 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("://");	if $i0 <= 0 goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	return r0
;block_num 2