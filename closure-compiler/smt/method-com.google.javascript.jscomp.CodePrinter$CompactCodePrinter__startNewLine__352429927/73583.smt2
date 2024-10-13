(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var976 0)
(declare-sort var1987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lineLength/-862103770 (var1987) Int)
(declare-fun cast-from-var976-to-var1987 (var976) var1987)
(declare-fun code/-862103770 (var1987) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun lineIndex/-862103770 (var1987) Int)
(declare-fun length/-171891354 (String) Int)
(declare-fun lineStartPosition/-1031674402 (var976) Int)
(declare-const null-var976 var976)
(declare-const var440 var976) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$CompactCodePrinter 
(assert (not (= var440 null-var976)))
(define-const var1783 Int (lineLength/-862103770 (cast-from-var976-to-var1987 var440))) ; Statement: $i0 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int lineLength> 
 ; Statement: if $i0 > 0 goto $r1 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code> 
(assert (> var1783 0)) ; Cond: $i0 > 0 
(define-const var3797 String (code/-862103770 (cast-from-var976-to-var1987 var440))) ; Statement: $r1 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code> 
(assert true)
;(assert (append/-1166366385 var3797 10)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var3797!1 String)
(assert (str.prefixof var3797 var3797!1))
(declare-const var440!1 var976)
(assert (not (= var440!1 null-var976)))
(assert (= (lineLength/-862103770 (cast-from-var976-to-var1987 var440!1)) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int lineLength> = 0 
(define-const var3741 Int (lineIndex/-862103770 (cast-from-var976-to-var1987 var440!1))) ; Statement: $i1 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int lineIndex> 
(define-const var929 Int (+ var3741 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var440!2 var976)
(assert (not (= var440!2 null-var976)))
(assert (= (lineIndex/-862103770 (cast-from-var976-to-var1987 var440!2)) var929)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int lineIndex> = $i2 
(define-const var3541 String (code/-862103770 (cast-from-var976-to-var1987 var440!2))) ; Statement: $r2 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code> 
(assert true)
(define-const var370 Int (length/-171891354 var3541)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>() 
(declare-const var440!3 var976)
(assert (not (= var440!3 null-var976)))
(assert (= (lineStartPosition/-1031674402 var440!3) var370)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int lineStartPosition> = $i3 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), cast-from-var976-to-var1987=([com.google.javascript.jscomp.CodePrinter$CompactCodePrinter], com.google.javascript.jscomp.CodePrinter$MappedCodePrinter), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), length/-171891354=([java.lang.StringBuilder], int), lineStartPosition/-1031674402=([com.google.javascript.jscomp.CodePrinter$CompactCodePrinter], int)}
; {var976=com.google.javascript.jscomp.CodePrinter$CompactCodePrinter, var440=r0, var1987=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var1783=$i0, var3797=$r1, var3741=$i1, var929=$i2, var3541=$r2, var370=$i3}
; {com.google.javascript.jscomp.CodePrinter$CompactCodePrinter=var976, r0=var440, com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var1987, $i0=var1783, $r1=var3797, $i1=var3741, $i2=var929, $r2=var3541, $i3=var370}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$CompactCodePrinter;	$i0 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int lineLength>;	if $i0 > 0 goto $r1 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code>;	$r1 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int lineLength> = 0;	$i1 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int lineIndex>;	$i2 = $i1 + 1;	r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int lineIndex> = $i2;	$r2 = r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: java.lang.StringBuilder code>;	$i3 = virtualinvoke $r2.<java.lang.StringBuilder: int length()>();	r0.<com.google.javascript.jscomp.CodePrinter$CompactCodePrinter: int lineStartPosition> = $i3;	return
;block_num 2