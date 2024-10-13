(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1454 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2726 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2726 null-String)))
(assert true)
(define-const var1956 Int (length/-134980193 var2726)) ; Statement: i0 = virtualinvoke r4.<java.lang.String: int length()>() 
 ; Statement: if i0 >= 15 goto (branch) 
(assert (not (>= var1956 15))) ; Negate: Cond: i0 >= 15  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2726=r4, var1454=null_type, var1956=i0}
; {r4=var2726, null_type=var1454, i0=var1956}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @parameter0: java.lang.String;	i0 = virtualinvoke r4.<java.lang.String: int length()>();	if i0 >= 15 goto (branch);	return null
;block_num 2