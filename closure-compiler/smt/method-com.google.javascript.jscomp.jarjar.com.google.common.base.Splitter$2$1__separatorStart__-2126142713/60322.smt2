(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1162 0)
(declare-sort var599 0)
(declare-sort var1057 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-204179501 (var1162) var599)
(declare-fun val$separator/-1832612666 (var599) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun toSplit/15096330 (var1057) String)
(declare-fun cast-from-var1162-to-var1057 (var1162) var1057)
(declare-fun String_length/-667254855 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1162 var1162)
(declare-const null-Int Int)
(declare-const var1168 var1162) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1 
(assert (not (= var1168 null-var1162)))
(declare-const var1012 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var1012 null-Int)))
(define-const var1612 var599 (this$0/-204179501 var1168)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2 this$0> 
(define-const var171 String (val$separator/-1832612666 var1612)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2: java.lang.String val$separator> 
(assert true)
(define-const var617 Int (length/-134980193 var171)) ; Statement: i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var2573 Int var1012) ; Statement: i7 = i1 
(define-const var2036 String (toSplit/15096330 (cast-from-var1162-to-var1057 var1168))) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1: java.lang.CharSequence toSplit> 
(define-const var3844 Int (String_length/-667254855 var2036)) ; Statement: $i2 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>() 
(define-const var1934 Int (- var3844 var617)) ; Statement: i3 = $i2 - i0 
(assert true) ; Non Conditional
 ; Statement: if i7 > i3 goto $i12 = (int) -1 
(assert (> var2573 var1934)) ; Cond: i7 > i3 
(define-const var3739 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-204179501=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2), val$separator/-1832612666=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2], java.lang.String), length/-134980193=([java.lang.String], int), toSplit/15096330=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator], java.lang.CharSequence), cast-from-var1162-to-var1057=([com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1], com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator), String_length/-667254855=([java.lang.CharSequence], int), cast-from-Int-to-Int=([int], int)}
; {var1162=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1, var1168=r0, var1012=i1, var599=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2, var1612=$r1, var171=$r2, var617=i0, var2573=i7, var1057=com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator, var2036=$r3, var3844=$i2, var1934=i3, var3739=$i12}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1=var1162, r0=var1168, i1=var1012, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2=var599, $r1=var1612, $r2=var171, i0=var617, i7=var2573, com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$SplittingIterator=var1057, $r3=var2036, $i2=var3844, i3=var1934, $i12=var3739}
;seq <java.lang.String: int length()>;	<java.lang.CharSequence: int length()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1;	i1 := @parameter0: int;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1: com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2 this$0>;	$r2 = $r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2: java.lang.String val$separator>;	i0 = virtualinvoke $r2.<java.lang.String: int length()>();	i7 = i1;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Splitter$2$1: java.lang.CharSequence toSplit>;	$i2 = interfaceinvoke $r3.<java.lang.CharSequence: int length()>();	i3 = $i2 - i0;	if i7 > i3 goto $i12 = (int) -1;	$i12 = (int) -1;	return $i12
;block_num 3