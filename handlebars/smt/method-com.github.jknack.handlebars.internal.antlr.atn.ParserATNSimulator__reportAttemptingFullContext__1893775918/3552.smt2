(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2514 0)
(declare-sort var2318 0)
(declare-sort var1022 0)
(declare-sort var2367 0)
(declare-sort var1906 0)
(declare-sort var493 0)
(declare-sort var194 0)
(declare-sort var3411 0)
(declare-sort var972 0)
(declare-sort var528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1906_of/1114852800 (Int Int) var1906)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/1715855536 (var2318) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var3411) String)
(declare-fun cast-from-var2367-to-var3411 (var2367) var3411)
(declare-fun parser/310440123 (var2514) var972)
(declare-fun getTokenStream/1024418418 (var972) var528)
(declare-fun var528_getText/1244185151 (var528 var1906) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var493 String) void)
(declare-const null-var2514 var2514)
(declare-const null-var2318 var2318)
(declare-const null-var1022 var1022)
(declare-const null-var2367 var2367)
(declare-const null-Int Int)
(declare-const var2514-debug Bool)
(declare-const var194-out var493)
(declare-const null-var972 var972)
(declare-const var196 var2514) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var196 null-var2514)))
(declare-const var2111 var2318) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var2111 null-var2318)))
(declare-const var908 var1022) ; Statement: r16 := @parameter1: java.util.BitSet 
(assert (not (= var908 null-var1022)))
(declare-const var1283 var2367) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var1283 null-var2367)))
(declare-const var670 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var670 null-Int)))
(declare-const var265 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var265 null-Int)))
(define-const var3159 Bool var2514-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var3159 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2955 var1906 (var1906_of/1114852800 var670 var265)) ; Statement: $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(define-const var1378 var493 var194-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var110 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var110)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var110!1 String)
(assert (= var110!1 ""))
(assert true)
(define-const var54 String (append/672562846 var110!1 "reportAttemptingFullContext decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=") 
(declare-const var110!2 String)
(assert (= var110!2 (str.++ var110!1 "reportAttemptingFullContext decision=")))
(define-const var3249 Int (decision/1715855536 var2111)) ; Statement: $i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision> 
(assert true)
(define-const var1413 String (append/-1001720160 var54 var3249)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var54!1 String)
(assert (str.prefixof var54 var54!1))
(assert true)
(define-const var1329 String (append/672562846 var1413 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1413!1 String)
(assert (= var1413!1 (str.++ var1413 ":")))
(assert true)
(define-const var3904 String (append/-1031950772 var1329 (cast-from-var2367-to-var3411 var1283))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1329!1 String)
(assert (str.prefixof var1329 var1329!1))
(assert true)
(define-const var2506 String (append/672562846 var3904 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var3904!1 String)
(assert (= var3904!1 (str.++ var3904 ", input=")))
(define-const var539 var972 (parser/310440123 var196)) ; Statement: $r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var3238 var528 (getTokenStream/1024418418 var539)) ; Statement: $r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>() 
(define-const var800 String (var528_getText/1244185151 var3238 var2955)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19) 
(assert true)
(define-const var615 String (append/672562846 var2506 var800)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2506!1 String)
(assert (= var2506!1 (str.++ var2506 var800)))
(assert true)
(define-const var2358 String (toString/-2075883882 var615)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1378 var2358)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1378!1 var493)
(declare-const var2358!1 String)
(assert true) ; Non Conditional
(define-const var1385 var972 (parser/310440123 var196)) ; Statement: $r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r20 == null goto return 
(assert (= var1385 null-var972)) ; Cond: $r20 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1906_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/1715855536=([com.github.jknack.handlebars.internal.antlr.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2367-to-var3411=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getTokenStream/1024418418=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var528_getText/1244185151=([com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var2514=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var196=r8, var2318=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var2111=r2, var1022=java.util.BitSet, var908=r16, var2367=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var1283=r5, var670=i0, var265=i1, var3159=$z0, var1906=com.github.jknack.handlebars.internal.antlr.misc.Interval, var2955=$r19, var493=java.io.PrintStream, var194=java.lang.System, var1378=$r1, var110=$r0, var54=$r3, var3249=$i2, var1413=$r4, var1329=$r6, var3411=java.lang.Object, var3904=$r7, var2506=$r12, var972=com.github.jknack.handlebars.internal.antlr.Parser, var539=$r9, var528=com.github.jknack.handlebars.internal.antlr.TokenStream, var3238=$r10, var800=$r11, var615=$r13, var2358=$r14, var1385=$r20}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2514, r8=var196, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var2318, r2=var2111, java.util.BitSet=var1022, r16=var908, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var2367, r5=var1283, i0=var670, i1=var265, $z0=var3159, com.github.jknack.handlebars.internal.antlr.misc.Interval=var1906, $r19=var2955, java.io.PrintStream=var493, java.lang.System=var194, $r1=var1378, $r0=var110, $r3=var54, $i2=var3249, $r4=var1413, $r6=var1329, java.lang.Object=var3411, $r7=var3904, $r12=var2506, com.github.jknack.handlebars.internal.antlr.Parser=var972, $r9=var539, com.github.jknack.handlebars.internal.antlr.TokenStream=var528, $r10=var3238, $r11=var800, $r13=var615, $r14=var2358, $r20=var1385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r16 := @parameter1: java.util.BitSet;	r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=");	$i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r20 == null goto return;	return
;block_num 4