(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3520 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-String String)
(declare-const var3382 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3382 null-String)))
(assert true)
(define-const var2819 Int (indexOf/-1209756239 var3382 "${")) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("${") 
 ; Statement: if $i0 >= 0 goto $r17 = new java.lang.StringBuilder 
(assert (not (>= var2819 0))) ; Negate: Cond: $i0 >= 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var3382=r0, var3520=null_type, var2819=$i0}
; {r0=var3382, null_type=var3520, $i0=var2819}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("${");	if $i0 >= 0 goto $r17 = new java.lang.StringBuilder;	return r0
;block_num 2