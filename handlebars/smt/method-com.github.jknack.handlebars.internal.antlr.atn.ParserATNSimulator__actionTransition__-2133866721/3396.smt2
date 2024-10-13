(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2822 0)
(declare-sort var2502 0)
(declare-sort var1492 0)
(declare-sort var1102 0)
(declare-sort var466 0)
(declare-sort var2030 0)
(declare-sort var3205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ruleIndex/1258299454 (var1492) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun actionIndex/1258299454 (var1492) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1102 String) void)
(declare-fun var2502-init () var2502)
(declare-fun target/1869339560 (var3205) var2030)
(declare-fun cast-from-var1492-to-var3205 (var1492) var3205)
(declare-fun <init>/-1127165186 (var2502 var2502 var2030) void)
(declare-const null-var2822 var2822)
(declare-const null-var2502 var2502)
(declare-const null-var1492 var1492)
(declare-const var2822-debug Bool)
(declare-const var466-out var1102)
(declare-const var1235 var2822) ; Statement: r11 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var1235 null-var2822)))
(declare-const var3571 var2502) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (not (= var3571 null-var2502)))
(declare-const var2396 var1492) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.ActionTransition 
(assert (not (= var2396 null-var1492)))
(define-const var11 Bool var2822-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (not (= (ite var11 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var425 var1102 var466-out) ; Statement: $r5 = <java.lang.System: java.io.PrintStream out> 
(define-const var1013 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1013)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1013!1 String)
(assert (= var1013!1 ""))
(assert true)
(define-const var3356 String (append/672562846 var1013!1 "ACTION edge ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ACTION edge ") 
(declare-const var1013!2 String)
(assert (= var1013!2 (str.++ var1013!1 "ACTION edge ")))
(define-const var3628 Int (ruleIndex/1258299454 var2396)) ; Statement: $i0 = r2.<com.github.jknack.handlebars.internal.antlr.atn.ActionTransition: int ruleIndex> 
(assert true)
(define-const var3953 String (append/-1001720160 var3356 var3628)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3356!1 String)
(assert (str.prefixof var3356 var3356!1))
(assert true)
(define-const var2558 String (append/672562846 var3953 ":")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3953!1 String)
(assert (= var3953!1 (str.++ var3953 ":")))
(define-const var994 Int (actionIndex/1258299454 var2396)) ; Statement: $i1 = r2.<com.github.jknack.handlebars.internal.antlr.atn.ActionTransition: int actionIndex> 
(assert true)
(define-const var2598 String (append/-1001720160 var2558 var994)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2558!1 String)
(assert (str.prefixof var2558 var2558!1))
(assert true)
(define-const var3942 String (toString/-2075883882 var2598)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var425 var3942)) ; Statement: virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r10) 

(declare-const var425!1 var1102)
(declare-const var3942!1 String)
(assert true) ; Non Conditional
(define-const var665 var2502 var2502-init) ; Statement: $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(define-const var2582 var2030 (target/1869339560 (cast-from-var1492-to-var3205 var2396))) ; Statement: $r3 = r2.<com.github.jknack.handlebars.internal.antlr.atn.ActionTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target> 
(assert true)
;(assert (<init>/-1127165186 var665 var3571 var2582)) ; Statement: specialinvoke $r0.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r1, $r3) 

(declare-const var665!1 var2502)
(declare-const var3571!1 var2502)
(declare-const var2582!1 var2030)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ruleIndex/1258299454=([com.github.jknack.handlebars.internal.antlr.atn.ActionTransition], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), actionIndex/1258299454=([com.github.jknack.handlebars.internal.antlr.atn.ActionTransition], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2502-init=([], com.github.jknack.handlebars.internal.antlr.atn.ATNConfig), target/1869339560=([com.github.jknack.handlebars.internal.antlr.atn.Transition], com.github.jknack.handlebars.internal.antlr.atn.ATNState), cast-from-var1492-to-var3205=([com.github.jknack.handlebars.internal.antlr.atn.ActionTransition], com.github.jknack.handlebars.internal.antlr.atn.Transition), <init>/-1127165186=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNState], void)}
; {var2822=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var1235=r11, var2502=com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, var3571=r1, var1492=com.github.jknack.handlebars.internal.antlr.atn.ActionTransition, var2396=r2, var11=$z0, var1102=java.io.PrintStream, var466=java.lang.System, var425=$r5, var1013=$r4, var3356=$r6, var3628=$i0, var3953=$r7, var2558=$r8, var994=$i1, var2598=$r9, var3942=$r10, var665=$r0, var2030=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var3205=com.github.jknack.handlebars.internal.antlr.atn.Transition, var2582=$r3}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2822, r11=var1235, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig=var2502, r1=var3571, com.github.jknack.handlebars.internal.antlr.atn.ActionTransition=var1492, r2=var2396, $z0=var11, java.io.PrintStream=var1102, java.lang.System=var466, $r5=var425, $r4=var1013, $r6=var3356, $i0=var3628, $r7=var3953, $r8=var2558, $i1=var994, $r9=var2598, $r10=var3942, $r0=var665, com.github.jknack.handlebars.internal.antlr.atn.ATNState=var2030, com.github.jknack.handlebars.internal.antlr.atn.Transition=var3205, $r3=var2582}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.ActionTransition;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto $r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r5 = <java.lang.System: java.io.PrintStream out>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ACTION edge ");	$i0 = r2.<com.github.jknack.handlebars.internal.antlr.atn.ActionTransition: int ruleIndex>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r2.<com.github.jknack.handlebars.internal.antlr.atn.ActionTransition: int actionIndex>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r5.<java.io.PrintStream: void println(java.lang.String)>($r10);	$r0 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r3 = r2.<com.github.jknack.handlebars.internal.antlr.atn.ActionTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target>;	specialinvoke $r0.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState)>(r1, $r3);	return $r0
;block_num 3