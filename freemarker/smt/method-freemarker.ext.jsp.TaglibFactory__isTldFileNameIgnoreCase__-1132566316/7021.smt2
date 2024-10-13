(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1775 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-String String)
(declare-const var142 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var142 null-String)))
(assert true)
(define-const var1689 Int (lastIndexOf/-1292097097 var142 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (not (>= var1689 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var142=r0, var1775=null_type, var1689=i0}
; {r0=var142, null_type=var1775, i0=var1689}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $i1 = i0 + 1;	return 0
;block_num 2