(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const var2779 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2779 null-String)))
 ; Statement: if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (= var2779 null-String))) ; Cond: r0 != null 
(define-const var1746 Int (String_length/-667254855 var2779)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var2779=r0, var1746=$i0}
; {r0=var2779, $i0=var1746}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	return $i0
;block_num 3