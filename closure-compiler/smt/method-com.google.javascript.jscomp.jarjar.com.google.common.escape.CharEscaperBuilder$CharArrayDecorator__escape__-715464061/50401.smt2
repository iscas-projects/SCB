(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3022 0)
(declare-sort var1804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3022 var3022)
(declare-const null-String String)
(declare-const var3513 var3022) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaperBuilder$CharArrayDecorator 
(assert (not (= var3513 null-var3022)))
(declare-const var1582 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1582 null-String)))
(assert true)
(define-const var3844 Int (length/-134980193 var1582)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2723 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto return r0 
(assert (>= var2723 var3844)) ; Cond: i3 >= i0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3022=com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaperBuilder$CharArrayDecorator, var3513=r1, var1582=r0, var1804=null_type, var3844=i0, var2723=i3}
; {com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaperBuilder$CharArrayDecorator=var3022, r1=var3513, r0=var1582, null_type=var1804, i0=var3844, i3=var2723}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.CharEscaperBuilder$CharArrayDecorator;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i3 = 0;	if i3 >= i0 goto return r0;	return r0
;block_num 3