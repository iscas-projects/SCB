(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var3653 var3653)
(declare-const null-String String)
(declare-const var2206 var3653) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher 
(assert (not (= var2206 null-var3653)))
(declare-const var3387 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3387 null-String)))
(define-const var2755 Int (String_length/-667254855 var3387)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var754 Int (- var2755 1)) ; Statement: i3 = i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i3 < 0 goto return "" 
(assert (< var754 0)) ; Cond: i3 < 0 
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var3653=com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher, var2206=r1, var3387=r0, var2755=i0, var754=i3}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher=var3653, r1=var2206, r0=var3387, i0=var2755, i3=var754}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.CharMatcher;	r0 := @parameter0: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i3 = i0 - 1;	if i3 < 0 goto return "";	return ""
;block_num 3