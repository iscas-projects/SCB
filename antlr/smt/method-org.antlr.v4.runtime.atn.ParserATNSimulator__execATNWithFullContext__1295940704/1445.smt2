(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var2541 0)
(declare-sort var3281 0)
(declare-sort var2609 0)
(declare-sort var463 0)
(declare-sort var999 0)
(declare-sort var2516 0)
(declare-sort var819 0)
(declare-sort var495 0)
(declare-sort var1511 0)
(declare-sort var2699 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var495) String)
(declare-fun cast-from-var2609-to-var495 (var2609) var495)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2516 String) void)
(declare-fun var1511_seek/-362761590 (var1511 Int) void)
(declare-fun cast-from-var463-to-var1511 (var463) var1511)
(declare-fun var1511_LA/2117130104 (var1511 Int) Int)
(declare-fun computeReachSet/199758456 (var3671 var2609 Int Bool) var2609)
(declare-fun noViableAlt/-1144971256 (var3671 var463 var999 var2609 Int) var2699)
(declare-fun getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329 (var3671 var2609 var999) Int)
(declare-const null-var3671 var3671)
(declare-const null-var2541 var2541)
(declare-const null-var3281 var3281)
(declare-const null-var2609 var2609)
(declare-const null-var463 var463)
(declare-const null-Int Int)
(declare-const null-var999 var999)
(declare-const var3671-debug Bool)
(declare-const var819-out var2516)
(declare-const var1395 var3671) ; Statement: r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1395 null-var3671)))
(declare-const var1630 var2541) ; Statement: r10 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var1630 null-var2541)))
(declare-const var3767 var3281) ; Statement: r11 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var3767 null-var3281)))
(declare-const var3365 var2609) ; Statement: r2 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var3365 null-var2609)))
(declare-const var1740 var463) ; Statement: r6 := @parameter3: org.antlr.v4.runtime.TokenStream 
(assert (not (= var1740 null-var463)))
(declare-const var3746 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var3746 null-Int)))
(declare-const var283 var999) ; Statement: r22 := @parameter5: org.antlr.v4.runtime.ParserRuleContext 
(assert (not (= var283 null-var999)))
(define-const var2564 Bool var3671-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var2564 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1216 var2516 var819-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1211 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1211)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1211!1 String)
(assert (= var1211!1 ""))
(assert true)
(define-const var3512 String (append/672562846 var1211!1 "execATNWithFullContext ")) ; Statement: $r3 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATNWithFullContext ") 
(declare-const var1211!2 String)
(assert (= var1211!2 (str.++ var1211!1 "execATNWithFullContext ")))
(assert true)
(define-const var1920 String (append/-1031950772 var3512 (cast-from-var2609-to-var495 var3365))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3512!1 String)
(assert (str.prefixof var3512 var3512!1))
(assert true)
(define-const var706 String (toString/-2075883882 var1920)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1216 var706)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var1216!1 var2516)
(declare-const var706!1 String)
(assert true) ; Non Conditional
(define-const var2910 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var350 var2609 var3365) ; Statement: r23 = r2 
;(assert (var1511_seek/-362761590 (cast-from-var463-to-var1511 var1740) var3746)) ; Statement: interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i0) 

(declare-const var1740!1 var463)
(declare-const var3746!1 Int)
(define-const var2536 Int (var1511_LA/2117130104 (cast-from-var463-to-var1511 var1740!1) 1)) ; Statement: i8 = interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: int LA(int)>(1) 
(assert true) ; Non Conditional
(assert true)
(define-const var2624 var2609 (computeReachSet/199758456 var1395 var350 var2536 (ite (= 1 1) true false))) ; Statement: $r24 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATNConfigSet computeReachSet(org.antlr.v4.runtime.atn.ATNConfigSet,int,boolean)>(r23, i8, 1) 
 ; Statement: if $r24 != null goto r26 = staticinvoke <org.antlr.v4.runtime.atn.PredictionMode: java.util.Collection getConflictingAltSubsets(org.antlr.v4.runtime.atn.ATNConfigSet)>($r24) 
(assert (not (not (= var2624 null-var2609)))) ; Negate: Cond: $r24 != null  
(assert true)
(define-const var3153 var2699 (noViableAlt/-1144971256 var1395 var1740!1 var283 var350 var3746!1)) ; Statement: r25 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.NoViableAltException noViableAlt(org.antlr.v4.runtime.TokenStream,org.antlr.v4.runtime.ParserRuleContext,org.antlr.v4.runtime.atn.ATNConfigSet,int)>(r6, r22, r23, i0) 
;(assert (var1511_seek/-362761590 (cast-from-var463-to-var1511 var1740!1) var3746!1)) ; Statement: interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i0) 

