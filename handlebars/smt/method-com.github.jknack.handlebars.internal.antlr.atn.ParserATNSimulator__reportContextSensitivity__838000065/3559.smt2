(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var411 0)
(declare-sort var2696 0)
(declare-sort var3745 0)
(declare-sort var2128 0)
(declare-sort var1365 0)
(declare-sort var1312 0)
(declare-sort var3541 0)
(declare-sort var853 0)
(declare-sort var3112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2128_of/1114852800 (Int Int) var2128)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/1715855536 (var2696) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var3541) String)
(declare-fun cast-from-var3745-to-var3541 (var3745) var3541)
(declare-fun parser/310440123 (var411) var853)
(declare-fun getTokenStream/1024418418 (var853) var3112)
(declare-fun var3112_getText/1244185151 (var3112 var2128) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1365 String) void)
(declare-const null-var411 var411)
(declare-const null-var2696 var2696)
(declare-const null-Int Int)
(declare-const null-var3745 var3745)
(declare-const var411-debug Bool)
(declare-const var411-retry_debug Bool)
(declare-const var1312-out var1365)
(declare-const null-var853 var853)
(declare-const var1805 var411) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var1805 null-var411)))
(declare-const var70 var2696) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var70 null-var2696)))
(declare-const var1414 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1414 null-Int)))
(declare-const var3819 var3745) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var3819 null-var3745)))
(declare-const var758 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var758 null-Int)))
(declare-const var1123 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var1123 null-Int)))
(define-const var2868 Bool var411-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var2868 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1711 Bool var411-retry_debug) ; Statement: $z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (not (= (ite var1711 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2749 var2128 (var2128_of/1114852800 var758 var1123)) ; Statement: $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(define-const var1798 var1365 var1312-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1488 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1488)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1488!1 String)
(assert (= var1488!1 ""))
(assert true)
(define-const var2034 String (append/672562846 var1488!1 "reportContextSensitivity decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=") 
(declare-const var1488!2 String)
(assert (= var1488!2 (str.++ var1488!1 "reportContextSensitivity decision=")))
(define-const var1630 Int (decision/1715855536 var70)) ; Statement: $i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision> 
(assert true)
(define-const var3163 String (append/-1001720160 var2034 var1630)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2034!1 String)
(assert (str.prefixof var2034 var2034!1))
(assert true)
(define-const var871 String (append/672562846 var3163 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3163!1 String)
(assert (= var3163!1 (str.++ var3163 ":")))
(assert true)
(define-const var3186 String (append/-1031950772 var871 (cast-from-var3745-to-var3541 var3819))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var871!1 String)
(assert (str.prefixof var871 var871!1))
(assert true)
(define-const var3403 String (append/672562846 var3186 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var3186!1 String)
(assert (= var3186!1 (str.++ var3186 ", input=")))
(define-const var703 var853 (parser/310440123 var1805)) ; Statement: $r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var1064 var3112 (getTokenStream/1024418418 var703)) ; Statement: $r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>() 
(define-const var1456 String (var3112_getText/1244185151 var1064 var2749)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r18) 
(assert true)
(define-const var1521 String (append/672562846 var3403 var1456)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3403!1 String)
(assert (= var3403!1 (str.++ var3403 var1456)))
(assert true)
(define-const var1506 String (toString/-2075883882 var1521)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1798 var1506)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1798!1 var1365)
(declare-const var1506!1 String)
(assert true) ; Non Conditional
(define-const var3555 var853 (parser/310440123 var1805)) ; Statement: $r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r19 == null goto return 
(assert (= var3555 null-var853)) ; Cond: $r19 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2128_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/1715855536=([com.github.jknack.handlebars.internal.antlr.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3745-to-var3541=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getTokenStream/1024418418=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var3112_getText/1244185151=([com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var411=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var1805=r8, var2696=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var70=r2, var1414=i3, var3745=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var3819=r5, var758=i0, var1123=i1, var2868=$z0, var1711=$z1, var2128=com.github.jknack.handlebars.internal.antlr.misc.Interval, var2749=$r18, var1365=java.io.PrintStream, var1312=java.lang.System, var1798=$r1, var1488=$r0, var2034=$r3, var1630=$i2, var3163=$r4, var871=$r6, var3541=java.lang.Object, var3186=$r7, var3403=$r12, var853=com.github.jknack.handlebars.internal.antlr.Parser, var703=$r9, var3112=com.github.jknack.handlebars.internal.antlr.TokenStream, var1064=$r10, var1456=$r11, var1521=$r13, var1506=$r14, var3555=$r19}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var411, r8=var1805, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var2696, r2=var70, i3=var1414, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var3745, r5=var3819, i0=var758, i1=var1123, $z0=var2868, $z1=var1711, com.github.jknack.handlebars.internal.antlr.misc.Interval=var2128, $r18=var2749, java.io.PrintStream=var1365, java.lang.System=var1312, $r1=var1798, $r0=var1488, $r3=var2034, $i2=var1630, $r4=var3163, $r6=var871, java.lang.Object=var3541, $r7=var3186, $r12=var3403, com.github.jknack.handlebars.internal.antlr.Parser=var853, $r9=var703, com.github.jknack.handlebars.internal.antlr.TokenStream=var3112, $r10=var1064, $r11=var1456, $r13=var1521, $r14=var1506, $r19=var3555}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	i3 := @parameter1: int;	r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=");	$i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r18);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r19 == null goto return;	return
;block_num 5