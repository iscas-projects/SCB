(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3373 0)
(declare-sort var3319 0)
(declare-sort var3078 0)
(declare-sort var2916 0)
(declare-sort var523 0)
(declare-sort var3151 0)
(declare-sort var382 0)
(declare-sort var2202 0)
(declare-sort var2508 0)
(declare-sort var3144 0)
(declare-sort var3824 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2508) String)
(declare-fun cast-from-var2916-to-var2508 (var2916) var2508)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var382 String) void)
(declare-fun var3144_seek/-362761590 (var3144 Int) void)
(declare-fun cast-from-var523-to-var3144 (var523) var3144)
(declare-fun var3144_LA/2117130104 (var3144 Int) Int)
(declare-fun computeReachSet/199758456 (var3373 var2916 Int Bool) var2916)
(declare-fun noViableAlt/-1144971256 (var3373 var523 var3151 var2916 Int) var3824)
(declare-fun getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329 (var3373 var2916 var3151) Int)
(declare-const null-var3373 var3373)
(declare-const null-var3319 var3319)
(declare-const null-var3078 var3078)
(declare-const null-var2916 var2916)
(declare-const null-var523 var523)
(declare-const null-Int Int)
(declare-const null-var3151 var3151)
(declare-const var3373-debug Bool)
(declare-const var2202-out var382)
(declare-const var1609 var3373) ; Statement: r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1609 null-var3373)))
(declare-const var624 var3319) ; Statement: r10 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var624 null-var3319)))
(declare-const var577 var3078) ; Statement: r11 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var577 null-var3078)))
(declare-const var287 var2916) ; Statement: r2 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var287 null-var2916)))
(declare-const var2504 var523) ; Statement: r6 := @parameter3: org.antlr.v4.runtime.TokenStream 
(assert (not (= var2504 null-var523)))
(declare-const var1314 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var1314 null-Int)))
(declare-const var42 var3151) ; Statement: r22 := @parameter5: org.antlr.v4.runtime.ParserRuleContext 
(assert (not (= var42 null-var3151)))
(define-const var1024 Bool var3373-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var1024 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1557 var382 var2202-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var2699 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2699)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2699!1 String)
(assert (= var2699!1 ""))
(assert true)
(define-const var2796 String (append/672562846 var2699!1 "execATNWithFullContext ")) ; Statement: $r3 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATNWithFullContext ") 
(declare-const var2699!2 String)
(assert (= var2699!2 (str.++ var2699!1 "execATNWithFullContext ")))
(assert true)
(define-const var2346 String (append/-1031950772 var2796 (cast-from-var2916-to-var2508 var287))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2796!1 String)
(assert (str.prefixof var2796 var2796!1))
(assert true)
(define-const var1445 String (toString/-2075883882 var2346)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1557 var1445)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var1557!1 var382)
(declare-const var1445!1 String)
(assert true) ; Non Conditional
(define-const var2037 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var1272 var2916 var287) ; Statement: r23 = r2 
;(assert (var3144_seek/-362761590 (cast-from-var523-to-var3144 var2504) var1314)) ; Statement: interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i0) 

(declare-const var2504!1 var523)
(declare-const var1314!1 Int)
(define-const var740 Int (var3144_LA/2117130104 (cast-from-var523-to-var3144 var2504!1) 1)) ; Statement: i8 = interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: int LA(int)>(1) 
(assert true) ; Non Conditional
(assert true)
(define-const var3637 var2916 (computeReachSet/199758456 var1609 var1272 var740 (ite (= 1 1) true false))) ; Statement: $r24 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATNConfigSet computeReachSet(org.antlr.v4.runtime.atn.ATNConfigSet,int,boolean)>(r23, i8, 1) 
 ; Statement: if $r24 != null goto r26 = staticinvoke <org.antlr.v4.runtime.atn.PredictionMode: java.util.Collection getConflictingAltSubsets(org.antlr.v4.runtime.atn.ATNConfigSet)>($r24) 
(assert (not (not (= var3637 null-var2916)))) ; Negate: Cond: $r24 != null  
(assert true)
(define-const var197 var3824 (noViableAlt/-1144971256 var1609 var2504!1 var42 var1272 var1314!1)) ; Statement: r25 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.NoViableAltException noViableAlt(org.antlr.v4.runtime.TokenStream,org.antlr.v4.runtime.ParserRuleContext,org.antlr.v4.runtime.atn.ATNConfigSet,int)>(r6, r22, r23, i0) 
;(assert (var3144_seek/-362761590 (cast-from-var523-to-var3144 var2504!1) var1314!1)) ; Statement: interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i0) 

