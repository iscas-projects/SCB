(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2071 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var355 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var355 null-String)))
(assert true)
(define-const var2400 Int (indexOf/-1037706067 var355 58)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58) 
 ; Statement: if i0 >= 1 goto $i1 = i0 + 1 
(assert (not (>= var2400 1))) ; Negate: Cond: i0 >= 1  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var355=r0, var2071=null_type, var2400=i0}
; {r0=var355, null_type=var2071, i0=var2400}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58);	if i0 >= 1 goto $i1 = i0 + 1;	return null
;block_num 2