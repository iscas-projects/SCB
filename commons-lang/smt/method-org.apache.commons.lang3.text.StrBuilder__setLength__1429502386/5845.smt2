(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var1662) Int)
(declare-const null-var1662 var1662)
(declare-const null-Int Int)
(declare-const var1280 var1662) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1280 null-var1662)))
(declare-const var3592 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3592 null-Int)))
 ; Statement: if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (>= var3592 0)) ; Cond: i0 >= 0 
(define-const var1481 Int (size/1389889126 var1280)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i0 >= $i1 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (not (>= var3592 var1481))) ; Negate: Cond: i0 >= $i1  
(declare-const var1280!1 var1662)
(assert (not (= var1280!1 null-var1662)))
(assert (= (size/1389889126 var1280!1) var3592)) ; Statement: r0.<org.apache.commons.lang3.text.StrBuilder: int size> = i0 
 ; Statement: goto [?= return r0] 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int)}
; {var1662=org.apache.commons.lang3.text.StrBuilder, var1280=r0, var3592=i0, var1481=$i1}
; {org.apache.commons.lang3.text.StrBuilder=var1662, r0=var1280, i0=var3592, $i1=var1481}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 >= $i1 goto $i2 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	r0.<org.apache.commons.lang3.text.StrBuilder: int size> = i0;	goto [?= return r0];	return r0
;block_num 4