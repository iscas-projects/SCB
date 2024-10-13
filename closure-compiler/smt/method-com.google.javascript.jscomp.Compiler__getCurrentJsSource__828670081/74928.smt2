(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var334 0)
(declare-sort var1299 0)
(declare-sort var197 0)
(declare-sort var1285 0)
(declare-sort var1534 0)
(declare-sort var3250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun resetAndIntitializeSourceMap/1530818792 (var334) void)
(declare-fun options/-1807643844 (var334) var1299)
(declare-fun filesToPrintAfterEachPassRegexList/92387266 (var1299) var197)
(declare-fun chunksToPrintAfterEachPassRegexList/92387266 (var1299) var197)
(declare-fun var1285-init () var1285)
(declare-fun qnameUsesToPrintAfterEachPassList/92387266 (var1299) var197)
(declare-fun <init>/22626498 (var1285 var1534) void)
(declare-fun cast-from-var197-to-var1534 (var197) var1534)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var197_isEmpty/-153543822 (var197) Bool)
(declare-fun var3250_isEmpty/-1493248066 (var3250) Bool)
(declare-fun cast-from-var1285-to-var3250 (var1285) var3250)
(declare-fun toSource/903867026 (var334) String)
(declare-const null-var334 var334)
(declare-const var3688 var334) ; Statement: r0 := @this: com.google.javascript.jscomp.Compiler 
(assert (not (= var3688 null-var334)))
(assert true)
;(assert (resetAndIntitializeSourceMap/1530818792 var3688)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.Compiler: void resetAndIntitializeSourceMap()>() 

(declare-const var3688!1 var334)
(define-const var656 var1299 (options/-1807643844 var3688!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options> 
(define-const var2863 var197 (filesToPrintAfterEachPassRegexList/92387266 var656)) ; Statement: r2 = $r1.<com.google.javascript.jscomp.CompilerOptions: java.util.List filesToPrintAfterEachPassRegexList> 
(define-const var566 var1299 (options/-1807643844 var3688!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options> 
(define-const var771 var197 (chunksToPrintAfterEachPassRegexList/92387266 var566)) ; Statement: r4 = $r3.<com.google.javascript.jscomp.CompilerOptions: java.util.List chunksToPrintAfterEachPassRegexList> 
(define-const var2246 var1285 var1285-init) ; Statement: $r5 = new java.util.LinkedHashSet 
(define-const var297 var1299 (options/-1807643844 var3688!1)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options> 
(define-const var570 var197 (qnameUsesToPrintAfterEachPassList/92387266 var297)) ; Statement: $r7 = $r6.<com.google.javascript.jscomp.CompilerOptions: java.util.List qnameUsesToPrintAfterEachPassList> 
(assert true)
;(assert (<init>/22626498 var2246 (cast-from-var197-to-var1534 var570))) ; Statement: specialinvoke $r5.<java.util.LinkedHashSet: void <init>(java.util.Collection)>($r7) 

(declare-const var2246!1 var1285)
(declare-const var570!1 var197)
(define-const var3776 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3776)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3776!1 String)
(assert (= var3776!1 ""))
(define-const var2661 Bool (var197_isEmpty/-153543822 var2863)) ; Statement: $z0 = interfaceinvoke r2.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $z12 = interfaceinvoke r2.<java.util.List: boolean isEmpty()>() 
(assert (not (= (ite var2661 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1759 Bool (var197_isEmpty/-153543822 var771)) ; Statement: $z10 = interfaceinvoke r4.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z10 == 0 goto $z12 = interfaceinvoke r2.<java.util.List: boolean isEmpty()>() 
(assert (not (= (ite var1759 1 0) 0))) ; Negate: Cond: $z10 == 0  
(define-const var2425 Bool (var3250_isEmpty/-1493248066 (cast-from-var1285-to-var3250 var2246!1))) ; Statement: $z11 = interfaceinvoke $r5.<java.util.Set: boolean isEmpty()>() 
 ; Statement: if $z11 == 0 goto $z12 = interfaceinvoke r2.<java.util.List: boolean isEmpty()>() 
(assert (not (= (ite var2425 1 0) 0))) ; Negate: Cond: $z11 == 0  
(assert true)
(define-const var635 String (toSource/903867026 var3688!1)) ; Statement: $r42 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: java.lang.String toSource()>() 
 ; Statement: return $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {resetAndIntitializeSourceMap/1530818792=([com.google.javascript.jscomp.Compiler], void), options/-1807643844=([com.google.javascript.jscomp.Compiler], com.google.javascript.jscomp.CompilerOptions), filesToPrintAfterEachPassRegexList/92387266=([com.google.javascript.jscomp.CompilerOptions], java.util.List), chunksToPrintAfterEachPassRegexList/92387266=([com.google.javascript.jscomp.CompilerOptions], java.util.List), var1285-init=([], java.util.LinkedHashSet), qnameUsesToPrintAfterEachPassList/92387266=([com.google.javascript.jscomp.CompilerOptions], java.util.List), <init>/22626498=([java.util.LinkedHashSet, java.util.Collection], void), cast-from-var197-to-var1534=([java.util.List], java.util.Collection), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var197_isEmpty/-153543822=([java.util.List], boolean), var3250_isEmpty/-1493248066=([java.util.Set], boolean), cast-from-var1285-to-var3250=([java.util.LinkedHashSet], java.util.Set), toSource/903867026=([com.google.javascript.jscomp.Compiler], java.lang.String)}
; {var334=com.google.javascript.jscomp.Compiler, var3688=r0, var1299=com.google.javascript.jscomp.CompilerOptions, var656=$r1, var197=java.util.List, var2863=r2, var566=$r3, var771=r4, var1285=java.util.LinkedHashSet, var2246=$r5, var297=$r6, var570=$r7, var1534=java.util.Collection, var3776=$r8, var2661=$z0, var1759=$z10, var3250=java.util.Set, var2425=$z11, var635=$r42}
; {com.google.javascript.jscomp.Compiler=var334, r0=var3688, com.google.javascript.jscomp.CompilerOptions=var1299, $r1=var656, java.util.List=var197, r2=var2863, $r3=var566, r4=var771, java.util.LinkedHashSet=var1285, $r5=var2246, $r6=var297, $r7=var570, java.util.Collection=var1534, $r8=var3776, $z0=var2661, $z10=var1759, java.util.Set=var3250, $z11=var2425, $r42=var635}
;seq <java.lang.StringBuilder: void <init>()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.Compiler;	virtualinvoke r0.<com.google.javascript.jscomp.Compiler: void resetAndIntitializeSourceMap()>();	$r1 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options>;	r2 = $r1.<com.google.javascript.jscomp.CompilerOptions: java.util.List filesToPrintAfterEachPassRegexList>;	$r3 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options>;	r4 = $r3.<com.google.javascript.jscomp.CompilerOptions: java.util.List chunksToPrintAfterEachPassRegexList>;	$r5 = new java.util.LinkedHashSet;	$r6 = r0.<com.google.javascript.jscomp.Compiler: com.google.javascript.jscomp.CompilerOptions options>;	$r7 = $r6.<com.google.javascript.jscomp.CompilerOptions: java.util.List qnameUsesToPrintAfterEachPassList>;	specialinvoke $r5.<java.util.LinkedHashSet: void <init>(java.util.Collection)>($r7);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$z0 = interfaceinvoke r2.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $z12 = interfaceinvoke r2.<java.util.List: boolean isEmpty()>();	$z10 = interfaceinvoke r4.<java.util.List: boolean isEmpty()>();	if $z10 == 0 goto $z12 = interfaceinvoke r2.<java.util.List: boolean isEmpty()>();	$z11 = interfaceinvoke $r5.<java.util.Set: boolean isEmpty()>();	if $z11 == 0 goto $z12 = interfaceinvoke r2.<java.util.List: boolean isEmpty()>();	$r42 = virtualinvoke r0.<com.google.javascript.jscomp.Compiler: java.lang.String toSource()>();	return $r42
;block_num 4