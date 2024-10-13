(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var3860 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3860 null-String)))
(declare-const var74 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var74 null-String)))
(assert true)
(define-const var1655 Int (indexOf/-1037706067 var74 41)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
 ; Statement: if i0 >= 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (>= var1655 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var3860=r3, var585=null_type, var74=r0, var1655=i0}
; {r3=var3860, null_type=var585, r0=var74, i0=var1655}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r3 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	if i0 >= 0 goto $r1 = new java.lang.StringBuilder;	return r0
;block_num 2