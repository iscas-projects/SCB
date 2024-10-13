(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3256 0)
(declare-sort var2495 0)
(declare-sort var3004 0)
(declare-sort var1880 0)
(declare-sort var3967 0)
(declare-sort var641 0)
(declare-sort var2117 0)
(declare-sort var3018 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun inputState/-774545314 (var3967) var1880)
(declare-fun cast-from-var3256-to-var3967 (var3256) var3967)
(declare-fun guessing/1132528042 (var1880) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun traceDepth/190266787 (var3256) Int)
(declare-fun var641_repeat/-97481534 (Int Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun buildTraceNodeName/1280129743 (var3256 var3004) String)
(declare-fun trace/-660176171 (var2117 var3018) void)
(declare-fun cast-from-String-to-var3018 (String) var3018)
(declare-const null-var3256 var3256)
(declare-const null-String String)
(declare-const null-var3004 var3004)
(declare-const var3256-LOG var2117)
(declare-const var2054 var3256) ; Statement: r0 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer 
(assert (not (= var2054 null-var3256)))
(declare-const var3396 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var3396 null-String)))
(declare-const var3417 var3004) ; Statement: r10 := @parameter1: antlr.collections.AST 
(assert (not (= var3417 null-var3004)))
(define-const var2605 var1880 (inputState/-774545314 (cast-from-var3256-to-var3967 var2054))) ; Statement: $r1 = r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: antlr.TreeParserSharedInputState inputState> 
(define-const var401 Int (guessing/1132528042 var2605)) ; Statement: $i0 = $r1.<antlr.TreeParserSharedInputState: int guessing> 
 ; Statement: if $i0 <= 0 goto $r2 = new java.lang.StringBuilder 
(assert (<= var401 0)) ; Cond: $i0 <= 0 
(define-const var2949 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2949)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2949!1 String)
(assert (= var2949!1 ""))
(define-const var210 Int (traceDepth/190266787 var2054)) ; Statement: $i1 = r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: int traceDepth> 
(define-const var1430 Int (+ var210 1)) ; Statement: $i2 = $i1 + 1 
(declare-const var2054!1 var3256)
(assert (not (= var2054!1 null-var3256)))
(assert (= (traceDepth/190266787 var2054!1) var1430)) ; Statement: r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: int traceDepth> = $i2 
(define-const var2611 Int (* var210 2)) ; Statement: $i3 = $i1 * 2 
(define-const var3129 String (var641_repeat/-97481534 45 var2611)) ; Statement: $r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(char,int)>(45, $i3) 
(assert true)
(define-const var931 String (append/672562846 var2949!1 var3129)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2949!2 String)
(assert (= var2949!2 (str.++ var2949!1 var3129)))
(assert true)
(define-const var159 String (append/672562846 var931 "-> ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-> ") 
(declare-const var931!1 String)
(assert (= var931!1 (str.++ var931 "-> ")))
(assert true)
(define-const var2254 String (toString/-2075883882 var159)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var615 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var615)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var615!1 String)
(assert (= var615!1 ""))
(assert true)
(define-const var2314 String (append/672562846 var615!1 var3396)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var615!2 String)
(assert (= var615!2 (str.++ var615!1 var3396)))
(assert true)
(define-const var2840 String (append/672562846 var2314 " (")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var2314!1 String)
(assert (= var2314!1 (str.++ var2314 " (")))
(assert true)
(define-const var2324 String (buildTraceNodeName/1280129743 var2054!1 var3417)) ; Statement: $r11 = specialinvoke r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: java.lang.String buildTraceNodeName(antlr.collections.AST)>(r10) 
(assert true)
(define-const var3067 String (append/672562846 var2840 var2324)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2840!1 String)
(assert (= var2840!1 (str.++ var2840 var2324)))
(assert true)
(define-const var845 String (append/672562846 var3067 ")")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3067!1 String)
(assert (= var3067!1 (str.++ var3067 ")")))
(assert true)
(define-const var3790 String (toString/-2075883882 var845)) ; Statement: r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3827 var2117 var3256-LOG) ; Statement: $r17 = <org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: org.jboss.logging.Logger LOG> 
(define-const var2273 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2273)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2273!1 String)
(assert (= var2273!1 ""))
(assert true)
(define-const var3568 String (append/672562846 var2273!1 var2254)) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6) 
(declare-const var2273!2 String)
(assert (= var2273!2 (str.++ var2273!1 var2254)))
(assert true)
(define-const var2812 String (append/672562846 var3568 var3790)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var3568!1 String)
(assert (= var3568!1 (str.++ var3568 var3790)))
(assert true)
(define-const var2510 String (toString/-2075883882 var2812)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (trace/-660176171 var3827 (cast-from-String-to-var3018 var2510))) ; Statement: virtualinvoke $r17.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r20) 

