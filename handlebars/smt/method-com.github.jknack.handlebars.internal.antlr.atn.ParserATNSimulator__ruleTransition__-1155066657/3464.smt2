(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1129 0)
(declare-sort var2129 0)
(declare-sort var1679 0)
(declare-sort var2564 0)
(declare-sort var3183 0)
(declare-sort var1309 0)
(declare-sort var1687 0)
(declare-sort var3985 0)
(declare-sort var2522 0)
(declare-sort var2681 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun target/1869339560 (var1687) var1309)
(declare-fun cast-from-var1679-to-var1687 (var1679) var1687)
(declare-fun ruleIndex/1674390985 (var1309) Int)
(declare-fun getRuleName/-548807493 (var1129 Int) String)
(declare-fun context/-95796982 (var2129) var3985)
(declare-fun append/-1031950772 (String var2522) String)
(declare-fun cast-from-var3985-to-var2522 (var3985) var2522)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2564 String) void)
(declare-fun followState/-189111740 (var1679) var1309)
(declare-fun stateNumber/1674390985 (var1309) Int)
(declare-fun var2681_create/-1967164697 (var3985 Int) var2681)
(declare-fun var2129-init () var2129)
(declare-fun <init>/1365305919 (var2129 var2129 var1309 var3985) void)
(declare-fun cast-from-var2681-to-var3985 (var2681) var3985)
(declare-const null-var1129 var1129)
(declare-const null-var2129 var2129)
(declare-const null-var1679 var1679)
(declare-const var1129-debug Bool)
(declare-const var3183-out var2564)
(declare-const var1244 var1129) ; Statement: r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var1244 null-var1129)))
(declare-const var321 var2129) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(assert (not (= var321 null-var2129)))
(declare-const var3196 var1679) ; Statement: r0 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.RuleTransition 
(assert (not (= var3196 null-var1679)))
(define-const var303 Bool var1129-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto $r16 = r0.<com.github.jknack.handlebars.internal.antlr.atn.RuleTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState followState> 
(assert (not (= (ite var303 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var976 var2564 var3183-out) ; Statement: $r6 = <java.lang.System: java.io.PrintStream out> 
(define-const var526 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var526)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var526!1 String)
(assert (= var526!1 ""))
(assert true)
(define-const var44 String (append/672562846 var526!1 "CALL rule ")) ; Statement: $r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CALL rule ") 
(declare-const var526!2 String)
(assert (= var526!2 (str.++ var526!1 "CALL rule ")))
(define-const var400 var1309 (target/1869339560 (cast-from-var1679-to-var1687 var3196))) ; Statement: $r8 = r0.<com.github.jknack.handlebars.internal.antlr.atn.RuleTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target> 
(define-const var3452 Int (ruleIndex/1674390985 var400)) ; Statement: $i1 = $r8.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int ruleIndex> 
(assert true)
(define-const var647 String (getRuleName/-548807493 var1244 var3452)) ; Statement: $r9 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getRuleName(int)>($i1) 
(assert true)
(define-const var825 String (append/672562846 var44 var647)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var44!1 String)
(assert (= var44!1 (str.++ var44 var647)))
(assert true)
(define-const var2166 String (append/672562846 var825 ", ctx=")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ctx=") 
(declare-const var825!1 String)
(assert (= var825!1 (str.++ var825 ", ctx=")))
(define-const var2938 var3985 (context/-95796982 var321)) ; Statement: $r12 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext context> 
(assert true)
(define-const var3853 String (append/-1031950772 var2166 (cast-from-var3985-to-var2522 var2938))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var2166!1 String)
(assert (str.prefixof var2166 var2166!1))
(assert true)
(define-const var3305 String (toString/-2075883882 var3853)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var976 var3305)) ; Statement: virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>($r15) 

(declare-const var976!1 var2564)
(declare-const var3305!1 String)
(assert true) ; Non Conditional
(define-const var1868 var1309 (followState/-189111740 var3196)) ; Statement: $r16 = r0.<com.github.jknack.handlebars.internal.antlr.atn.RuleTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState followState> 
(define-const var987 var3985 (context/-95796982 var321)) ; Statement: $r2 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext context> 
(define-const var1039 Int (stateNumber/1674390985 var1868)) ; Statement: $i0 = $r16.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int stateNumber> 
(define-const var1233 var2681 (var2681_create/-1967164697 var987 var1039)) ; Statement: $r17 = staticinvoke <com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext create(com.github.jknack.handlebars.internal.antlr.atn.PredictionContext,int)>($r2, $i0) 
(define-const var372 var2129 var2129-init) ; Statement: $r3 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig 
(define-const var2608 var1309 (target/1869339560 (cast-from-var1679-to-var1687 var3196))) ; Statement: $r4 = r0.<com.github.jknack.handlebars.internal.antlr.atn.RuleTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target> 
(assert true)
;(assert (<init>/1365305919 var372 var321 var2608 (cast-from-var2681-to-var3985 var1233))) ; Statement: specialinvoke $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState,com.github.jknack.handlebars.internal.antlr.atn.PredictionContext)>(r1, $r4, $r17) 

(declare-const var372!1 var2129)
(declare-const var321!1 var2129)
(declare-const var2608!1 var1309)
(declare-const var1233!1 var2681)
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), target/1869339560=([com.github.jknack.handlebars.internal.antlr.atn.Transition], com.github.jknack.handlebars.internal.antlr.atn.ATNState), cast-from-var1679-to-var1687=([com.github.jknack.handlebars.internal.antlr.atn.RuleTransition], com.github.jknack.handlebars.internal.antlr.atn.Transition), ruleIndex/1674390985=([com.github.jknack.handlebars.internal.antlr.atn.ATNState], int), getRuleName/-548807493=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, int], java.lang.String), context/-95796982=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig], com.github.jknack.handlebars.internal.antlr.atn.PredictionContext), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3985-to-var2522=([com.github.jknack.handlebars.internal.antlr.atn.PredictionContext], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), followState/-189111740=([com.github.jknack.handlebars.internal.antlr.atn.RuleTransition], com.github.jknack.handlebars.internal.antlr.atn.ATNState), stateNumber/1674390985=([com.github.jknack.handlebars.internal.antlr.atn.ATNState], int), var2681_create/-1967164697=([com.github.jknack.handlebars.internal.antlr.atn.PredictionContext, int], com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext), var2129-init=([], com.github.jknack.handlebars.internal.antlr.atn.ATNConfig), <init>/1365305919=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, com.github.jknack.handlebars.internal.antlr.atn.ATNState, com.github.jknack.handlebars.internal.antlr.atn.PredictionContext], void), cast-from-var2681-to-var3985=([com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext], com.github.jknack.handlebars.internal.antlr.atn.PredictionContext)}
; {var1129=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var1244=r7, var2129=com.github.jknack.handlebars.internal.antlr.atn.ATNConfig, var321=r1, var1679=com.github.jknack.handlebars.internal.antlr.atn.RuleTransition, var3196=r0, var303=$z0, var2564=java.io.PrintStream, var3183=java.lang.System, var976=$r6, var526=$r5, var44=$r10, var1309=com.github.jknack.handlebars.internal.antlr.atn.ATNState, var1687=com.github.jknack.handlebars.internal.antlr.atn.Transition, var400=$r8, var3452=$i1, var647=$r9, var825=$r11, var2166=$r13, var3985=com.github.jknack.handlebars.internal.antlr.atn.PredictionContext, var2938=$r12, var2522=java.lang.Object, var3853=$r14, var3305=$r15, var1868=$r16, var987=$r2, var1039=$i0, var2681=com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext, var1233=$r17, var372=$r3, var2608=$r4}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var1129, r7=var1244, com.github.jknack.handlebars.internal.antlr.atn.ATNConfig=var2129, r1=var321, com.github.jknack.handlebars.internal.antlr.atn.RuleTransition=var1679, r0=var3196, $z0=var303, java.io.PrintStream=var2564, java.lang.System=var3183, $r6=var976, $r5=var526, $r10=var44, com.github.jknack.handlebars.internal.antlr.atn.ATNState=var1309, com.github.jknack.handlebars.internal.antlr.atn.Transition=var1687, $r8=var400, $i1=var3452, $r9=var647, $r11=var825, $r13=var2166, com.github.jknack.handlebars.internal.antlr.atn.PredictionContext=var3985, $r12=var2938, java.lang.Object=var2522, $r14=var3853, $r15=var3305, $r16=var1868, $r2=var987, $i0=var1039, com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext=var2681, $r17=var1233, $r3=var372, $r4=var2608}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	r0 := @parameter1: com.github.jknack.handlebars.internal.antlr.atn.RuleTransition;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto $r16 = r0.<com.github.jknack.handlebars.internal.antlr.atn.RuleTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState followState>;	$r6 = <java.lang.System: java.io.PrintStream out>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CALL rule ");	$r8 = r0.<com.github.jknack.handlebars.internal.antlr.atn.RuleTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target>;	$i1 = $r8.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int ruleIndex>;	$r9 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getRuleName(int)>($i1);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ctx=");	$r12 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext context>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r6.<java.io.PrintStream: void println(java.lang.String)>($r15);	$r16 = r0.<com.github.jknack.handlebars.internal.antlr.atn.RuleTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState followState>;	$r2 = r1.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: com.github.jknack.handlebars.internal.antlr.atn.PredictionContext context>;	$i0 = $r16.<com.github.jknack.handlebars.internal.antlr.atn.ATNState: int stateNumber>;	$r17 = staticinvoke <com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext: com.github.jknack.handlebars.internal.antlr.atn.SingletonPredictionContext create(com.github.jknack.handlebars.internal.antlr.atn.PredictionContext,int)>($r2, $i0);	$r3 = new com.github.jknack.handlebars.internal.antlr.atn.ATNConfig;	$r4 = r0.<com.github.jknack.handlebars.internal.antlr.atn.RuleTransition: com.github.jknack.handlebars.internal.antlr.atn.ATNState target>;	specialinvoke $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATNConfig: void <init>(com.github.jknack.handlebars.internal.antlr.atn.ATNConfig,com.github.jknack.handlebars.internal.antlr.atn.ATNState,com.github.jknack.handlebars.internal.antlr.atn.PredictionContext)>(r1, $r4, $r17);	return $r3
;block_num 3