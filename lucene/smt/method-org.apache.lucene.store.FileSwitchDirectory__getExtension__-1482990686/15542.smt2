(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2968 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var1384 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1384 null-String)))
(assert true)
(define-const var1031 Int (lastIndexOf/-1292097097 var1384 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var1595 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i0 != $i4 goto $i1 = i0 + 1 
(assert (not (not (= var1031 var1595)))) ; Negate: Cond: i0 != $i4  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1384=r0, var2968=null_type, var1031=i0, var1595=$i4}
; {r0=var1384, null_type=var2968, i0=var1031, $i4=var1595}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i4 = (int) -1;	if i0 != $i4 goto $i1 = i0 + 1;	return ""
;block_num 2