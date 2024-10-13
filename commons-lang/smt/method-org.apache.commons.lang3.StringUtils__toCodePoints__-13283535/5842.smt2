(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1467 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-String String)
(declare-const var1467-EMPTY_INT_ARRAY (Array Int Int))
(declare-const var863 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var863 null-String)))
 ; Statement: if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (= var863 null-String))) ; Cond: r0 != null 
(define-const var2722 Int (String_length/-667254855 var863)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (not (= var2722 0)))) ; Negate: Cond: $i0 != 0  
(define-const var2935 (Array Int Int) var1467-EMPTY_INT_ARRAY) ; Statement: $r3 = <org.apache.commons.lang3.ArrayUtils: int[] EMPTY_INT_ARRAY> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int)}
; {var863=r0, var2722=$i0, var1467=org.apache.commons.lang3.ArrayUtils, var2935=$r3}
; {r0=var863, $i0=var2722, org.apache.commons.lang3.ArrayUtils=var1467, $r3=var2935}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto r1 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r3 = <org.apache.commons.lang3.ArrayUtils: int[] EMPTY_INT_ARRAY>;	return $r3
;block_num 3