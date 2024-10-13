(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun content/-1580121703 (var2800) String)
(declare-fun current/-1580121703 (var2800) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var2800 var2800)
(declare-const var678 var2800) ; Statement: r0 := @this: com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator 
(assert (not (= var678 null-var2800)))
(define-const var3163 String (content/-1580121703 var678)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: java.lang.String content> 
(define-const var2323 Int (current/-1580121703 var678)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: int current> 
(define-const var3307 Int (+ var2323 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var678!1 var2800)
(assert (not (= var678!1 null-var2800)))
(assert (= (current/-1580121703 var678!1) var3307)) ; Statement: r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: int current> = $i1 
(assert (not (and true (and (> (str.len var3163) var2323) (<= 0 var2323)))))
(check-sat)
(get-model)
(get-unsat-core)
; {content/-1580121703=([com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator], java.lang.String), current/-1580121703=([com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator], int), charAt/698050440=([java.lang.String, int], char)}
; {var2800=com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator, var678=r0, var3163=$r1, var2323=$i0, var3307=$i1, var1993=$c2}
; {com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator=var2800, r0=var678, $r1=var3163, $i0=var2323, $i1=var3307, $c2=var1993}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator;	$r1 = r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: java.lang.String content>;	$i0 = r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: int current>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: int current> = $i1;	$c2 = virtualinvoke $r1.<java.lang.String: char charAt(int)>($i0);	return $c2
;block_num 1