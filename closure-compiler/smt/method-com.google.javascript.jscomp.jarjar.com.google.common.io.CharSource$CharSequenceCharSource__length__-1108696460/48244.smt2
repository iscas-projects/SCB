(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun seq/-342019969 (var2310) String)
(declare-fun String_length/-667254855 (String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2310 var2310)
(declare-const var565 var2310) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource 
(assert (not (= var565 null-var2310)))
(define-const var801 String (seq/-342019969 var565)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq> 
(define-const var383 Int (String_length/-667254855 var801)) ; Statement: $i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>() 
(define-const var3387 Int (cast-from-Int-to-Int var383)) ; Statement: $l1 = (long) $i0 
 ; Statement: return $l1 
(check-sat)
(get-model)
(get-unsat-core)
; {seq/-342019969=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), cast-from-Int-to-Int=([int], long)}
; {var2310=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource, var565=r0, var801=$r1, var383=$i0, var3387=$l1}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource=var2310, r0=var565, $r1=var801, $i0=var383, $l1=var3387}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq>;	$i0 = interfaceinvoke $r1.<java.lang.CharSequence: int length()>();	$l1 = (long) $i0;	return $l1
;block_num 1