(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var978 0)
(declare-sort var1429 0)
(declare-sort var1848 0)
(declare-sort var462 0)
(declare-sort var809 0)
(declare-sort var949 0)
(declare-sort var1151 0)
(declare-sort var1455 0)
(declare-sort var2954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1492871117 (var809) void)
(declare-fun cast-from-var978-to-var809 (var978) var809)
(declare-fun var949-init () var949)
(declare-fun <init>/-201242697 (var949) void)
(declare-fun cast-from-var949-to-var1151 (var949) var1151)
(declare-fun functions/1104890379 (var978) var1151)
(declare-fun var1455-init () var1455)
(declare-fun <init>/-1461814690 (var1455) void)
(declare-fun cast-from-var1455-to-var1151 (var1455) var1151)
(declare-fun results/1104890379 (var978) var1151)
(declare-fun compiler/1104890379 (var978) var1429)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun placeholderToken/1104890379 (var978) String)
(declare-fun var978_createNameGenerator/97927778 () var2954)
(declare-fun nameGenerator/1104890379 (var978) var2954)
(declare-fun parseConfiguration/1555507137 (var978 var462) void)
(declare-const null-var978 var978)
(declare-const null-var1429 var1429)
(declare-const null-String String)
(declare-const null-var462 var462)
(declare-const var2671 var978) ; Statement: r0 := @this: com.google.javascript.jscomp.ReplaceStrings 
(assert (not (= var2671 null-var978)))
(declare-const var3425 var1429) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var3425 null-var1429)))
(declare-const var326 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var326 null-String)))
(declare-const var1316 var462) ; Statement: r6 := @parameter2: java.util.List 
(assert (not (= var1316 null-var462)))
(assert true)
;(assert (<init>/1492871117 (cast-from-var978-to-var809 var2671))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback: void <init>()>() 

(declare-const var2671!1 var978)
(define-const var395 var949 var949-init) ; Statement: $r1 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var395)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>()>() 

(declare-const var395!1 var949)
(declare-const var2671!2 var978)
(assert (not (= var2671!2 null-var978)))
(assert (= (functions/1104890379 var2671!2) (cast-from-var949-to-var1151 var395!1))) ; Statement: r0.<com.google.javascript.jscomp.ReplaceStrings: java.util.Map functions> = $r1 
(define-const var1457 var1455 var1455-init) ; Statement: $r2 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var1457)) ; Statement: specialinvoke $r2.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var1457!1 var1455)
(declare-const var2671!3 var978)
(assert (not (= var2671!3 null-var978)))
(assert (= (results/1104890379 var2671!3) (cast-from-var1455-to-var1151 var1457!1))) ; Statement: r0.<com.google.javascript.jscomp.ReplaceStrings: java.util.Map results> = $r2 
(declare-const var2671!4 var978)
(assert (not (= var2671!4 null-var978)))
(assert (= (compiler/1104890379 var2671!4) var3425)) ; Statement: r0.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.AbstractCompiler compiler> = r3 
(assert true)
(define-const var1929 Bool (isEmpty/-1285796103 var326)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r7 = r4 
(assert (not (= (ite var1929 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2736 String "`") ; Statement: $r7 = "`" 
 ; Statement: goto [?= r0.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken> = $r7] 
(assert true) ; Non Conditional
(declare-const var2671!5 var978)
(assert (not (= var2671!5 null-var978)))
(assert (= (placeholderToken/1104890379 var2671!5) var2736)) ; Statement: r0.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken> = $r7 
(define-const var3752 var2954 var978_createNameGenerator/97927778) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.DefaultNameGenerator createNameGenerator()>() 
(declare-const var2671!6 var978)
(assert (not (= var2671!6 null-var978)))
(assert (= (nameGenerator/1104890379 var2671!6) var3752)) ; Statement: r0.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.DefaultNameGenerator nameGenerator> = $r5 
(assert true)
;(assert (parseConfiguration/1555507137 var2671!6 var1316)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.ReplaceStrings: void parseConfiguration(java.util.List)>(r6) 

(declare-const var2671!7 var978)
(declare-const var1316!1 var462)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1492871117=([com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback], void), cast-from-var978-to-var809=([com.google.javascript.jscomp.ReplaceStrings], com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback), var949-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var949-to-var1151=([java.util.HashMap], java.util.Map), functions/1104890379=([com.google.javascript.jscomp.ReplaceStrings], java.util.Map), var1455-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), cast-from-var1455-to-var1151=([java.util.LinkedHashMap], java.util.Map), results/1104890379=([com.google.javascript.jscomp.ReplaceStrings], java.util.Map), compiler/1104890379=([com.google.javascript.jscomp.ReplaceStrings], com.google.javascript.jscomp.AbstractCompiler), isEmpty/-1285796103=([java.lang.String], boolean), placeholderToken/1104890379=([com.google.javascript.jscomp.ReplaceStrings], java.lang.String), var978_createNameGenerator/97927778=([], com.google.javascript.jscomp.DefaultNameGenerator), nameGenerator/1104890379=([com.google.javascript.jscomp.ReplaceStrings], com.google.javascript.jscomp.DefaultNameGenerator), parseConfiguration/1555507137=([com.google.javascript.jscomp.ReplaceStrings, java.util.List], void)}
; {var978=com.google.javascript.jscomp.ReplaceStrings, var2671=r0, var1429=com.google.javascript.jscomp.AbstractCompiler, var3425=r3, var326=r4, var1848=null_type, var462=java.util.List, var1316=r6, var809=com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback, var949=java.util.HashMap, var395=$r1, var1151=java.util.Map, var1455=java.util.LinkedHashMap, var1457=$r2, var1929=$z0, var2736=$r7, var2954=com.google.javascript.jscomp.DefaultNameGenerator, var3752=$r5}
; {com.google.javascript.jscomp.ReplaceStrings=var978, r0=var2671, com.google.javascript.jscomp.AbstractCompiler=var1429, r3=var3425, r4=var326, null_type=var1848, java.util.List=var462, r6=var1316, com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback=var809, java.util.HashMap=var949, $r1=var395, java.util.Map=var1151, java.util.LinkedHashMap=var1455, $r2=var1457, $z0=var1929, $r7=var2736, com.google.javascript.jscomp.DefaultNameGenerator=var2954, $r5=var3752}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ReplaceStrings;	r3 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	r4 := @parameter1: java.lang.String;	r6 := @parameter2: java.util.List;	specialinvoke r0.<com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback: void <init>()>();	$r1 = new java.util.HashMap;	specialinvoke $r1.<java.util.HashMap: void <init>()>();	r0.<com.google.javascript.jscomp.ReplaceStrings: java.util.Map functions> = $r1;	$r2 = new java.util.LinkedHashMap;	specialinvoke $r2.<java.util.LinkedHashMap: void <init>()>();	r0.<com.google.javascript.jscomp.ReplaceStrings: java.util.Map results> = $r2;	r0.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.AbstractCompiler compiler> = r3;	$z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r7 = r4;	$r7 = "`";	goto [?= r0.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken> = $r7];	r0.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken> = $r7;	$r5 = staticinvoke <com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.DefaultNameGenerator createNameGenerator()>();	r0.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.DefaultNameGenerator nameGenerator> = $r5;	virtualinvoke r0.<com.google.javascript.jscomp.ReplaceStrings: void parseConfiguration(java.util.List)>(r6);	return
;block_num 3