(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2158 0)
(declare-sort var2992 0)
(declare-sort var204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-204177579 (var2158) var2992)
(declare-fun val$length/-1832612664 (var2992) Int)
(declare-fun toSplit/15096330 (var204) String)
(declare-fun cast-from-var2158-to-var204 (var2158) var204)
(declare-fun String_length/-667254855 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2158 var2158)
(declare-const null-Int Int)
(declare-const var3321 var2158) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1 
(assert (not (= var3321 null-var2158)))
(declare-const var3932 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3932 null-Int)))
(define-const var3369 var2992 (this$0/-204177579 var3321)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4 this$0> 
(define-const var3164 Int (val$length/-1832612664 var3369)) ; Statement: $i1 = $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4: int val$length> 
(define-const var619 Int (+ var3932 var3164)) ; Statement: i2 = i0 + $i1 
(define-const var1957 String (toSplit/15096330 (cast-from-var2158-to-var204 var3321))) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1: java.lang.CharSequence toSplit> 
(define-const var1963 Int (String_length/-667254855 var1957)) ; Statement: $i3 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if i2 >= $i3 goto $i6 = (int) -1 
(assert (>= var619 var1963)) ; Cond: i2 >= $i3 
(define-const var2726 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i6 = (int) -1 
(define-const var1097 Int var2726) ; Statement: $i4 = $i6 
(assert true) ; Non Conditional
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-204177579=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4), val$length/-1832612664=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4], int), toSplit/15096330=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator], java.lang.CharSequence), cast-from-var2158-to-var204=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator), String_length/-667254855=([java.lang.CharSequence], int), cast-from-Int-to-Int=([int], int)}
; {var2158=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1, var3321=r0, var3932=i0, var2992=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4, var3369=$r1, var3164=$i1, var619=i2, var204=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator, var1957=$r2, var1963=$i3, var2726=$i6, var1097=$i4}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1=var2158, r0=var3321, i0=var3932, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4=var2992, $r1=var3369, $i1=var3164, i2=var619, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator=var204, $r2=var1957, $i3=var1963, $i6=var2726, $i4=var1097}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1;	i0 := @parameter0: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4 this$0>;	$i1 = $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4: int val$length>;	i2 = i0 + $i1;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$4$1: java.lang.CharSequence toSplit>;	$i3 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if i2 >= $i3 goto $i6 = (int) -1;	$i6 = (int) -1;	$i4 = $i6;	return $i4
;block_num 3