(declare-const var3827!1 var2117)
(declare-const var2510!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {inputState/-774545314=([antlr.TreeParser], antlr.TreeParserSharedInputState), cast-from-var3256-to-var3967=([org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer], antlr.TreeParser), guessing/1132528042=([antlr.TreeParserSharedInputState], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), traceDepth/190266787=([org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer], int), var641_repeat/-97481534=([char, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), buildTraceNodeName/1280129743=([org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer, antlr.collections.AST], java.lang.String), trace/-660176171=([org.jboss.logging.Logger, java.lang.Object], void), cast-from-String-to-var3018=([java.lang.String], java.lang.Object)}
; {var3256=org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer, var2054=r0, var3396=r8, var2495=null_type, var3004=antlr.collections.AST, var3417=r10, var1880=antlr.TreeParserSharedInputState, var3967=antlr.TreeParser, var2605=$r1, var401=$i0, var2949=$r2, var210=$i1, var1430=$i2, var2611=$i3, var641=org.hibernate.internal.util.StringHelper, var3129=$r3, var931=$r4, var159=$r5, var2254=r6, var615=$r7, var2314=$r9, var2840=$r12, var2324=$r11, var3067=$r13, var845=$r14, var3790=r15, var2117=org.jboss.logging.Logger, var3827=$r17, var2273=$r16, var3568=$r18, var2812=$r19, var2510=$r20, var3018=java.lang.Object}
; {org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer=var3256, r0=var2054, r8=var3396, null_type=var2495, antlr.collections.AST=var3004, r10=var3417, antlr.TreeParserSharedInputState=var1880, antlr.TreeParser=var3967, $r1=var2605, $i0=var401, $r2=var2949, $i1=var210, $i2=var1430, $i3=var2611, org.hibernate.internal.util.StringHelper=var641, $r3=var3129, $r4=var931, $r5=var159, r6=var2254, $r7=var615, $r9=var2314, $r12=var2840, $r11=var2324, $r13=var3067, $r14=var845, r15=var3790, org.jboss.logging.Logger=var2117, $r17=var3827, $r16=var2273, $r18=var3568, $r19=var2812, $r20=var2510, java.lang.Object=var3018}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer;	r8 := @parameter0: java.lang.String;	r10 := @parameter1: antlr.collections.AST;	$r1 = r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: antlr.TreeParserSharedInputState inputState>;	$i0 = $r1.<antlr.TreeParserSharedInputState: int guessing>;	if $i0 <= 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$i1 = r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: int traceDepth>;	$i2 = $i1 + 1;	r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: int traceDepth> = $i2;	$i3 = $i1 * 2;	$r3 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String repeat(char,int)>(45, $i3);	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-> ");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r11 = specialinvoke r0.<org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: java.lang.String buildTraceNodeName(antlr.collections.AST)>(r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = <org.hibernate.sql.ordering.antlr.OrderByFragmentRenderer: org.jboss.logging.Logger LOG>;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r6);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<org.jboss.logging.Logger: void trace(java.lang.Object)>($r20);	return
;block_num 2