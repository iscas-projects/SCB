(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2367 0)
(declare-sort var423 0)
(declare-sort var1903 0)
(declare-sort var2166 0)
(declare-sort var1353 0)
(declare-sort var1410 0)
(declare-sort var2011 0)
(declare-sort var1257 0)
(declare-sort var845 0)
(declare-sort var2033 0)
(declare-sort var1403 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var845) String)
(declare-fun cast-from-var2166-to-var845 (var2166) var845)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2011 String) void)
(declare-fun var2033_seek/-1872436025 (var2033 Int) void)
(declare-fun cast-from-var1353-to-var2033 (var1353) var2033)
(declare-fun var2033_LA/461575771 (var2033 Int) Int)
(declare-fun computeReachSet/727507833 (var2367 var2166 Int Bool) var2166)
(declare-fun noViableAlt/1945165783 (var2367 var1353 var1410 var2166 Int) var1403)
(declare-fun getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282 (var2367 var2166 var1410) Int)
(declare-const null-var2367 var2367)
(declare-const null-var423 var423)
(declare-const null-var1903 var1903)
(declare-const null-var2166 var2166)
(declare-const null-var1353 var1353)
(declare-const null-Int Int)
(declare-const null-var1410 var1410)
(declare-const var2367-debug Bool)
(declare-const var1257-out var2011)
(declare-const var921 var2367) ; Statement: r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var921 null-var2367)))
(declare-const var1718 var423) ; Statement: r10 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var1718 null-var423)))
(declare-const var1385 var1903) ; Statement: r11 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var1385 null-var1903)))
(declare-const var127 var2166) ; Statement: r2 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var127 null-var2166)))
(declare-const var3680 var1353) ; Statement: r6 := @parameter3: com.github.jknack.handlebars.internal.antlr.TokenStream 
(assert (not (= var3680 null-var1353)))
(declare-const var3890 Int) ; Statement: i0 := @parameter4: int 
(assert (not (= var3890 null-Int)))
(declare-const var1226 var1410) ; Statement: r22 := @parameter5: com.github.jknack.handlebars.internal.antlr.ParserRuleContext 
(assert (not (= var1226 null-var1410)))
(define-const var3411 Bool var2367-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var3411 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2016 var2011 var1257-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var2210 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2210)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2210!1 String)
(assert (= var2210!1 ""))
(assert true)
(define-const var2906 String (append/672562846 var2210!1 "execATNWithFullContext ")) ; Statement: $r3 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATNWithFullContext ") 
(declare-const var2210!2 String)
(assert (= var2210!2 (str.++ var2210!1 "execATNWithFullContext ")))
(assert true)
(define-const var169 String (append/-1031950772 var2906 (cast-from-var2166-to-var845 var127))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2906!1 String)
(assert (str.prefixof var2906 var2906!1))
(assert true)
(define-const var3293 String (toString/-2075883882 var169)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2016 var3293)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5) 

(declare-const var2016!1 var2011)
(declare-const var3293!1 String)
(assert true) ; Non Conditional
(define-const var2445 Bool (ite (= 1 0) true false)) ; Statement: z5 = 0 
(define-const var962 var2166 var127) ; Statement: r23 = r2 
;(assert (var2033_seek/-1872436025 (cast-from-var1353-to-var2033 var3680) var3890)) ; Statement: interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i0) 

(declare-const var3680!1 var1353)
(declare-const var3890!1 Int)
(define-const var2794 Int (var2033_LA/461575771 (cast-from-var1353-to-var2033 var3680!1) 1)) ; Statement: i8 = interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: int LA(int)>(1) 
(assert true) ; Non Conditional
(assert true)
(define-const var2951 var2166 (computeReachSet/727507833 var921 var962 var2794 (ite (= 1 1) true false))) ; Statement: $r24 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet computeReachSet(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int,boolean)>(r23, i8, 1) 
 ; Statement: if $r24 != null goto r26 = staticinvoke <com.github.jknack.handlebars.internal.antlr.atn.PredictionMode: java.util.Collection getConflictingAltSubsets(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r24) 
