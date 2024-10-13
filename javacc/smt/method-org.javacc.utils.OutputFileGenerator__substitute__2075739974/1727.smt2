(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1062 0)
(declare-sort var823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1062 var1062)
(declare-const null-String String)
(declare-const var487 var1062) ; Statement: r9 := @this: org.javacc.utils.OutputFileGenerator 
(assert (not (= var487 null-var1062)))
(declare-const var3284 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3284 null-String)))
(assert true)
(define-const var3355 Int (indexOf/-1209756239 var3284 "${")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("${") 
(define-const var3347 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if $i0 != $i18 goto i14 = 1 
(assert (not (not (= var3355 var3347)))) ; Negate: Cond: $i0 != $i18  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var1062=org.javacc.utils.OutputFileGenerator, var487=r9, var3284=r0, var823=null_type, var3355=$i0, var3347=$i18}
; {org.javacc.utils.OutputFileGenerator=var1062, r9=var487, r0=var3284, null_type=var823, $i0=var3355, $i18=var3347}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r9 := @this: org.javacc.utils.OutputFileGenerator;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("${");	$i18 = (int) -1;	if $i0 != $i18 goto i14 = 1;	return r0
;block_num 2