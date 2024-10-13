(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var3920 var3920)
(declare-const null-String String)
(declare-const var3823 var3920) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var3823 null-var3920)))
(declare-const var1938 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1938 null-String)))
(define-const var2159 Int (String_length/-667254855 var1938)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var924 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i0 goto i5 = i0 - 1 
(assert (>= var924 var2159)) ; Cond: i4 >= i0 
(define-const var2864 Int (- var2159 1)) ; Statement: i5 = i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i5 <= i4 goto $i1 = i5 + 1 
(assert (<= var2864 var924)) ; Cond: i5 <= i4 
(define-const var3651 Int (+ var2864 1)) ; Statement: $i1 = i5 + 1 
(define-const var617 String (String_subSequence/-1087362312 var1938 var924 var3651)) ; Statement: $r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i4, $i1) 
(define-const var66 String (String_toString/-1426662429 var617)) ; Statement: $r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var3920=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var3823=r3, var1938=r0, var2159=i0, var924=i4, var2864=i5, var3651=$i1, var617=$r1, var66=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3920, r3=var3823, r0=var1938, i0=var2159, i4=var924, i5=var2864, $i1=var3651, $r1=var617, $r2=var66}
;seq <java.lang.CharSequence: int length()>;	<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>;	<java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: int length()>": 1,"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1,"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r0 := @parameter0: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i4 = 0;	if i4 >= i0 goto i5 = i0 - 1;	i5 = i0 - 1;	if i5 <= i4 goto $i1 = i5 + 1;	$i1 = i5 + 1;	$r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i4, $i1);	$r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>();	return $r2
;block_num 5