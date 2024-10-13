(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3425 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun seq/-342019969 (var3425) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var3425 var3425)
(declare-const var1615 var3425) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource 
(assert (not (= var1615 null-var3425)))
(define-const var3723 String (seq/-342019969 var1615)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq> 
(define-const var1517 Int (String_length/-667254855 var3723)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var1517 0))) ; Cond: $i0 != 0 
(define-const var1756 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {seq/-342019969=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var3425=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource, var1615=r0, var3723=$r1, var1517=$i0, var1756=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource=var3425, r0=var1615, $r1=var3723, $i0=var1517, $z0=var1756}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq>;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 3