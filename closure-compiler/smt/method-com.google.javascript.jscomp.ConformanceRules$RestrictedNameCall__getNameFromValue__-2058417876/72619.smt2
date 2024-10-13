(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-const null-String String)
(declare-const var1905 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1905 null-String)))
(assert true)
(define-const var439 Int (indexOf/-1037706067 var1905 58)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58) 
 ; Statement: if i0 >= 1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (>= var439 1))) ; Negate: Cond: i0 >= 1  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int)}
; {var1905=r0, var1916=null_type, var439=i0}
; {r0=var1905, null_type=var1916, i0=var439}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58);	if i0 >= 1 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return null
;block_num 2