(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-String String)
(declare-const var1577 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1577 null-String)))
(assert true)
(define-const var1456 Int (lastIndexOf/-1292097097 var1577 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (>= var1456 0))) ; Negate: Cond: i0 >= 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var1577=r0, var181=null_type, var1456=i0}
; {r0=var1577, null_type=var181, i0=var1456}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return null
;block_num 2