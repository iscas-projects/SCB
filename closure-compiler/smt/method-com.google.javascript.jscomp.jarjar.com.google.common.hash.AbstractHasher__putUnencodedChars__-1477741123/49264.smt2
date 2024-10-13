(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var675 var675)
(declare-const null-String String)
(declare-const var1464 var675) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHasher 
(assert (not (= var1464 null-var675)))
(declare-const var1047 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1047 null-String)))
(define-const var532 Int 0) ; Statement: i2 = 0 
(define-const var3934 Int (String_length/-667254855 var1047)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r1 
(assert (>= var532 var3934)) ; Cond: i2 >= i0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var675=com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHasher, var1464=r1, var1047=r0, var532=i2, var3934=i0}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHasher=var675, r1=var1464, r0=var1047, i2=var532, i0=var3934}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.AbstractHasher;	r0 := @parameter0: java.lang.CharSequence;	i2 = 0;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i2 >= i0 goto return r1;	return r1
;block_num 3