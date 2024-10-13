(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2924 0)
(declare-sort var2608 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var2924 var2924)
(declare-const null-String String)
(declare-const null-var2608 var2608)
(declare-const var185 var2924) ; Statement: r4 := @this: com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper 
(assert (not (= var185 null-var2924)))
(declare-const var2124 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2124 null-String)))
(declare-const var3493 var2608) ; Statement: r1 := @parameter1: java.lang.Appendable 
(assert (not (= var3493 null-var2608)))
(define-const var2740 Int 0) ; Statement: i4 = 0 
(define-const var671 Int (String_length/-667254855 var2124)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var3572 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i0 goto (branch) 
(assert (>= var3572 var671)) ; Cond: i5 >= i0 
 ; Statement: if i4 >= i0 goto return 
(assert (>= var2740 var671)) ; Cond: i4 >= i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var2924=com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper, var185=r4, var2124=r0, var2608=java.lang.Appendable, var3493=r1, var2740=i4, var671=i0, var3572=i5}
; {com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper=var2924, r4=var185, r0=var2124, java.lang.Appendable=var2608, r1=var3493, i4=var2740, i0=var671, i5=var3572}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.deps.SourceCodeEscapers$JavaScriptEscaper;	r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.Appendable;	i4 = 0;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i5 = 0;	if i5 >= i0 goto (branch);	if i4 >= i0 goto return;	return
;block_num 4