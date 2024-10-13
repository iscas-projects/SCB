(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1486 0)
(declare-sort var3889 0)
(declare-sort var1522 0)
(declare-sort var1898 0)
(declare-sort var2140 0)
(declare-sort var833 0)
(declare-sort var1131 0)
(declare-sort var3533 0)
(declare-sort var2429 0)
(declare-sort var2422 0)
(declare-sort var1638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2429) String)
(declare-fun cast-from-var1898-to-var2429 (var1898) var2429)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1131 String) void)
(declare-fun var2422_seek/-1872436025 (var2422 Int) void)
(declare-fun cast-from-var2140-to-var2422 (var2140) var2422)
(declare-fun var2422_LA/461575771 (var2422 Int) Int)
(declare-fun computeReachSet/727507833 (var1486 var1898 Int Bool) var1898)
(declare-fun noViableAlt/1945165783 (var1486 var2140 var833 var1898 Int) var1638)
(declare-fun getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282 (var1486 var1898 var833) Int)
(declare-const null-var1486 var1486)
(declare-const null-var3889 var3889)
(declare-const null-var1522 var1522)
(declare-const null-var1898 var1898)
(declare-const null-var2140 var2140)
(declare-const null-Int Int)
(declare-const null-var833 var833)
(declare-const var1486-debug Bool)
(declare-const var3533-out var1131)
(declare-const var2028 var1486) ; Statement: r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2028 null-var1486)))
(declare-const var3692 var3889) ; Statement: r10 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var3692 null-var3889)))
(declare-const var817 var1522) ; Statement: r11 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var817 null-var1522)))
(declare-const var2133 var1898) ; Statement: r2 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var2133 null-var1898)))
(declare-const var2363 var2140) ; Statement: r6 := @parameter3: com.github.jknack.handlebars.internal.antlr.TokenStream 
(assert (not (= var2363 null-var2140)))
(declare-const var302 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var302 null-Int)))
(declare-const var1556 var833) ; Statement: r22 := @parameter5: com.github.jknack.handlebars.internal.antlr.ParserRuleContext 
(assert (not (= var1556 null-var833)))
(define-const var3622 Bool var1486-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var3622 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2092 var1131 var3533-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3074 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3074)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3074!1 String)
(assert (= var3074!1 ""))
(assert true)
(define-const var3242 String (append/672562846 var3074!1 "execATNWithFullContext ")) ; Statement: $r3 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATNWithFullContext ") 
(declare-const var3074!2 String)
(assert (= var3074!2 (str.++ var3074!1 "execATNWithFullContext ")))
(assert true)
(define-const var544 String (append/-1031950772 var3242 (cast-from-var1898-to-var2429 var2133))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3242!1 String)
(assert (str.prefixof var3242 var3242!1))
(assert true)
(define-const var3217 String (toString/-2075883882 var544)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2092 var3217)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var2092!1 var1131)
(declare-const var3217!1 String)
(assert true) ; Non Conditional
(define-const var3350 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var1105 var1898 var2133) ; Statement: r23 = r2 
;(assert (var2422_seek/-1872436025 (cast-from-var2140-to-var2422 var2363) var302)) ; Statement: interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i0) 

(declare-const var2363!1 var2140)
(declare-const var302!1 Int)
(define-const var1352 Int (var2422_LA/461575771 (cast-from-var2140-to-var2422 var2363!1) 1)) ; Statement: i8 = interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: int LA(int)>(1) 
(assert true) ; Non Conditional
(assert true)
(define-const var3167 var1898 (computeReachSet/727507833 var2028 var1105 var1352 (ite (= 1 1) true false))) ; Statement: $r24 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet computeReachSet(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int,boolean)>(r23, i8, 1) 
 ; Statement: if $r24 != null goto r26 = staticinvoke <com.github.jknack.handlebars.internal.antlr.atn.PredictionMode: java.util.Collection getConflictingAltSubsets(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r24) 
