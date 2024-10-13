(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3971 0)
(declare-sort var1054 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3971 var3971)
(declare-const null-String String)
(declare-const var1546 var3971) ; Statement: r6 := @this: org.junit.jupiter.api.AssertLinesMatch$LinesMatcher 
(assert (not (= var1546 null-var3971)))
(declare-const var2353 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2353 null-String)))
(assert true)
(define-const var1669 Int (length/-134980193 var2353)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 > 21 goto $r1 = new java.lang.StringBuilder 
(assert (not (> var1669 21))) ; Negate: Cond: $i0 > 21  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3971=org.junit.jupiter.api.AssertLinesMatch$LinesMatcher, var1546=r6, var2353=r0, var1054=null_type, var1669=$i0}
; {org.junit.jupiter.api.AssertLinesMatch$LinesMatcher=var3971, r6=var1546, r0=var2353, null_type=var1054, $i0=var1669}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r6 := @this: org.junit.jupiter.api.AssertLinesMatch$LinesMatcher;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 > 21 goto $r1 = new java.lang.StringBuilder;	return r0
;block_num 2