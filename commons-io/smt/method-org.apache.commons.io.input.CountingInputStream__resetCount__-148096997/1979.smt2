(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var18 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resetByteCount/-1840539502 (var18) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var18 var18)
(declare-const var1856 var18) ; Statement: r0 := @this: org.apache.commons.io.input.CountingInputStream 
(assert (not (= var1856 null-var18)))
(assert true)
(define-const var3003 Int (resetByteCount/-1840539502 var1856)) ; Statement: l0 = virtualinvoke r0.<org.apache.commons.io.input.CountingInputStream: long resetByteCount()>() 
(define-const var155 Int (ite (> var3003 2147483647) 1 (ite (< var3003 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var1494 Int (cast-from-Int-to-Int var155)) ; Statement: $i3 = (int) $b1 
 ; Statement: if $i3 <= 0 goto $i2 = (int) l0 
(assert (<= var1494 0)) ; Cond: $i3 <= 0 
(define-const var3424 Int (cast-from-Int-to-Int var3003)) ; Statement: $i2 = (int) l0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {resetByteCount/-1840539502=([org.apache.commons.io.input.CountingInputStream], long), cast-from-Int-to-Int=([byte], int)}
; {var18=org.apache.commons.io.input.CountingInputStream, var1856=r0, var3003=l0, var155=$b1, var1494=$i3, var3424=$i2}
; {org.apache.commons.io.input.CountingInputStream=var18, r0=var1856, l0=var3003, $b1=var155, $i3=var1494, $i2=var3424}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.io.input.CountingInputStream;	l0 = virtualinvoke r0.<org.apache.commons.io.input.CountingInputStream: long resetByteCount()>();	$b1 = l0 cmp 2147483647L;	$i3 = (int) $b1;	if $i3 <= 0 goto $i2 = (int) l0;	$i2 = (int) l0;	return $i2
;block_num 2