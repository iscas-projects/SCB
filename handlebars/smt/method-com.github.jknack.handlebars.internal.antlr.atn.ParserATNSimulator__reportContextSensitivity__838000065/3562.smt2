(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2301 0)
(declare-sort var1611 0)
(declare-sort var127 0)
(declare-sort var2940 0)
(declare-sort var2480 0)
(declare-sort var1721 0)
(declare-sort var868 0)
(declare-sort var2836 0)
(declare-sort var2251 0)
(declare-sort var2699 0)
(declare-sort var1328 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2940_of/1114852800 (Int Int) var2940)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/1715855536 (var1611) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var868) String)
(declare-fun cast-from-var127-to-var868 (var127) var868)
(declare-fun parser/310440123 (var2301) var2836)
(declare-fun getTokenStream/1024418418 (var2836) var2251)
(declare-fun var2251_getText/1244185151 (var2251 var2940) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2480 String) void)
(declare-fun getErrorListenerDispatch/1243680242 (var1328) var2699)
(declare-fun cast-from-var2836-to-var1328 (var2836) var1328)
(declare-fun var2699_reportContextSensitivity/153253860 (var2699 var2836 var1611 Int Int Int var127) void)
(declare-const null-var2301 var2301)
(declare-const null-var1611 var1611)
(declare-const null-Int Int)
(declare-const null-var127 var127)
(declare-const var2301-debug Bool)
(declare-const var2301-retry_debug Bool)
(declare-const var1721-out var2480)
(declare-const null-var2836 var2836)
(declare-const var2324 var2301) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2324 null-var2301)))
(declare-const var3666 var1611) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var3666 null-var1611)))
(declare-const var1083 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1083 null-Int)))
(declare-const var710 var127) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var710 null-var127)))
(declare-const var3720 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3720 null-Int)))
(declare-const var604 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var604 null-Int)))
(define-const var1509 Bool var2301-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var1509 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3563 Bool var2301-retry_debug) ; Statement: $z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (not (= (ite var3563 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2115 var2940 (var2940_of/1114852800 var3720 var604)) ; Statement: $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(define-const var817 var2480 var1721-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var27 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var27)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var27!1 String)
(assert (= var27!1 ""))
(assert true)
(define-const var1109 String (append/672562846 var27!1 "reportContextSensitivity decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=") 
(declare-const var27!2 String)
(assert (= var27!2 (str.++ var27!1 "reportContextSensitivity decision=")))
(define-const var491 Int (decision/1715855536 var3666)) ; Statement: $i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision> 
(assert true)
(define-const var2851 String (append/-1001720160 var1109 var491)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var1109!1 String)
(assert (str.prefixof var1109 var1109!1))
(assert true)
(define-const var2074 String (append/672562846 var2851 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2851!1 String)
(assert (= var2851!1 (str.++ var2851 ":")))
(assert true)
(define-const var2507 String (append/-1031950772 var2074 (cast-from-var127-to-var868 var710))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var2074!1 String)
(assert (str.prefixof var2074 var2074!1))
(assert true)
(define-const var2424 String (append/672562846 var2507 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var2507!1 String)
(assert (= var2507!1 (str.++ var2507 ", input=")))
(define-const var3477 var2836 (parser/310440123 var2324)) ; Statement: $r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var3620 var2251 (getTokenStream/1024418418 var3477)) ; Statement: $r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>() 
(define-const var1465 String (var2251_getText/1244185151 var3620 var2115)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r18) 
(assert true)
(define-const var2290 String (append/672562846 var2424 var1465)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2424!1 String)
(assert (= var2424!1 (str.++ var2424 var1465)))
(assert true)
(define-const var196 String (toString/-2075883882 var2290)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var817 var196)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var817!1 var2480)
(declare-const var196!1 String)
(assert true) ; Non Conditional
(define-const var485 var2836 (parser/310440123 var2324)) ; Statement: $r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r19 == null goto return 
(assert (not (= var485 null-var2836))) ; Negate: Cond: $r19 == null  
(define-const var3420 var2836 (parser/310440123 var2324)) ; Statement: $r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var1201 var2699 (getErrorListenerDispatch/1243680242 (cast-from-var2836-to-var1328 var3420))) ; Statement: $r17 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var2180 var2836 (parser/310440123 var2324)) ; Statement: $r16 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
;(assert (var2699_reportContextSensitivity/153253860 var1201 var2180 var3666 var3720 var604 var1083 var710)) ; Statement: interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportContextSensitivity(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,int,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5) 

(declare-const var1201!1 var2699)
(declare-const var2180!1 var2836)
(declare-const var3666!1 var1611)
(declare-const var3720!1 Int)
(declare-const var604!1 Int)
(declare-const var1083!1 Int)
(declare-const var710!1 var127)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2940_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/1715855536=([com.github.jknack.handlebars.internal.antlr.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var127-to-var868=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getTokenStream/1024418418=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var2251_getText/1244185151=([com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getErrorListenerDispatch/1243680242=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener), cast-from-var2836-to-var1328=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), var2699_reportContextSensitivity/153253860=([com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, com.github.jknack.handlebars.internal.antlr.Parser, com.github.jknack.handlebars.internal.antlr.dfa.DFA, int, int, int, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], void)}
; {var2301=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2324=r8, var1611=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var3666=r2, var1083=i3, var127=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var710=r5, var3720=i0, var604=i1, var1509=$z0, var3563=$z1, var2940=com.github.jknack.handlebars.internal.antlr.misc.Interval, var2115=$r18, var2480=java.io.PrintStream, var1721=java.lang.System, var817=$r1, var27=$r0, var1109=$r3, var491=$i2, var2851=$r4, var2074=$r6, var868=java.lang.Object, var2507=$r7, var2424=$r12, var2836=com.github.jknack.handlebars.internal.antlr.Parser, var3477=$r9, var2251=com.github.jknack.handlebars.internal.antlr.TokenStream, var3620=$r10, var1465=$r11, var2290=$r13, var196=$r14, var485=$r19, var3420=$r15, var2699=com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, var1328=com.github.jknack.handlebars.internal.antlr.Recognizer, var1201=$r17, var2180=$r16}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2301, r8=var2324, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var1611, r2=var3666, i3=var1083, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var127, r5=var710, i0=var3720, i1=var604, $z0=var1509, $z1=var3563, com.github.jknack.handlebars.internal.antlr.misc.Interval=var2940, $r18=var2115, java.io.PrintStream=var2480, java.lang.System=var1721, $r1=var817, $r0=var27, $r3=var1109, $i2=var491, $r4=var2851, $r6=var2074, java.lang.Object=var868, $r7=var2507, $r12=var2424, com.github.jknack.handlebars.internal.antlr.Parser=var2836, $r9=var3477, com.github.jknack.handlebars.internal.antlr.TokenStream=var2251, $r10=var3620, $r11=var1465, $r13=var2290, $r14=var196, $r19=var485, $r15=var3420, com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener=var2699, com.github.jknack.handlebars.internal.antlr.Recognizer=var1328, $r17=var1201, $r16=var2180}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	i3 := @parameter1: int;	r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=");	$i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r18);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r19 == null goto return;	$r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r17 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>();	$r16 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportContextSensitivity(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,int,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5);	return
;block_num 6