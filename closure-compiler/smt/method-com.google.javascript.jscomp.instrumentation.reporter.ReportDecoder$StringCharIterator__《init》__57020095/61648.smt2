(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3067 0)
(declare-sort var2533 0)
(declare-sort var1686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var1686) void)
(declare-fun cast-from-var3067-to-var1686 (var3067) var1686)
(declare-fun current/-1580121703 (var3067) Int)
(declare-fun content/-1580121703 (var3067) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun length/-1580121703 (var3067) Int)
(declare-const null-var3067 var3067)
(declare-const null-String String)
(declare-const var599 var3067) ; Statement: r0 := @this: com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator 
(assert (not (= var599 null-var3067)))
(declare-const var2894 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2894 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3067-to-var1686 var599))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var599!1 var3067)
(declare-const var599!2 var3067)
(assert (not (= var599!2 null-var3067)))
(assert (= (current/-1580121703 var599!2) 0)) ; Statement: r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: int current> = 0 
(declare-const var599!3 var3067)
(assert (not (= var599!3 null-var3067)))
(assert (= (content/-1580121703 var599!3) var2894)) ; Statement: r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: java.lang.String content> = r1 
(assert true)
(define-const var2499 Int (length/-134980193 var2894)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(declare-const var599!4 var3067)
(assert (not (= var599!4 null-var3067)))
(assert (= (length/-1580121703 var599!4) var2499)) ; Statement: r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: int length> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3067-to-var1686=([com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator], java.lang.Object), current/-1580121703=([com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator], int), content/-1580121703=([com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator], java.lang.String), length/-134980193=([java.lang.String], int), length/-1580121703=([com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator], int)}
; {var3067=com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator, var599=r0, var2894=r1, var2533=null_type, var1686=java.lang.Object, var2499=$i0}
; {com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator=var3067, r0=var599, r1=var2894, null_type=var2533, java.lang.Object=var1686, $i0=var2499}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: int current> = 0;	r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: java.lang.String content> = r1;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	r0.<com.google.javascript.jscomp.instrumentation.reporter.ReportDecoder$StringCharIterator: int length> = $i0;	return
;block_num 1