(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1994 0)
(declare-sort var2563 0)
(declare-sort var1716 0)
(declare-sort var3038 0)
(declare-sort var2312 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun keyIndex/854684194 (var1994) var1716)
(declare-fun get/-328895909 (var1716 var2563) var2563)
(declare-fun cast-from-var2563-to-Int (var2563) Int)
(declare-fun var3038-init () var3038)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getKeyRole/2082137935 (var1994) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2563) String)
(declare-fun keySet/-1809185322 (var1716) var2312)
(declare-fun cast-from-var2312-to-var2563 (var2312) var2563)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3038 String) void)
(declare-const null-var1994 var1994)
(declare-const null-var2563 var2563)
(declare-const null-Int Int)
(declare-const var3612 var1994) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap 
(assert (not (= var3612 null-var1994)))
(declare-const var686 var2563) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var686 null-var2563)))
(declare-const var3429 var2563) ; Statement: r5 := @parameter1: java.lang.Object 
(assert (not (= var3429 null-var2563)))
(define-const var3096 var1716 (keyIndex/854684194 var3612)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap keyIndex> 
(assert true)
(define-const var3595 var2563 (get/-328895909 var3096 var686)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var543 Int (cast-from-var2563-to-Int var3595)) ; Statement: r4 = (java.lang.Integer) $r3 
 ; Statement: if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>() 
(assert (not (not (= var543 null-Int)))) ; Negate: Cond: r4 != null  
(define-const var470 var3038 var3038-init) ; Statement: $r7 = new java.lang.IllegalArgumentException 
(define-const var3394 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3394)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3394!1 String)
(assert (= var3394!1 ""))
(assert true)
(define-const var554 String (getKeyRole/2082137935 var3612)) ; Statement: $r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap: java.lang.String getKeyRole()>() 
(assert true)
(define-const var3447 String (append/672562846 var3394!1 var554)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3394!2 String)
(assert (= var3394!2 (str.++ var3394!1 var554)))
(assert true)
(define-const var2307 String (append/672562846 var3447 " ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ") 
(declare-const var3447!1 String)
(assert (= var3447!1 (str.++ var3447 " ")))
(assert true)
(define-const var11 String (append/-1031950772 var2307 var686)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2307!1 String)
(assert (str.prefixof var2307 var2307!1))
(assert true)
(define-const var3238 String (append/672562846 var11 " not in ")) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in ") 
(declare-const var11!1 String)
(assert (= var11!1 (str.++ var11 " not in ")))
(define-const var2470 var1716 (keyIndex/854684194 var3612)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap keyIndex> 
(assert true)
(define-const var1828 var2312 (keySet/-1809185322 var2470)) ; Statement: $r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet keySet()>() 
(assert true)
(define-const var1377 String (append/-1031950772 var3238 (cast-from-var2312-to-var2563 var1828))) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14) 
(declare-const var3238!1 String)
(assert (str.prefixof var3238 var3238!1))
(assert true)
(define-const var89 String (toString/-2075883882 var1377)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var470 var89)) ; Statement: specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17) 

(declare-const var470!1 var3038)
(declare-const var89!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {keyIndex/854684194=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), get/-328895909=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, java.lang.Object], java.lang.Object), cast-from-var2563-to-Int=([java.lang.Object], java.lang.Integer), var3038-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getKeyRole/2082137935=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), keySet/-1809185322=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), cast-from-var2312-to-var2563=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1994=com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap, var3612=r0, var2563=java.lang.Object, var686=r1, var3429=r5, var1716=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3096=$r2, var3595=$r3, var543=r4, var3038=java.lang.IllegalArgumentException, var470=$r7, var3394=$r8, var554=$r9, var3447=$r10, var2307=$r11, var11=$r12, var3238=$r15, var2470=$r13, var2312=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1828=$r14, var1377=$r16, var89=$r17}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap=var1994, r0=var3612, java.lang.Object=var2563, r1=var686, r5=var3429, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1716, $r2=var3096, $r3=var3595, r4=var543, java.lang.IllegalArgumentException=var3038, $r7=var470, $r8=var3394, $r9=var554, $r10=var3447, $r11=var2307, $r12=var11, $r15=var3238, $r13=var2470, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2312, $r14=var1828, $r16=var1377, $r17=var89}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap;	r1 := @parameter0: java.lang.Object;	r5 := @parameter1: java.lang.Object;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap keyIndex>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: java.lang.Object get(java.lang.Object)>(r1);	r4 = (java.lang.Integer) $r3;	if r4 != null goto $i0 = virtualinvoke r4.<java.lang.Integer: int intValue()>();	$r7 = new java.lang.IllegalArgumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap: java.lang.String getKeyRole()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not in ");	$r13 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ArrayTable$ArrayMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap keyIndex>;	$r14 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet keySet()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r17);	throw $r7
;block_num 2