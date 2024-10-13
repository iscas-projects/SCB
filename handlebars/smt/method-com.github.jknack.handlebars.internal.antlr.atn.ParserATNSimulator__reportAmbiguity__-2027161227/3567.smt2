(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2221 0)
(declare-sort var3243 0)
(declare-sort var1175 0)
(declare-sort var674 0)
(declare-sort var1048 0)
(declare-sort var3863 0)
(declare-sort var1127 0)
(declare-sort var3612 0)
(declare-sort var2623 0)
(declare-sort var362 0)
(declare-sort var2489 0)
(declare-sort var1453 0)
(declare-sort var949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3863_of/1114852800 (Int Int) var3863)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2623) String)
(declare-fun cast-from-var674-to-var2623 (var674) var2623)
(declare-fun cast-from-var1048-to-var2623 (var1048) var2623)
(declare-fun parser/310440123 (var2221) var362)
(declare-fun getTokenStream/1024418418 (var362) var2489)
(declare-fun var2489_getText/1244185151 (var2489 var3863) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1127 String) void)
(declare-fun getErrorListenerDispatch/1243680242 (var949) var1453)
(declare-fun cast-from-var362-to-var949 (var362) var949)
(declare-fun var1453_reportAmbiguity/-381263513 (var1453 var362 var3243 Int Int Bool var674 var1048) void)
(declare-const null-var2221 var2221)
(declare-const null-var3243 var3243)
(declare-const null-var1175 var1175)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var674 var674)
(declare-const null-var1048 var1048)
(declare-const var2221-debug Bool)
(declare-const var3612-out var1127)
(declare-const null-var362 var362)
(declare-const var2534 var2221) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2534 null-var2221)))
(declare-const var542 var3243) ; Statement: r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var542 null-var3243)))
(declare-const var3949 var1175) ; Statement: r20 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var3949 null-var1175)))
(declare-const var1481 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1481 null-Int)))
(declare-const var3356 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3356 null-Int)))
(declare-const var2485 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2485 null-Bool)))
(declare-const var2510 var674) ; Statement: r2 := @parameter5: java.util.BitSet 
(assert (not (= var2510 null-var674)))
(declare-const var1177 var1048) ; Statement: r5 := @parameter6: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var1177 null-var1048)))
(define-const var337 Bool var2221-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var337 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2977 var3863 (var3863_of/1114852800 var1481 var3356)) ; Statement: $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(define-const var2303 var1127 var3612-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1391 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1391)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1391!1 String)
(assert (= var1391!1 ""))
(assert true)
(define-const var891 String (append/672562846 var1391!1 "reportAmbiguity ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ") 
(declare-const var1391!2 String)
(assert (= var1391!2 (str.++ var1391!1 "reportAmbiguity ")))
(assert true)
(define-const var2653 String (append/-1031950772 var891 (cast-from-var674-to-var2623 var2510))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var891!1 String)
(assert (str.prefixof var891 var891!1))
(assert true)
(define-const var2907 String (append/672562846 var2653 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2653!1 String)
(assert (= var2653!1 (str.++ var2653 ":")))
(assert true)
(define-const var1114 String (append/-1031950772 var2907 (cast-from-var1048-to-var2623 var1177))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var2907!1 String)
(assert (str.prefixof var2907 var2907!1))
(assert true)
(define-const var2212 String (append/672562846 var1114 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var1114!1 String)
(assert (= var1114!1 (str.++ var1114 ", input=")))
(define-const var3368 var362 (parser/310440123 var2534)) ; Statement: $r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var2264 var2489 (getTokenStream/1024418418 var3368)) ; Statement: $r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>() 
(define-const var2602 String (var2489_getText/1244185151 var2264 var2977)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19) 
(assert true)
(define-const var2713 String (append/672562846 var2212 var2602)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2212!1 String)
(assert (= var2212!1 (str.++ var2212 var2602)))
(assert true)
(define-const var202 String (toString/-2075883882 var2713)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2303 var202)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var2303!1 var1127)
(declare-const var202!1 String)
(assert true) ; Non Conditional
(define-const var2673 var362 (parser/310440123 var2534)) ; Statement: $r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r21 == null goto return 
(assert (not (= var2673 null-var362))) ; Negate: Cond: $r21 == null  
(define-const var780 var362 (parser/310440123 var2534)) ; Statement: $r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var94 var1453 (getErrorListenerDispatch/1243680242 (cast-from-var362-to-var949 var780))) ; Statement: $r18 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var531 var362 (parser/310440123 var2534)) ; Statement: $r17 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
;(assert (var1453_reportAmbiguity/-381263513 var94 var531 var542 var1481 var3356 var2485 var2510 var1177)) ; Statement: interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportAmbiguity(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,boolean,java.util.BitSet,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r17, r16, i0, i1, z1, r2, r5) 

