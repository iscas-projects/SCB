(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var351 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var351 null-String)))
(assert true)
(define-const var116 Int (indexOf/-1037706067 var351 10)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(10) 
 ; Statement: if i0 <= 0 goto return r0 
(assert (<= var116 0)) ; Cond: i0 <= 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var351=r0, var2421=null_type, var116=i0}
; {r0=var351, null_type=var2421, i0=var116}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(10);	if i0 <= 0 goto return r0;	return r0
;block_num 2