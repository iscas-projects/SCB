(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1971 0)
(declare-sort var3695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun size/1389889126 (var1971) Int)
(declare-const null-var1971 var1971)
(declare-const null-String String)
(declare-const var3442 var1971) ; Statement: r1 := @this: org.apache.commons.lang3.text.StrBuilder 
(assert (not (= var3442 null-var1971)))
(declare-const var1237 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1237 null-String)))
 ; Statement: if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var1237 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var2319 Int (length/-134980193 var1237)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 != 0 goto $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
(assert (not (= var2319 0))) ; Cond: i0 != 0 
(define-const var823 Int (size/1389889126 var3442)) ; Statement: $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size> 
 ; Statement: if i0 <= $i1 goto i4 = 0 
(assert (not (<= var2319 var823))) ; Negate: Cond: i0 <= $i1  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), size/1389889126=([org.apache.commons.lang3.text.StrBuilder], int)}
; {var1971=org.apache.commons.lang3.text.StrBuilder, var3442=r1, var1237=r0, var3695=null_type, var2319=i0, var823=$i1}
; {org.apache.commons.lang3.text.StrBuilder=var1971, r1=var3442, r0=var1237, null_type=var3695, i0=var2319, $i1=var823}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.text.StrBuilder;	r0 := @parameter0: java.lang.String;	if r0 != null goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 != 0 goto $i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	$i1 = r1.<org.apache.commons.lang3.text.StrBuilder: int size>;	if i0 <= $i1 goto i4 = 0;	return 0
;block_num 4