(declare-const var2504!2 var523)
(declare-const var1314!2 Int)
(assert true)
(define-const var1914 Int (getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329 var1609 var1272 var42)) ; Statement: i7 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(org.antlr.v4.runtime.atn.ATNConfigSet,org.antlr.v4.runtime.ParserRuleContext)>(r23, r22) 
 ; Statement: if i7 == 0 goto throw r25 
(assert (= var1914 0)) ; Cond: i7 == 0 
 ; Statement: throw r25 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2916-to-var2508=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var3144_seek/-362761590=([org.antlr.v4.runtime.IntStream, int], void), cast-from-var523-to-var3144=([org.antlr.v4.runtime.TokenStream], org.antlr.v4.runtime.IntStream), var3144_LA/2117130104=([org.antlr.v4.runtime.IntStream, int], int), computeReachSet/199758456=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.atn.ATNConfigSet, int, boolean], org.antlr.v4.runtime.atn.ATNConfigSet), noViableAlt/-1144971256=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.ParserRuleContext, org.antlr.v4.runtime.atn.ATNConfigSet, int], org.antlr.v4.runtime.NoViableAltException), getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.atn.ATNConfigSet, org.antlr.v4.runtime.ParserRuleContext], int)}
; {var3373=org.antlr.v4.runtime.atn.ParserATNSimulator, var1609=r7, var3319=org.antlr.v4.runtime.dfa.DFA, var624=r10, var3078=org.antlr.v4.runtime.dfa.DFAState, var577=r11, var2916=org.antlr.v4.runtime.atn.ATNConfigSet, var287=r2, var523=org.antlr.v4.runtime.TokenStream, var2504=r6, var1314=i0, var3151=org.antlr.v4.runtime.ParserRuleContext, var42=r22, var1024=$z0, var382=java.io.PrintStream, var2202=java.lang.System, var1557=$r1, var2699=$r27, var2796=$r3, var2508=java.lang.Object, var2346=$r4, var1445=$r5, var2037=z5, var1272=r23, var3144=org.antlr.v4.runtime.IntStream, var740=i8, var3637=$r24, var3824=org.antlr.v4.runtime.NoViableAltException, var197=r25, var1914=i7}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3373, r7=var1609, org.antlr.v4.runtime.dfa.DFA=var3319, r10=var624, org.antlr.v4.runtime.dfa.DFAState=var3078, r11=var577, org.antlr.v4.runtime.atn.ATNConfigSet=var2916, r2=var287, org.antlr.v4.runtime.TokenStream=var523, r6=var2504, i0=var1314, org.antlr.v4.runtime.ParserRuleContext=var3151, r22=var42, $z0=var1024, java.io.PrintStream=var382, java.lang.System=var2202, $r1=var1557, $r27=var2699, $r3=var2796, java.lang.Object=var2508, $r4=var2346, $r5=var1445, z5=var2037, r23=var1272, org.antlr.v4.runtime.IntStream=var3144, i8=var740, $r24=var3637, org.antlr.v4.runtime.NoViableAltException=var3824, r25=var197, i7=var1914}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r10 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r11 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	r2 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	r6 := @parameter3: org.antlr.v4.runtime.TokenStream;	i0 := @parameter4: int;	r22 := @parameter5: org.antlr.v4.runtime.ParserRuleContext;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out>;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATNWithFullContext ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	z5 = 0;	r23 = r2;	interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i0);	i8 = interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: int LA(int)>(1);	$r24 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATNConfigSet computeReachSet(org.antlr.v4.runtime.atn.ATNConfigSet,int,boolean)>(r23, i8, 1);	if $r24 != null goto r26 = staticinvoke <org.antlr.v4.runtime.atn.PredictionMode: java.util.Collection getConflictingAltSubsets(org.antlr.v4.runtime.atn.ATNConfigSet)>($r24);	r25 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.NoViableAltException noViableAlt(org.antlr.v4.runtime.TokenStream,org.antlr.v4.runtime.ParserRuleContext,org.antlr.v4.runtime.atn.ATNConfigSet,int)>(r6, r22, r23, i0);	interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i0);	i7 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(org.antlr.v4.runtime.atn.ATNConfigSet,org.antlr.v4.runtime.ParserRuleContext)>(r23, r22);	if i7 == 0 goto throw r25;	throw r25
;block_num 6