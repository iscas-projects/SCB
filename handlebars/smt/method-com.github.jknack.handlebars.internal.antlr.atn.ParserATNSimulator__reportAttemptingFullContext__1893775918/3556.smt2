(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2864 0)
(declare-sort var3111 0)
(declare-sort var498 0)
(declare-sort var1463 0)
(declare-sort var3765 0)
(declare-sort var1983 0)
(declare-sort var3375 0)
(declare-sort var3359 0)
(declare-sort var1696 0)
(declare-sort var2086 0)
(declare-sort var2314 0)
(declare-sort var3933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3765_of/1114852800 (Int Int) var3765)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/1715855536 (var3111) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var3359) String)
(declare-fun cast-from-var1463-to-var3359 (var1463) var3359)
(declare-fun parser/310440123 (var2864) var1696)
(declare-fun getTokenStream/1024418418 (var1696) var2086)
(declare-fun var2086_getText/1244185151 (var2086 var3765) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1983 String) void)
(declare-fun getErrorListenerDispatch/1243680242 (var3933) var2314)
(declare-fun cast-from-var1696-to-var3933 (var1696) var3933)
(declare-fun var2314_reportAttemptingFullContext/1702232109 (var2314 var1696 var3111 Int Int var498 var1463) void)
(declare-const null-var2864 var2864)
(declare-const null-var3111 var3111)
(declare-const null-var498 var498)
(declare-const null-var1463 var1463)
(declare-const null-Int Int)
(declare-const var2864-debug Bool)
(declare-const var2864-retry_debug Bool)
(declare-const var3375-out var1983)
(declare-const null-var1696 var1696)
(declare-const var689 var2864) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var689 null-var2864)))
(declare-const var2392 var3111) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var2392 null-var3111)))
(declare-const var2437 var498) ; Statement: r16 := @parameter1: java.util.BitSet 
(assert (not (= var2437 null-var498)))
(declare-const var1429 var1463) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var1429 null-var1463)))
(declare-const var1804 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1804 null-Int)))
(declare-const var1917 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var1917 null-Int)))
(define-const var3980 Bool var2864-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var3980 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3068 Bool var2864-retry_debug) ; Statement: $z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (not (= (ite var3068 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2908 var3765 (var3765_of/1114852800 var1804 var1917)) ; Statement: $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(define-const var3917 var1983 var3375-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3685 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3685)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3685!1 String)
(assert (= var3685!1 ""))
(assert true)
(define-const var2598 String (append/672562846 var3685!1 "reportAttemptingFullContext decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=") 
(declare-const var3685!2 String)
(assert (= var3685!2 (str.++ var3685!1 "reportAttemptingFullContext decision=")))
(define-const var3942 Int (decision/1715855536 var2392)) ; Statement: $i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision> 
(assert true)
(define-const var3353 String (append/-1001720160 var2598 var3942)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2598!1 String)
(assert (str.prefixof var2598 var2598!1))
(assert true)
(define-const var681 String (append/672562846 var3353 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3353!1 String)
(assert (= var3353!1 (str.++ var3353 ":")))
(assert true)
(define-const var1823 String (append/-1031950772 var681 (cast-from-var1463-to-var3359 var1429))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var681!1 String)
(assert (str.prefixof var681 var681!1))
(assert true)
(define-const var3610 String (append/672562846 var1823 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var1823!1 String)
(assert (= var1823!1 (str.++ var1823 ", input=")))
(define-const var2435 var1696 (parser/310440123 var689)) ; Statement: $r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var213 var2086 (getTokenStream/1024418418 var2435)) ; Statement: $r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>() 
(define-const var53 String (var2086_getText/1244185151 var213 var2908)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19) 
(assert true)
(define-const var43 String (append/672562846 var3610 var53)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3610!1 String)
(assert (= var3610!1 (str.++ var3610 var53)))
(assert true)
(define-const var1896 String (toString/-2075883882 var43)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3917 var1896)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var3917!1 var1983)
(declare-const var1896!1 String)
(assert true) ; Non Conditional
(define-const var918 var1696 (parser/310440123 var689)) ; Statement: $r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r20 == null goto return 
(assert (not (= var918 null-var1696))) ; Negate: Cond: $r20 == null  
(define-const var2920 var1696 (parser/310440123 var689)) ; Statement: $r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var1189 var2314 (getErrorListenerDispatch/1243680242 (cast-from-var1696-to-var3933 var2920))) ; Statement: $r18 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var741 var1696 (parser/310440123 var689)) ; Statement: $r17 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
;(assert (var2314_reportAttemptingFullContext/1702232109 var1189 var741 var2392 var1804 var1917 var2437 var1429)) ; Statement: interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportAttemptingFullContext(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,java.util.BitSet,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5) 

(declare-const var1189!1 var2314)
(declare-const var741!1 var1696)
(declare-const var2392!1 var3111)
(declare-const var1804!1 Int)
(declare-const var1917!1 Int)
(declare-const var2437!1 var498)
(declare-const var1429!1 var1463)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3765_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/1715855536=([com.github.jknack.handlebars.internal.antlr.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1463-to-var3359=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getTokenStream/1024418418=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var2086_getText/1244185151=([com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getErrorListenerDispatch/1243680242=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener), cast-from-var1696-to-var3933=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), var2314_reportAttemptingFullContext/1702232109=([com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, com.github.jknack.handlebars.internal.antlr.Parser, com.github.jknack.handlebars.internal.antlr.dfa.DFA, int, int, java.util.BitSet, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], void)}
; {var2864=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var689=r8, var3111=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var2392=r2, var498=java.util.BitSet, var2437=r16, var1463=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var1429=r5, var1804=i0, var1917=i1, var3980=$z0, var3068=$z1, var3765=com.github.jknack.handlebars.internal.antlr.misc.Interval, var2908=$r19, var1983=java.io.PrintStream, var3375=java.lang.System, var3917=$r1, var3685=$r0, var2598=$r3, var3942=$i2, var3353=$r4, var681=$r6, var3359=java.lang.Object, var1823=$r7, var3610=$r12, var1696=com.github.jknack.handlebars.internal.antlr.Parser, var2435=$r9, var2086=com.github.jknack.handlebars.internal.antlr.TokenStream, var213=$r10, var53=$r11, var43=$r13, var1896=$r14, var918=$r20, var2920=$r15, var2314=com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, var3933=com.github.jknack.handlebars.internal.antlr.Recognizer, var1189=$r18, var741=$r17}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2864, r8=var689, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var3111, r2=var2392, java.util.BitSet=var498, r16=var2437, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var1463, r5=var1429, i0=var1804, i1=var1917, $z0=var3980, $z1=var3068, com.github.jknack.handlebars.internal.antlr.misc.Interval=var3765, $r19=var2908, java.io.PrintStream=var1983, java.lang.System=var3375, $r1=var3917, $r0=var3685, $r3=var2598, $i2=var3942, $r4=var3353, $r6=var681, java.lang.Object=var3359, $r7=var1823, $r12=var3610, com.github.jknack.handlebars.internal.antlr.Parser=var1696, $r9=var2435, com.github.jknack.handlebars.internal.antlr.TokenStream=var2086, $r10=var213, $r11=var53, $r13=var43, $r14=var1896, $r20=var918, $r15=var2920, com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener=var2314, com.github.jknack.handlebars.internal.antlr.Recognizer=var3933, $r18=var1189, $r17=var741}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r16 := @parameter1: java.util.BitSet;	r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=");	$i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r20 == null goto return;	$r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r18 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>();	$r17 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportAttemptingFullContext(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,java.util.BitSet,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5);	return
;block_num 6