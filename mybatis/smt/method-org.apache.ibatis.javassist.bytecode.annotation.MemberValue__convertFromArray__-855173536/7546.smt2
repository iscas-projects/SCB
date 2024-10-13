(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3330 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3330 null-String)))
(assert true)
(define-const var2238 Int (indexOf/-1209756239 var3330 "[]")) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("[]") 
(define-const var3810 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i1 == $i3 goto return r0 
(assert (= var2238 var3810)) ; Cond: i1 == $i3 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3330=r0, var3181=null_type, var2238=i1, var3810=$i3}
; {r0=var3330, null_type=var3181, i1=var2238, $i3=var3810}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("[]");	$i3 = (int) -1;	if i1 == $i3 goto return r0;	return r0
;block_num 2