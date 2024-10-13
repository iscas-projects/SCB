(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-String String)
(declare-const var1103 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1103 null-String)))
(declare-const var3196 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3196 null-String)))
 ; Statement: if r0 != null goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert (not (= var1103 null-String))) ; Cond: r0 != null 
(define-const var879 String (String_toString/-1426662429 var1103)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var1103=r0, var3196=r1, var2986=null_type, var879=$r2}
; {r0=var1103, r1=var3196, null_type=var2986, $r2=var879}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	r1 := @parameter1: java.lang.String;	if r0 != null goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	return $r2
;block_num 3