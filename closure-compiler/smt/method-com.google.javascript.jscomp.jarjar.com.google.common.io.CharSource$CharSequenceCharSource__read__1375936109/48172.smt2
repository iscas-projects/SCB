(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun seq/-342019969 (var1673) String)
(declare-fun String_toString/-1426662429 (String) String)
(declare-const null-var1673 var1673)
(declare-const var780 var1673) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource 
(assert (not (= var780 null-var1673)))
(define-const var2545 String (seq/-342019969 var780)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq> 
(define-const var2141 String (String_toString/-1426662429 var2545)) ; Statement: $r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {seq/-342019969=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource], java.lang.CharSequence), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String)}
; {var1673=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource, var780=r0, var2545=$r1, var2141=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource=var1673, r0=var780, $r1=var2545, $r2=var2141}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$CharSequenceCharSource: java.lang.CharSequence seq>;	$r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.String toString()>();	return $r2
;block_num 1