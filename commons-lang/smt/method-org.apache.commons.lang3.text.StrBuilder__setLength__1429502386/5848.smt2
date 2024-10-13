(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var2338) Int)
(declare-const null-var2338 var2338)
(declare-const null-Int Int)
(declare-const var87 var2338) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var87 null-var2338)))
(declare-const var3371 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3371 null-Int)))
 ; Statement: if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (>= var3371 0)) ; Cond: i0 >= 0 
(define-const var2920 Int (size/1389889126 var87)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i0 >= $i1 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (>= var3371 var2920)) ; Cond: i0 >= $i1 
(define-const var1399 Int (size/1389889126 var87)) ; Statement: $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i0 <= $i2 goto return r0 
(assert (<= var3371 var1399)) ; Cond: i0 <= $i2 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int)}
; {var2338=org.apache.commons.lang3.text.StrBuilder, var87=r0, var3371=i0, var2920=$i1, var1399=$i2}
; {org.apache.commons.lang3.text.StrBuilder=var2338, r0=var87, i0=var3371, $i1=var2920, $i2=var1399}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 >= $i1 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 <= $i2 goto return r0;	return r0
;block_num 4