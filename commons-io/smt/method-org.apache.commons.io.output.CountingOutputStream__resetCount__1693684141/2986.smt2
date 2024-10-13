(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3636 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resetByteCount/-2124977600 (var3636) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3636 var3636)
(declare-const var3354 var3636) ; Statement: r0 := @this: org.apache.commons.io.output.CountingOutputStream 
(assert (not (= var3354 null-var3636)))
(assert true)
(define-const var3810 Int (resetByteCount/-2124977600 var3354)) ; Statement: l0 = virtualinvoke r0.<org.apache.commons.io.output.CountingOutputStream: long resetByteCount()>() 
(define-const var537 Int (ite (> var3810 2147483647) 1 (ite (< var3810 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var47 Int (cast-from-Int-to-Int var537)) ; Statement: $i3 = (int) $b1 
 ; Statement: if $i3 <= 0 goto $i2 = (int) l0 
(assert (<= var47 0)) ; Cond: $i3 <= 0 
(define-const var3059 Int (cast-from-Int-to-Int var3810)) ; Statement: $i2 = (int) l0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {resetByteCount/-2124977600=([org.apache.commons.io.output.CountingOutputStream], long), cast-from-Int-to-Int=([byte], int)}
; {var3636=org.apache.commons.io.output.CountingOutputStream, var3354=r0, var3810=l0, var537=$b1, var47=$i3, var3059=$i2}
; {org.apache.commons.io.output.CountingOutputStream=var3636, r0=var3354, l0=var3810, $b1=var537, $i3=var47, $i2=var3059}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.io.output.CountingOutputStream;	l0 = virtualinvoke r0.<org.apache.commons.io.output.CountingOutputStream: long resetByteCount()>();	$b1 = l0 cmp 2147483647L;	$i3 = (int) $b1;	if $i3 <= 0 goto $i2 = (int) l0;	$i2 = (int) l0;	return $i2
;block_num 2