(declare-const var94!1 var1453)
(declare-const var531!1 var362)
(declare-const var542!1 var3243)
(declare-const var1481!1 Int)
(declare-const var3356!1 Int)
(declare-const var2485!1 Bool)
(declare-const var2510!1 var674)
(declare-const var1177!1 var1048)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3863_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var674-to-var2623=([java.util.BitSet], java.lang.Object), cast-from-var1048-to-var2623=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getTokenStream/1024418418=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var2489_getText/1244185151=([com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getErrorListenerDispatch/1243680242=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener), cast-from-var362-to-var949=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), var1453_reportAmbiguity/-381263513=([com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, com.github.jknack.handlebars.internal.antlr.Parser, com.github.jknack.handlebars.internal.antlr.dfa.DFA, int, int, boolean, java.util.BitSet, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], void)}
; {var2221=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2534=r8, var3243=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var542=r16, var1175=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var3949=r20, var1481=i0, var3356=i1, var2485=z1, var674=java.util.BitSet, var2510=r2, var1048=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var1177=r5, var337=$z0, var3863=com.github.jknack.handlebars.internal.antlr.misc.Interval, var2977=$r19, var1127=java.io.PrintStream, var3612=java.lang.System, var2303=$r1, var1391=$r0, var891=$r3, var2623=java.lang.Object, var2653=$r4, var2907=$r6, var1114=$r7, var2212=$r12, var362=com.github.jknack.handlebars.internal.antlr.Parser, var3368=$r9, var2489=com.github.jknack.handlebars.internal.antlr.TokenStream, var2264=$r10, var2602=$r11, var2713=$r13, var202=$r14, var2673=$r21, var780=$r15, var1453=com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, var949=com.github.jknack.handlebars.internal.antlr.Recognizer, var94=$r18, var531=$r17}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2221, r8=var2534, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var3243, r16=var542, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var1175, r20=var3949, i0=var1481, i1=var3356, z1=var2485, java.util.BitSet=var674, r2=var2510, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var1048, r5=var1177, $z0=var337, com.github.jknack.handlebars.internal.antlr.misc.Interval=var3863, $r19=var2977, java.io.PrintStream=var1127, java.lang.System=var3612, $r1=var2303, $r0=var1391, $r3=var891, java.lang.Object=var2623, $r4=var2653, $r6=var2907, $r7=var1114, $r12=var2212, com.github.jknack.handlebars.internal.antlr.Parser=var362, $r9=var3368, com.github.jknack.handlebars.internal.antlr.TokenStream=var2489, $r10=var2264, $r11=var2602, $r13=var2713, $r14=var202, $r21=var2673, $r15=var780, com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener=var1453, com.github.jknack.handlebars.internal.antlr.Recognizer=var949, $r18=var94, $r17=var531}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r20 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	i1 := @parameter3: int;	z1 := @parameter4: boolean;	r2 := @parameter5: java.util.BitSet;	r5 := @parameter6: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAmbiguity ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r21 == null goto return;	$r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r18 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>();	$r17 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportAmbiguity(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,boolean,java.util.BitSet,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r17, r16, i0, i1, z1, r2, r5);	return
;block_num 5