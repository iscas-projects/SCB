(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getByteCount/-1840449703 (var1704) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1704 var1704)
(declare-const var1847 var1704) ; Statement: r0 := @this: org.apache.commons.io.input.CountingInputStream 
(assert (not (= var1847 null-var1704)))
(assert true)
(define-const var1893 Int (getByteCount/-1840449703 var1847)) ; Statement: l0 = virtualinvoke r0.<org.apache.commons.io.input.CountingInputStream: long getByteCount()>() 
(define-const var3678 Int (ite (> var1893 2147483647) 1 (ite (< var1893 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var734 Int (cast-from-Int-to-Int var3678)) ; Statement: $i3 = (int) $b1 
 ; Statement: if $i3 <= 0 goto $i2 = (int) l0 
(assert (<= var734 0)) ; Cond: $i3 <= 0 
(define-const var706 Int (cast-from-Int-to-Int var1893)) ; Statement: $i2 = (int) l0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {getByteCount/-1840449703=([org.apache.commons.io.input.CountingInputStream], long), cast-from-Int-to-Int=([byte], int)}
; {var1704=org.apache.commons.io.input.CountingInputStream, var1847=r0, var1893=l0, var3678=$b1, var734=$i3, var706=$i2}
; {org.apache.commons.io.input.CountingInputStream=var1704, r0=var1847, l0=var1893, $b1=var3678, $i3=var734, $i2=var706}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.io.input.CountingInputStream;	l0 = virtualinvoke r0.<org.apache.commons.io.input.CountingInputStream: long getByteCount()>();	$b1 = l0 cmp 2147483647L;	$i3 = (int) $b1;	if $i3 <= 0 goto $i2 = (int) l0;	$i2 = (int) l0;	return $i2
;block_num 2