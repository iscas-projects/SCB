(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2830 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(declare-const null-String String)
(declare-const var3618 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3618 null-String)))
(assert true)
(define-const var2435 Int (indexOf/-1209756239 var3618 " from ")) ; Statement: i5 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(" from ") 
 ; Statement: if i5 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5) 
(assert (not (>= var2435 0))) ; Negate: Cond: i5 >= 0  
 ; Statement: return i5 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int)}
; {var3618=r0, var2830=null_type, var2435=i5}
; {r0=var3618, null_type=var2830, i5=var2435}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i5 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>(" from ");	if i5 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5);	return i5
;block_num 2