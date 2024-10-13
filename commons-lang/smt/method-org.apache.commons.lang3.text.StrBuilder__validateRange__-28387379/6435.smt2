(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1941 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var1941) Int)
(declare-const null-var1941 var1941)
(declare-const null-Int Int)
(declare-const var1374 var1941) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1374 null-var1941)))
(declare-const var1615 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1615 null-Int)))
(declare-const var1481 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var1481 null-Int)))
 ; Statement: if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (>= var1615 0)) ; Cond: i0 >= 0 
(define-const var3405 Int (size/1389889126 var1374)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i2 <= $i1 goto (branch) 
(assert (not (<= var1481 var3405))) ; Negate: Cond: i2 <= $i1  
(define-const var1481!1 Int (size/1389889126 var1374)) ; Statement: i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert true) ; Non Conditional
 ; Statement: if i0 <= i2 goto return i2 
(assert (<= var1615 var1481!1)) ; Cond: i0 <= i2 
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int)}
; {var1941=org.apache.commons.lang3.text.StrBuilder, var1374=r0, var1615=i0, var1481=i2, var3405=$i1}
; {org.apache.commons.lang3.text.StrBuilder=var1941, r0=var1374, i0=var1615, i2=var1481, $i1=var3405}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i2 := @parameter1: int;	if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i2 <= $i1 goto (branch);	i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 <= i2 goto return i2;	return i2
;block_num 5