(declare-const var1740!2 var463)
(declare-const var3746!2 Int)
(assert true)
(define-const var3969 Int (getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329 var1395 var350 var283)) ; Statement: i7 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(org.antlr.v4.runtime.atn.ATNConfigSet,org.antlr.v4.runtime.ParserRuleContext)>(r23, r22) 
 ; Statement: if i7 == 0 goto throw r25 
(assert (not (= var3969 0))) ; Negate: Cond: i7 == 0  
 ; Statement: return i7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2609-to-var495=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var1511_seek/-362761590=([org.antlr.v4.runtime.IntStream, int], void), cast-from-var463-to-var1511=([org.antlr.v4.runtime.TokenStream], org.antlr.v4.runtime.IntStream), var1511_LA/2117130104=([org.antlr.v4.runtime.IntStream, int], int), computeReachSet/199758456=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.atn.ATNConfigSet, int, boolean], org.antlr.v4.runtime.atn.ATNConfigSet), noViableAlt/-1144971256=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.ParserRuleContext, org.antlr.v4.runtime.atn.ATNConfigSet, int], org.antlr.v4.runtime.NoViableAltException), getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.atn.ATNConfigSet, org.antlr.v4.runtime.ParserRuleContext], int)}
; {var3671=org.antlr.v4.runtime.atn.ParserATNSimulator, var1395=r7, var2541=org.antlr.v4.runtime.dfa.DFA, var1630=r10, var3281=org.antlr.v4.runtime.dfa.DFAState, var3767=r11, var2609=org.antlr.v4.runtime.atn.ATNConfigSet, var3365=r2, var463=org.antlr.v4.runtime.TokenStream, var1740=r6, var3746=i0, var999=org.antlr.v4.runtime.ParserRuleContext, var283=r22, var2564=$z0, var2516=java.io.PrintStream, var819=java.lang.System, var1216=$r1, var1211=$r27, var3512=$r3, var495=java.lang.Object, var1920=$r4, var706=$r5, var2910=z5, var350=r23, var1511=org.antlr.v4.runtime.IntStream, var2536=i8, var2624=$r24, var2699=org.antlr.v4.runtime.NoViableAltException, var3153=r25, var3969=i7}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3671, r7=var1395, org.antlr.v4.runtime.dfa.DFA=var2541, r10=var1630, org.antlr.v4.runtime.dfa.DFAState=var3281, r11=var3767, org.antlr.v4.runtime.atn.ATNConfigSet=var2609, r2=var3365, org.antlr.v4.runtime.TokenStream=var463, r6=var1740, i0=var3746, org.antlr.v4.runtime.ParserRuleContext=var999, r22=var283, $z0=var2564, java.io.PrintStream=var2516, java.lang.System=var819, $r1=var1216, $r27=var1211, $r3=var3512, java.lang.Object=var495, $r4=var1920, $r5=var706, z5=var2910, r23=var350, org.antlr.v4.runtime.IntStream=var1511, i8=var2536, $r24=var2624, org.antlr.v4.runtime.NoViableAltException=var2699, r25=var3153, i7=var3969}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r10 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r11 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	r2 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	r6 := @parameter3: org.antlr.v4.runtime.TokenStream;	i0 := @parameter4: int;	r22 := @parameter5: org.antlr.v4.runtime.ParserRuleContext;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out>;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATNWithFullContext ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	z5 = 0;	r23 = r2;	interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i0);	i8 = interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: int LA(int)>(1);	$r24 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATNConfigSet computeReachSet(org.antlr.v4.runtime.atn.ATNConfigSet,int,boolean)>(r23, i8, 1);	if $r24 != null goto r26 = staticinvoke <org.antlr.v4.runtime.atn.PredictionMode: java.util.Collection getConflictingAltSubsets(org.antlr.v4.runtime.atn.ATNConfigSet)>($r24);	r25 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.NoViableAltException noViableAlt(org.antlr.v4.runtime.TokenStream,org.antlr.v4.runtime.ParserRuleContext,org.antlr.v4.runtime.atn.ATNConfigSet,int)>(r6, r22, r23, i0);	interfaceinvoke r6.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i0);	i7 = virtualinvoke r7.<org.antlr.v4.runtime.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(org.antlr.v4.runtime.atn.ATNConfigSet,org.antlr.v4.runtime.ParserRuleContext)>(r23, r22);	if i7 == 0 goto throw r25;	return i7
;block_num 6