(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const var1645 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1645 null-String)))
(define-const var3017 Int (String_length/-667254855 var1645)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(define-const var1917 Int var3017) ; Statement: i8 = i0 
(define-const var3407 Int 0) ; Statement: i9 = 0 
(assert true) ; Non Conditional
 ; Statement: if i9 >= i0 goto (branch) 
(assert (>= var3407 var3017)) ; Cond: i9 >= i0 
 ; Statement: if i9 >= i0 goto (branch) 
(assert (>= var3407 var3017)) ; Cond: i9 >= i0 
 ; Statement: if i8 >= i0 goto return i8 
(assert (>= var1917 var3017)) ; Cond: i8 >= i0 
 ; Statement: return i8 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var1645=r0, var3017=i0, var1917=i8, var3407=i9}
; {r0=var1645, i0=var3017, i8=var1917, i9=var3407}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	i8 = i0;	i9 = 0;	if i9 >= i0 goto (branch);	if i9 >= i0 goto (branch);	if i8 >= i0 goto return i8;	return i8
;block_num 5