(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var717 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var2920 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2920 null-String)))
(assert true)
(define-const var388 Int (indexOf/-1209756239 var2920 "://")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("://") 
(define-const var2284 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
 ; Statement: if i0 <= $i5 goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
(assert (<= var388 var2284)) ; Cond: i0 <= $i5 
(assert true)
(define-const var2596 Bool (startsWith/-1785782452 var2920 "/")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/") 
 ; Statement: if $z0 == 0 goto return r0 
(assert (= (ite var2596 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2920=r0, var717=null_type, var388=i0, var2284=$i5, var2596=$z0}
; {r0=var2920, null_type=var717, i0=var388, $i5=var2284, $z0=var2596}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("://");	$i5 = (int) -1;	if i0 <= $i5 goto $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("/");	if $z0 == 0 goto return r0;	return r0
;block_num 3