(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3331 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var3331 null-String)))
(declare-const var2910 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2910 null-Int)))
(define-const var2237 Int (String_length/-667254855 var3331)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var2033 Int 0) ; Statement: i6 = 0 
(define-const var2502 Int var2910) ; Statement: i7 = i1 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto return i6 
(assert (>= var2502 var2237)) ; Cond: i7 >= i0 
 ; Statement: return i6 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var3331=r0, var2910=i1, var2237=i0, var2033=i6, var2502=i7}
; {r0=var3331, i1=var2910, i0=var2237, i6=var2033, i7=var2502}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i1 := @parameter1: int;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i6 = 0;	i7 = i1;	if i7 >= i0 goto return i6;	return i6
;block_num 3