(assert (not (not (= var2951 null-var2166)))) ; Negate: Cond: $r24 != null  
(assert true)
(define-const var576 var1403 (noViableAlt/1945165783 var921 var3680!1 var1226 var962 var3890!1)) ; Statement: r25 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.NoViableAltException noViableAlt(com.github.jknack.handlebars.internal.antlr.TokenStream,com.github.jknack.handlebars.internal.antlr.ParserRuleContext,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int)>(r6, r22, r23, i0) 
;(assert (var2033_seek/-1872436025 (cast-from-var1353-to-var2033 var3680!1) var3890!1)) ; Statement: interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i0) 

(declare-const var3680!2 var1353)
(declare-const var3890!2 Int)
(assert true)
(define-const var1005 Int (getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282 var921 var962 var1226)) ; Statement: i7 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,com.github.jknack.handlebars.internal.antlr.ParserRuleContext)>(r23, r22) 
 ; Statement: if i7 == 0 goto throw r25 
(assert (= var1005 0)) ; Cond: i7 == 0 
 ; Statement: throw r25 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2166-to-var845=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2033_seek/-1872436025=([com.github.jknack.handlebars.internal.antlr.IntStream, int], void), cast-from-var1353-to-var2033=([com.github.jknack.handlebars.internal.antlr.TokenStream], com.github.jknack.handlebars.internal.antlr.IntStream), var2033_LA/461575771=([com.github.jknack.handlebars.internal.antlr.IntStream, int], int), computeReachSet/727507833=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, int, boolean], com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet), noViableAlt/1945165783=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.ParserRuleContext, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, int], com.github.jknack.handlebars.internal.antlr.NoViableAltException), getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, com.github.jknack.handlebars.internal.antlr.ParserRuleContext], int)}
; {var2367=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var921=r7, var423=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var1718=r10, var1903=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var1385=r11, var2166=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var127=r2, var1353=com.github.jknack.handlebars.internal.antlr.TokenStream, var3680=r6, var3890=i0, var1410=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var1226=r22, var3411=$z0, var2011=java.io.PrintStream, var1257=java.lang.System, var2016=$r1, var2210=$r27, var2906=$r3, var845=java.lang.Object, var169=$r4, var3293=$r5, var2445=z5, var962=r23, var2033=com.github.jknack.handlebars.internal.antlr.IntStream, var2794=i8, var2951=$r24, var1403=com.github.jknack.handlebars.internal.antlr.NoViableAltException, var576=r25, var1005=i7}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2367, r7=var921, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var423, r10=var1718, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var1903, r11=var1385, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var2166, r2=var127, com.github.jknack.handlebars.internal.antlr.TokenStream=var1353, r6=var3680, i0=var3890, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var1410, r22=var1226, $z0=var3411, java.io.PrintStream=var2011, java.lang.System=var1257, $r1=var2016, $r27=var2210, $r3=var2906, java.lang.Object=var845, $r4=var169, $r5=var3293, z5=var2445, r23=var962, com.github.jknack.handlebars.internal.antlr.IntStream=var2033, i8=var2794, $r24=var2951, com.github.jknack.handlebars.internal.antlr.NoViableAltException=var1403, r25=var576, i7=var1005}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r10 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r11 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	r2 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	r6 := @parameter3: com.github.jknack.handlebars.internal.antlr.TokenStream;	i0 := @parameter4: int;	r22 := @parameter5: com.github.jknack.handlebars.internal.antlr.ParserRuleContext;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out>;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATNWithFullContext ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r5);	z5 = 0;	r23 = r2;	interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i0);	i8 = interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: int LA(int)>(1);	$r24 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet computeReachSet(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int,boolean)>(r23, i8, 1);	if $r24 != null goto r26 = staticinvoke <com.github.jknack.handlebars.internal.antlr.atn.PredictionMode: java.util.Collection getConflictingAltSubsets(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r24);	r25 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.NoViableAltException noViableAlt(com.github.jknack.handlebars.internal.antlr.TokenStream,com.github.jknack.handlebars.internal.antlr.ParserRuleContext,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int)>(r6, r22, r23, i0);	interfaceinvoke r6.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i0);	i7 = virtualinvoke r7.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,com.github.jknack.handlebars.internal.antlr.ParserRuleContext)>(r23, r22);	if i7 == 0 goto throw r25;	throw r25
;block_num 6