(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3600 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var3600) Int)
(declare-const null-var3600 var3600)
(declare-const null-Int Int)
(declare-const var1550 var3600) ; Statement: r0 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var1550 null-var3600)))
(declare-const var94 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var94 null-Int)))
(declare-const var2825 Int) ; Statement: i2 := @parameter1: int 
(assert (not (= var2825 null-Int)))
 ; Statement: if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (>= var94 0)) ; Cond: i0 >= 0 
(define-const var60 Int (size/1389889126 var1550)) ; Statement: $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i2 <= $i1 goto (branch) 
(assert (<= var2825 var60)) ; Cond: i2 <= $i1 
 ; Statement: if i0 <= i2 goto return i2 
(assert (<= var94 var2825)) ; Cond: i0 <= i2 
 ; Statement: return i2 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int)}
; {var3600=org.apache.commons.lang3.text.StrBuilder, var1550=r0, var94=i0, var2825=i2, var60=$i1}
; {org.apache.commons.lang3.text.StrBuilder=var3600, r0=var1550, i0=var94, i2=var2825, $i1=var60}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	i2 := @parameter1: int;	if i0 >= 0 goto $i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r0.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i2 <= $i1 goto (branch);	if i0 <= i2 goto return i2;	return i2
;block_num 4