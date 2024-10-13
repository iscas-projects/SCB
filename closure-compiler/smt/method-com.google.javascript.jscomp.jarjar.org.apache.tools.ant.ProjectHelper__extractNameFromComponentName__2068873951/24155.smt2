(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var3168 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3168 null-String)))
(assert true)
(define-const var2079 Int (lastIndexOf/-1292097097 var3168 58)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(58) 
(define-const var3119 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $i1 = i0 + 1 
(assert (not (not (= var2079 var3119)))) ; Negate: Cond: i0 != $i3  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3168=r0, var160=null_type, var2079=i0, var3119=$i3}
; {r0=var3168, null_type=var160, i0=var2079, $i3=var3119}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(58);	$i3 = (int) -1;	if i0 != $i3 goto $i1 = i0 + 1;	return r0
;block_num 2