(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const var671 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var671 null-String)))
(declare-const var1217 String) ; Statement: r1 := @parameter1: java.lang.CharSequence 
(assert (not (= var1217 null-String)))
(define-const var1095 Int (String_length/-667254855 var671)) ; Statement: i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if r0 != r1 goto $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert (not (not (= var671 var1217)))) ; Negate: Cond: r0 != r1  
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var671=r0, var1217=r1, var1095=i0}
; {r0=var671, r1=var1217, i0=var1095}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.CharSequence;	i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if r0 != r1 goto $i1 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	return 1
;block_num 2