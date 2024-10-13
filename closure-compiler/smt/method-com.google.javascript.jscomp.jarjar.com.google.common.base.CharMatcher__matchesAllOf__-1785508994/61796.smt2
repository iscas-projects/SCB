(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var1218 var1218)
(declare-const null-String String)
(declare-const var2298 var1218) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var2298 null-var1218)))
(declare-const var575 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var575 null-String)))
(define-const var1841 Int (String_length/-667254855 var575)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2837 Int (- var1841 1)) ; Statement: i2 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i2 < 0 goto return 1 
(assert (< var2837 0)) ; Cond: i2 < 0 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var1218=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2298=r1, var575=r0, var1841=$i0, var2837=i2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var1218, r1=var2298, r0=var575, $i0=var1841, i2=var2837}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r0 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i2 = $i0 - 1;	if i2 < 0 goto return 1;	return 1
;block_num 3