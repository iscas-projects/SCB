(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3915 0)
(declare-sort var2113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lineBreak/-1031674402 (var3915) Bool)
(declare-fun code/-862103770 (var2113) String)
(declare-fun cast-from-var3915-to-var2113 (var3915) var2113)
(declare-fun length/-171891354 (String) Int)
(declare-fun preferredBreakPosition/-1031674402 (var3915) Int)
(declare-fun maybeCutLine/-341144309 (var3915) void)
(declare-const null-var3915 var3915)
(declare-const var1177 var3915) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$CompactCodePrinter 
(assert (not (= var1177 null-var3915)))
(define-const var3802 Bool (lineBreak/-1031674402 var1177)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: boolean lineBreak> 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code> 
(assert (= (ite var3802 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1204 String (code/-862103770 (cast-from-var3915-to-var2113 var1177))) ; Statement: $r2 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code> 
(assert true)
(define-const var3999 Int (length/-171891354 var1204)) ; Statement: $i2 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>() 
(define-const var3488 Int (preferredBreakPosition/-1031674402 var1177)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int preferredBreakPosition> 
(define-const var1251 Int (- var3999 1)) ; Statement: $i4 = $i2 - 1 
 ; Statement: if $i3 != $i4 goto virtualinvoke r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: void maybeCutLine()>() 
(assert (not (= var3488 var1251))) ; Cond: $i3 != $i4 
(assert true)
;(assert (maybeCutLine/-341144309 var1177)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: void maybeCutLine()>() 

(declare-const var1177!1 var3915)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lineBreak/-1031674402=([com.google.javascript.jscomp.CodePrinter$CompactCodePrinter], boolean), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), cast-from-var3915-to-var2113=([com.google.javascript.jscomp.CodePrinter$CompactCodePrinter], com.google.javascript.jscomp.CodePrinter$MappedCodePrinter), length/-171891354=([java.lang.StringBuilder], int), preferredBreakPosition/-1031674402=([com.google.javascript.jscomp.CodePrinter$CompactCodePrinter], int), maybeCutLine/-341144309=([com.google.javascript.jscomp.CodePrinter$CompactCodePrinter], void)}
; {var3915=com.google.javascript.jscomp.CodePrinter$CompactCodePrinter, var1177=r0, var3802=$z0, var2113=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var1204=$r2, var3999=$i2, var3488=$i3, var1251=$i4}
; {com.google.javascript.jscomp.CodePrinter$CompactCodePrinter=var3915, r0=var1177, $z0=var3802, com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var2113, $r2=var1204, $i2=var3999, $i3=var3488, $i4=var1251}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$CompactCodePrinter;	$z0 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: boolean lineBreak>;	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code>;	$r2 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code>;	$i2 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>();	$i3 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int preferredBreakPosition>;	$i4 = $i2 - 1;	if $i3 != $i4 goto virtualinvoke r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: void maybeCutLine()>();	virtualinvoke r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: void maybeCutLine()>();	return
;block_num 3