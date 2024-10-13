(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun seq/-342019969 (var3356) String)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var3356 var3356)
(declare-const var2257 var3356) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource 
(assert (not (= var2257 null-var3356)))
(define-const var1068 String (seq/-342019969 var2257)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq> 
(define-const var397 Int (String_length/-667254855 var1068)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var397 0)))) ; Negate: Cond: $i0 != 0  
(define-const var858 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {seq/-342019969=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var3356=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource, var2257=r0, var1068=$r1, var397=$i0, var858=$z0}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource=var3356, r0=var2257, $r1=var1068, $i0=var397, $z0=var858}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq>;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 3