(assert (not (not (= var3167 null-var1898)))) ; Negate: Cond: $r24 != null  
(assert true)
(define-const var950 var1638 (noViableAlt/1945165783 var2028 var2363!1 var1556 var1105 var302!1)) ; Statement: r25 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.NoViableAltException noViableAlt(com.github.jknack.handlebars.internal.antlr.TokenStream,com.github.jknack.handlebars.internal.antlr.ParserRuleContext,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int)>(r6, r22, r23, i0) 
;(assert (var2422_seek/-1872436025 (cast-from-var2140-to-var2422 var2363!1) var302!1)) ; Statement: interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i0) 

(declare-const var2363!2 var2140)
(declare-const var302!2 Int)
(assert true)
(define-const var2487 Int (getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282 var2028 var1105 var1556)) ; Statement: i7 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,com.github.jknack.handlebars.internal.antlr.ParserRuleContext)>(r23, r22) 
 ; Statement: if i7 == 0 goto throw r25 
(assert (not (= var2487 0))) ; Negate: Cond: i7 == 0  
 ; Statement: return i7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1898-to-var2429=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2422_seek/-1872436025=([com.github.jknack.handlebars.internal.antlr.IntStream, int], void), cast-from-var2140-to-var2422=([com.github.jknack.handlebars.internal.antlr.TokenStream], com.github.jknack.handlebars.internal.antlr.IntStream), var2422_LA/461575771=([com.github.jknack.handlebars.internal.antlr.IntStream, int], int), computeReachSet/727507833=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, int, boolean], com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet), noViableAlt/1945165783=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.ParserRuleContext, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, int], com.github.jknack.handlebars.internal.antlr.NoViableAltException), getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, com.github.jknack.handlebars.internal.antlr.ParserRuleContext], int)}
; {var1486=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2028=r7, var3889=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var3692=r10, var1522=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var817=r11, var1898=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var2133=r2, var2140=com.github.jknack.handlebars.internal.antlr.TokenStream, var2363=r6, var302=i0, var833=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var1556=r22, var3622=$z0, var1131=java.io.PrintStream, var3533=java.lang.System, var2092=$r1, var3074=$r27, var3242=$r3, var2429=java.lang.Object, var544=$r4, var3217=$r5, var3350=z5, var1105=r23, var2422=com.github.jknack.handlebars.internal.antlr.IntStream, var1352=i8, var3167=$r24, var1638=com.github.jknack.handlebars.internal.antlr.NoViableAltException, var950=r25, var2487=i7}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var1486, r7=var2028, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var3889, r10=var3692, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var1522, r11=var817, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var1898, r2=var2133, com.github.jknack.handlebars.internal.antlr.TokenStream=var2140, r6=var2363, i0=var302, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var833, r22=var1556, $z0=var3622, java.io.PrintStream=var1131, java.lang.System=var3533, $r1=var2092, $r27=var3074, $r3=var3242, java.lang.Object=var2429, $r4=var544, $r5=var3217, z5=var3350, r23=var1105, com.github.jknack.handlebars.internal.antlr.IntStream=var2422, i8=var1352, $r24=var3167, com.github.jknack.handlebars.internal.antlr.NoViableAltException=var1638, r25=var950, i7=var2487}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r10 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r11 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	r2 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	r6 := @parameter3: com.github.jknack.handlebars.internal.antlr.TokenStream;	i0 := @parameter4: int;	r22 := @parameter5: com.github.jknack.handlebars.internal.antlr.ParserRuleContext;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out>;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATNWithFullContext ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	z5 = 0;	r23 = r2;	interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i0);	i8 = interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: int LA(int)>(1);	$r24 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet computeReachSet(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int,boolean)>(r23, i8, 1);	if $r24 != null goto r26 = staticinvoke <com.github.jknack.handlebars.internal.antlr.atn.PredictionMode: java.util.Collection getConflictingAltSubsets(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r24);	r25 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.NoViableAltException noViableAlt(com.github.jknack.handlebars.internal.antlr.TokenStream,com.github.jknack.handlebars.internal.antlr.ParserRuleContext,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int)>(r6, r22, r23, i0);	interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i0);	i7 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,com.github.jknack.handlebars.internal.antlr.ParserRuleContext)>(r23, r22);	if i7 == 0 goto throw r25;	return i7
;block_num 6