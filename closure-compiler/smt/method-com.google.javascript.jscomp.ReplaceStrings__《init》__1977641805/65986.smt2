(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3153 0)
(declare-sort var2037 0)
(declare-sort var123 0)
(declare-sort var2943 0)
(declare-sort var113 0)
(declare-sort var2118 0)
(declare-sort var1618 0)
(declare-sort var1365 0)
(declare-sort var3835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1492871117 (var113) void)
(declare-fun cast-from-var3153-to-var113 (var3153) var113)
(declare-fun var2118-init () var2118)
(declare-fun <init>/-201242697 (var2118) void)
(declare-fun cast-from-var2118-to-var1618 (var2118) var1618)
(declare-fun functions/1104890379 (var3153) var1618)
(declare-fun var1365-init () var1365)
(declare-fun <init>/-1461814690 (var1365) void)
(declare-fun cast-from-var1365-to-var1618 (var1365) var1618)
(declare-fun results/1104890379 (var3153) var1618)
(declare-fun compiler/1104890379 (var3153) var2037)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun placeholderToken/1104890379 (var3153) String)
(declare-fun var3153_createNameGenerator/97927778 () var3835)
(declare-fun nameGenerator/1104890379 (var3153) var3835)
(declare-fun parseConfiguration/1555507137 (var3153 var2943) void)
(declare-const null-var3153 var3153)
(declare-const null-var2037 var2037)
(declare-const null-String String)
(declare-const null-var2943 var2943)
(declare-const var3011 var3153) ; Statement: r0 := @this: com.google.javascript.jscomp.ReplaceStrings 
(assert (not (= var3011 null-var3153)))
(declare-const var2114 var2037) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.AbstractCompiler 
(assert (not (= var2114 null-var2037)))
(declare-const var3086 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3086 null-String)))
(declare-const var139 var2943) ; Statement: r6 := @parameter2: java.util.List 
(assert (not (= var139 null-var2943)))
(assert true)
;(assert (<init>/1492871117 (cast-from-var3153-to-var113 var3011))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback: void <init>()>() 

(declare-const var3011!1 var3153)
(define-const var679 var2118 var2118-init) ; Statement: $r1 = new java.util.HashMap 
(assert true)
;(assert (<init>/-201242697 var679)) ; Statement: specialinvoke $r1.<java.util.HashMap: void <init>()>() 

(declare-const var679!1 var2118)
(declare-const var3011!2 var3153)
(assert (not (= var3011!2 null-var3153)))
(assert (= (functions/1104890379 var3011!2) (cast-from-var2118-to-var1618 var679!1))) ; Statement: r0.<com.google.javascript.jscomp.ReplaceStrings: java.util.Map functions> = $r1 
(define-const var2317 var1365 var1365-init) ; Statement: $r2 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var2317)) ; Statement: specialinvoke $r2.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var2317!1 var1365)
(declare-const var3011!3 var3153)
(assert (not (= var3011!3 null-var3153)))
(assert (= (results/1104890379 var3011!3) (cast-from-var1365-to-var1618 var2317!1))) ; Statement: r0.<com.google.javascript.jscomp.ReplaceStrings: java.util.Map results> = $r2 
(declare-const var3011!4 var3153)
(assert (not (= var3011!4 null-var3153)))
(assert (= (compiler/1104890379 var3011!4) var2114)) ; Statement: r0.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.AbstractCompiler compiler> = r3 
(assert true)
(define-const var2002 Bool (isEmpty/-1285796103 var3086)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r7 = r4 
(assert (= (ite var2002 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1729 String var3086) ; Statement: $r7 = r4 
(assert true) ; Non Conditional
(declare-const var3011!5 var3153)
(assert (not (= var3011!5 null-var3153)))
(assert (= (placeholderToken/1104890379 var3011!5) var1729)) ; Statement: r0.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken> = $r7 
(define-const var1335 var3835 var3153_createNameGenerator/97927778) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.DefaultNameGenerator createNameGenerator()>() 
(declare-const var3011!6 var3153)
(assert (not (= var3011!6 null-var3153)))
(assert (= (nameGenerator/1104890379 var3011!6) var1335)) ; Statement: r0.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.DefaultNameGenerator nameGenerator> = $r5 
(assert true)
;(assert (parseConfiguration/1555507137 var3011!6 var139)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.ReplaceStrings: void parseConfiguration(java.util.List)>(r6) 

(declare-const var3011!7 var3153)
(declare-const var139!1 var2943)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1492871117=([com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback], void), cast-from-var3153-to-var113=([com.google.javascript.jscomp.ReplaceStrings], com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback), var2118-init=([], java.util.HashMap), <init>/-201242697=([java.util.HashMap], void), cast-from-var2118-to-var1618=([java.util.HashMap], java.util.Map), functions/1104890379=([com.google.javascript.jscomp.ReplaceStrings], java.util.Map), var1365-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), cast-from-var1365-to-var1618=([java.util.LinkedHashMap], java.util.Map), results/1104890379=([com.google.javascript.jscomp.ReplaceStrings], java.util.Map), compiler/1104890379=([com.google.javascript.jscomp.ReplaceStrings], com.google.javascript.jscomp.AbstractCompiler), isEmpty/-1285796103=([java.lang.String], boolean), placeholderToken/1104890379=([com.google.javascript.jscomp.ReplaceStrings], java.lang.String), var3153_createNameGenerator/97927778=([], com.google.javascript.jscomp.DefaultNameGenerator), nameGenerator/1104890379=([com.google.javascript.jscomp.ReplaceStrings], com.google.javascript.jscomp.DefaultNameGenerator), parseConfiguration/1555507137=([com.google.javascript.jscomp.ReplaceStrings, java.util.List], void)}
; {var3153=com.google.javascript.jscomp.ReplaceStrings, var3011=r0, var2037=com.google.javascript.jscomp.AbstractCompiler, var2114=r3, var3086=r4, var123=null_type, var2943=java.util.List, var139=r6, var113=com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback, var2118=java.util.HashMap, var679=$r1, var1618=java.util.Map, var1365=java.util.LinkedHashMap, var2317=$r2, var2002=$z0, var1729=$r7, var3835=com.google.javascript.jscomp.DefaultNameGenerator, var1335=$r5}
; {com.google.javascript.jscomp.ReplaceStrings=var3153, r0=var3011, com.google.javascript.jscomp.AbstractCompiler=var2037, r3=var2114, r4=var3086, null_type=var123, java.util.List=var2943, r6=var139, com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback=var113, java.util.HashMap=var2118, $r1=var679, java.util.Map=var1618, java.util.LinkedHashMap=var1365, $r2=var2317, $z0=var2002, $r7=var1729, com.google.javascript.jscomp.DefaultNameGenerator=var3835, $r5=var1335}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ReplaceStrings;	r3 := @parameter0: com.google.javascript.jscomp.AbstractCompiler;	r4 := @parameter1: java.lang.String;	r6 := @parameter2: java.util.List;	specialinvoke r0.<com.google.javascript.jscomp.NodeTraversal$AbstractPostOrderCallback: void <init>()>();	$r1 = new java.util.HashMap;	specialinvoke $r1.<java.util.HashMap: void <init>()>();	r0.<com.google.javascript.jscomp.ReplaceStrings: java.util.Map functions> = $r1;	$r2 = new java.util.LinkedHashMap;	specialinvoke $r2.<java.util.LinkedHashMap: void <init>()>();	r0.<com.google.javascript.jscomp.ReplaceStrings: java.util.Map results> = $r2;	r0.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.AbstractCompiler compiler> = r3;	$z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r7 = r4;	$r7 = r4;	r0.<com.google.javascript.jscomp.ReplaceStrings: java.lang.String placeholderToken> = $r7;	$r5 = staticinvoke <com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.DefaultNameGenerator createNameGenerator()>();	r0.<com.google.javascript.jscomp.ReplaceStrings: com.google.javascript.jscomp.DefaultNameGenerator nameGenerator> = $r5;	virtualinvoke r0.<com.google.javascript.jscomp.ReplaceStrings: void parseConfiguration(java.util.List)>(r6);	return
;block_num 3