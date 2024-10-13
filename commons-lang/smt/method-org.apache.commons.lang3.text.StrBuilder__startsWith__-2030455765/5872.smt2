(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1320 0)
(declare-sort var2199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun size/1389889126 (var1320) Int)
(declare-const null-var1320 var1320)
(declare-const null-String String)
(declare-const var2146 var1320) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var2146 null-var1320)))
(declare-const var2412 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2412 null-String)))
 ; Statement: if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2412 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var3928 Int (length/-134980193 var2412)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (not (= var3928 0))) ; Cond: i0 != 0 
(define-const var3598 Int (size/1389889126 var2146)) ; Statement: $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i0 <= $i1 goto i4 = 0 
(assert (<= var3928 var3598)) ; Cond: i0 <= $i1 
(define-const var2430 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto return 1 
(assert (>= var2430 var3928)) ; Cond: i4 >= i0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int)}
; {var1320=org.apache.commons.lang3.text.StrBuilder, var2146=r1, var2412=r0, var2199=null_type, var3928=i0, var3598=$i1, var2430=i4}
; {org.apache.commons.lang3.text.StrBuilder=var1320, r1=var2146, r0=var2412, null_type=var2199, i0=var3928, $i1=var3598, i4=var2430}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	r0 := @parameter0: java.lang.String;	if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 != 0 goto $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 <= $i1 goto i4 = 0;	i4 = 0;	if i4 >= i0 goto return 1;	return 1
;block_num 6