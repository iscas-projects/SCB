(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getByteCount/-1545773945 (var2514) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2514 var2514)
(declare-const var356 var2514) ; Statement: r0 := @this: org.apache.commons.io.output.CountingOutputStream 
(assert (not (= var356 null-var2514)))
(assert true)
(define-const var2494 Int (getByteCount/-1545773945 var356)) ; Statement: l0 = virtualinvoke r0.<org.apache.commons.io.output.CountingOutputStream: long getByteCount()>() 
(define-const var1567 Int (ite (> var2494 2147483647) 1 (ite (< var2494 2147483647) (- 1) 0))) ; Statement: $b1 = l0 cmp 2147483647L 
(define-const var2826 Int (cast-from-Int-to-Int var1567)) ; Statement: $i3 = (int) $b1 
 ; Statement: if $i3 <= 0 goto $i2 = (int) l0 
(assert (<= var2826 0)) ; Cond: $i3 <= 0 
(define-const var895 Int (cast-from-Int-to-Int var2494)) ; Statement: $i2 = (int) l0 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {getByteCount/-1545773945=([org.apache.commons.io.output.CountingOutputStream], long), cast-from-Int-to-Int=([byte], int)}
; {var2514=org.apache.commons.io.output.CountingOutputStream, var356=r0, var2494=l0, var1567=$b1, var2826=$i3, var895=$i2}
; {org.apache.commons.io.output.CountingOutputStream=var2514, r0=var356, l0=var2494, $b1=var1567, $i3=var2826, $i2=var895}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.io.output.CountingOutputStream;	l0 = virtualinvoke r0.<org.apache.commons.io.output.CountingOutputStream: long getByteCount()>();	$b1 = l0 cmp 2147483647L;	$i3 = (int) $b1;	if $i3 <= 0 goto $i2 = (int) l0;	$i2 = (int) l0;	return $i2
;block_num 2