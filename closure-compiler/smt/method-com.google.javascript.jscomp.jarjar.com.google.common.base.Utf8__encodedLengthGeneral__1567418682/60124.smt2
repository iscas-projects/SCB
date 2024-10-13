(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2506 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2506 null-String)))
(declare-const var2878 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2878 null-Int)))
(define-const var2478 Int (String_length/-667254855 var2506)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var1357 Int 0) ; Statement: i6 = 0 
(define-const var3540 Int var2878) ; Statement: i7 = i1 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return i6 
(assert (>= var3540 var2478)) ; Cond: i7 >= i0 
 ; Statement: return i6 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var2506=r0, var2878=i1, var2478=i0, var1357=i6, var3540=i7}
; {r0=var2506, i1=var2878, i0=var2478, i6=var1357, i7=var3540}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i1 := @parameter1: int;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i6 = 0;	i7 = i1;	if i7 >= i0 goto return i6;	return i6
;block_num 3