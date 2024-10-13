(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1070 0)
(declare-sort var3594 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/-862103770 (var3594) String)
(declare-fun cast-from-var1070-to-var3594 (var1070) var3594)
(declare-fun length/-171891354 (String) Int)
(declare-fun preferredBreakPosition/-1031674402 (var1070) Int)
(declare-const null-var1070 var1070)
(declare-const var3939 var1070) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$CompactCodePrinter 
(assert (not (= var3939 null-var1070)))
(define-const var1360 String (code/-862103770 (cast-from-var1070-to-var3594 var3939))) ; Statement: $r1 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code> 
(assert true)
(define-const var2779 Int (length/-171891354 var1360)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
(declare-const var3939!1 var1070)
(assert (not (= var3939!1 null-var1070)))
(assert (= (preferredBreakPosition/-1031674402 var3939!1) var2779)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int preferredBreakPosition> = $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), cast-from-var1070-to-var3594=([com.google.javascript.jscomp.CodePrinter$CompactCodePrinter], com.google.javascript.jscomp.CodePrinter$MappedCodePrinter), length/-171891354=([java.lang.StringBuilder], int), preferredBreakPosition/-1031674402=([com.google.javascript.jscomp.CodePrinter$CompactCodePrinter], int)}
; {var1070=com.google.javascript.jscomp.CodePrinter$CompactCodePrinter, var3939=r0, var3594=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var1360=$r1, var2779=$i0}
; {com.google.javascript.jscomp.CodePrinter$CompactCodePrinter=var1070, r0=var3939, com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var3594, $r1=var1360, $i0=var2779}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$CompactCodePrinter;	$r1 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int preferredBreakPosition> = $i0;	return
;block_num 1