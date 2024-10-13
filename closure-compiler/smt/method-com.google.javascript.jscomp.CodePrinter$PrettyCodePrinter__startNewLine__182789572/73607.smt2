(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3038 0)
(declare-sort var113 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lineLength/-862103770 (var113) Int)
(declare-fun cast-from-var3038-to-var113 (var3038) var113)
(declare-fun code/-862103770 (var113) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun lineIndex/-862103770 (var113) Int)
(declare-const null-var3038 var3038)
(declare-const var2103 var3038) ; Statement: r0 := @this: com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter 
(assert (not (= var2103 null-var3038)))
(define-const var879 Int (lineLength/-862103770 (cast-from-var3038-to-var113 var2103))) ; Statement: $i0 = r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: int lineLength> 
 ; Statement: if $i0 > 0 goto $r1 = r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: java.lang.StringBuilder code> 
(assert (> var879 0)) ; Cond: $i0 > 0 
(define-const var2020 String (code/-862103770 (cast-from-var3038-to-var113 var2103))) ; Statement: $r1 = r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: java.lang.StringBuilder code> 
(assert true)
;(assert (append/-1166366385 var2020 10)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var2020!1 String)
(assert (str.prefixof var2020 var2020!1))
(define-const var2249 Int (lineIndex/-862103770 (cast-from-var3038-to-var113 var2103))) ; Statement: $i1 = r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: int lineIndex> 
(define-const var2492 Int (+ var2249 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var2103!1 var3038)
(assert (not (= var2103!1 null-var3038)))
(assert (= (lineIndex/-862103770 (cast-from-var3038-to-var113 var2103!1)) var2492)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: int lineIndex> = $i2 
(declare-const var2103!2 var3038)
(assert (not (= var2103!2 null-var3038)))
(assert (= (lineLength/-862103770 (cast-from-var3038-to-var113 var2103!2)) 0)) ; Statement: r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: int lineLength> = 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lineLength/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int), cast-from-var3038-to-var113=([com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter], com.google.javascript.jscomp.CodePrinter$MappedCodePrinter), code/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), lineIndex/-862103770=([com.google.javascript.jscomp.CodePrinter$MappedCodePrinter], int)}
; {var3038=com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter, var2103=r0, var113=com.google.javascript.jscomp.CodePrinter$MappedCodePrinter, var879=$i0, var2020=$r1, var2249=$i1, var2492=$i2}
; {com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter=var3038, r0=var2103, com.google.javascript.jscomp.CodePrinter$MappedCodePrinter=var113, $i0=var879, $r1=var2020, $i1=var2249, $i2=var2492}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter;	$i0 = r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: int lineLength>;	if $i0 > 0 goto $r1 = r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: java.lang.StringBuilder code>;	$r1 = r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: java.lang.StringBuilder code>;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$i1 = r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: int lineIndex>;	$i2 = $i1 + 1;	r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: int lineIndex> = $i2;	r0.<com.google.javascript.jscomp.CodePrinter$PrettyCodePrinter: int lineLength> = 0;	return
;block_num 2