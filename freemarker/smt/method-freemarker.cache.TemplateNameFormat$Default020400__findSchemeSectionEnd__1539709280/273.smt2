(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var399 0)
(declare-sort var3212 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var399 var399)
(declare-const null-String String)
(declare-const var3643 var399) ; Statement: r1 := @this: freemarker.cache.TemplateNameFormat$Default020400 
(assert (not (= var3643 null-var399)))
(declare-const var3399 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3399 null-String)))
(assert true)
(define-const var1519 Int (indexOf/-1209756239 var3399 ":")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(":") 
(define-const var3087 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i0 == $i12 goto return 0 
(assert (= var1519 var3087)) ; Cond: i0 == $i12 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var399=freemarker.cache.TemplateNameFormat$Default020400, var3643=r1, var3399=r0, var3212=null_type, var1519=i0, var3087=$i12}
; {freemarker.cache.TemplateNameFormat$Default020400=var399, r1=var3643, r0=var3399, null_type=var3212, i0=var1519, $i12=var3087}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.cache.TemplateNameFormat$Default020400;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(":");	$i12 = (int) -1;	if i0 == $i12 goto return 0;	return 0
;block_num 2