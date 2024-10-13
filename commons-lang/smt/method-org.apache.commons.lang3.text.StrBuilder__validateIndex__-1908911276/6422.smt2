(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2518 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/1389889126 (var2518) Int)
(declare-const null-var2518 var2518)
(declare-const null-Int Int)
(declare-const var473 var2518) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var473 null-var2518)))
(declare-const var1874 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1874 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException 
(assert (not (< var1874 0))) ; Negate: Cond: i0 < 0  
(define-const var362 Int (size/1389889126 var473)) ; Statement: $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i0 <= $i1 goto return 
(assert (<= var1874 var362)) ; Cond: i0 <= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int)}
; {var2518=org.apache.commons.lang3.text.StrBuilder, var473=r1, var1874=i0, var362=$i1}
; {org.apache.commons.lang3.text.StrBuilder=var2518, r1=var473, i0=var1874, $i1=var362}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.StringIndexOutOfBoundsException;	$i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 <= $i1 goto return;	return
;block_num 3