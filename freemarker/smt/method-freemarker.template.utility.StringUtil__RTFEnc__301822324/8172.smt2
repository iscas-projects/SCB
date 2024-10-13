(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var1349 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1349 null-String)))
(assert true)
(define-const var29 Int (length/-134980193 var1349)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3213 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i15 = (int) -1 
(define-const var2130 Int var3213) ; Statement: i5 = $i15 
(define-const var2605 Int 0) ; Statement: i6 = 0 
(define-const var3374 Int 0) ; Statement: i7 = 0 
(define-const var44 Int 0) ; Statement: i8 = 0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i0 goto $i22 = (int) -1 
(assert (>= var44 var29)) ; Cond: i8 >= i0 
(define-const var2643 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i22 = (int) -1 
 ; Statement: if i5 != $i22 goto $i1 = i0 + i7 
(assert (not (not (= var2130 var2643)))) ; Negate: Cond: i5 != $i22  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var1349=r0, var3316=null_type, var29=i0, var3213=$i15, var2130=i5, var2605=i6, var3374=i7, var44=i8, var2643=$i22}
; {r0=var1349, null_type=var3316, i0=var29, $i15=var3213, i5=var2130, i6=var2605, i7=var3374, i8=var44, $i22=var2643}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i15 = (int) -1;	i5 = $i15;	i6 = 0;	i7 = 0;	i8 = 0;	if i8 >= i0 goto $i22 = (int) -1;	$i22 = (int) -1;	if i5 != $i22 goto $i1 = i0 + i7;	return r0
;block_num 4