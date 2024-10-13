(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2569 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var2569 var2569)
(declare-const null-String String)
(declare-const var2312 var2569) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var2312 null-var2569)))
(declare-const var132 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var132 null-String)))
(define-const var76 Int (String_length/-667254855 var132)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3249 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return "" 
(assert (>= var3249 var76)) ; Cond: i2 >= i0 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var2569=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2312=r1, var132=r0, var76=i0, var3249=i2}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var2569, r1=var2312, r0=var132, i0=var76, i2=var3249}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r0 := @parameter0: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i2 = 0;	if i2 >= i0 goto return "";	return ""
;block_num 3