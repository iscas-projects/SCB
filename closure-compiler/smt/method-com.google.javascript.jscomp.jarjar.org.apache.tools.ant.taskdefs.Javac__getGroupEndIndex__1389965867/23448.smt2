(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var132 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var132 null-String)))
(declare-const var3797 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3797 null-Int)))
(define-const var70 Int 0) ; Statement: i3 = 0 
(define-const var3580 Int var3797) ; Statement: i4 = i0 
(assert true) ; Non Conditional
(define-const var861 Int (String_length/-667254855 var132)) ; Statement: $i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if i4 >= $i1 goto $i9 = (int) -1 
(assert (>= var3580 var861)) ; Cond: i4 >= $i1 
(define-const var2339 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i9 = (int) -1 
 ; Statement: return $i9 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), cast-from-Int-to-Int=([int], int)}
; {var132=r0, var3797=i0, var70=i3, var3580=i4, var861=$i1, var2339=$i9}
; {r0=var132, i0=var3797, i3=var70, i4=var3580, $i1=var861, $i9=var2339}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i3 = 0;	i4 = i0;	$i1 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if i4 >= $i1 goto $i9 = (int) -1;	$i9 = (int) -1;	return $i9
;block_num 3