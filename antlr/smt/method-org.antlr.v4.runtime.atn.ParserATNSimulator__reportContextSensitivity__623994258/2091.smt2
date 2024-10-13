(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2464 0)
(declare-sort var616 0)
(declare-sort var3902 0)
(declare-sort var2084 0)
(declare-sort var1348 0)
(declare-sort var505 0)
(declare-sort var3854 0)
(declare-sort var1655 0)
(declare-sort var1563 0)
(declare-sort var3040 0)
(declare-sort var88 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2084_of/-1711527236 (Int Int) var2084)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/-2041177131 (var616) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var3854) String)
(declare-fun cast-from-var3902-to-var3854 (var3902) var3854)
(declare-fun parser/145254134 (var2464) var1655)
(declare-fun getTokenStream/-211092484 (var1655) var1563)
(declare-fun var1563_getText/1167499073 (var1563 var2084) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1348 String) void)
(declare-fun getErrorListenerDispatch/-1594005314 (var88) var3040)
(declare-fun cast-from-var1655-to-var88 (var1655) var88)
(declare-fun var3040_reportContextSensitivity/-1392569832 (var3040 var1655 var616 Int Int Int var3902) void)
(declare-const null-var2464 var2464)
(declare-const null-var616 var616)
(declare-const null-Int Int)
(declare-const null-var3902 var3902)
(declare-const var2464-debug Bool)
(declare-const var2464-retry_debug Bool)
(declare-const var505-out var1348)
(declare-const null-var1655 var1655)
(declare-const var1619 var2464) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1619 null-var2464)))
(declare-const var3751 var616) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var3751 null-var616)))
(declare-const var615 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var615 null-Int)))
(declare-const var43 var3902) ; Statement: r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var43 null-var3902)))
(declare-const var1332 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1332 null-Int)))
(declare-const var1061 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var1061 null-Int)))
(define-const var3339 Bool var2464-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var3339 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3662 Bool var2464-retry_debug) ; Statement: $z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (not (= (ite var3662 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3245 var2084 (var2084_of/-1711527236 var1332 var1061)) ; Statement: $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var1106 var1348 var505-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3767 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3767)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3767!1 String)
(assert (= var3767!1 ""))
(assert true)
(define-const var95 String (append/672562846 var3767!1 "reportContextSensitivity decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=") 
(declare-const var3767!2 String)
(assert (= var3767!2 (str.++ var3767!1 "reportContextSensitivity decision=")))
(define-const var883 Int (decision/-2041177131 var3751)) ; Statement: $i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision> 
(assert true)
(define-const var1499 String (append/-1001720160 var95 var883)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var95!1 String)
(assert (str.prefixof var95 var95!1))
(assert true)
(define-const var1708 String (append/672562846 var1499 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1499!1 String)
(assert (= var1499!1 (str.++ var1499 ":")))
(assert true)
(define-const var1706 String (append/-1031950772 var1708 (cast-from-var3902-to-var3854 var43))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1708!1 String)
(assert (str.prefixof var1708 var1708!1))
(assert true)
(define-const var2981 String (append/672562846 var1706 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var1706!1 String)
(assert (= var1706!1 (str.++ var1706 ", input=")))
(define-const var751 var1655 (parser/145254134 var1619)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var1629 var1563 (getTokenStream/-211092484 var751)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var1036 String (var1563_getText/1167499073 var1629 var3245)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r18) 
(assert true)
(define-const var1839 String (append/672562846 var2981 var1036)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2981!1 String)
(assert (= var2981!1 (str.++ var2981 var1036)))
(assert true)
(define-const var670 String (toString/-2075883882 var1839)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1106 var670)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1106!1 var1348)
(declare-const var670!1 String)
(assert true) ; Non Conditional
(define-const var1723 var1655 (parser/145254134 var1619)) ; Statement: $r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r19 == null goto return 
(assert (not (= var1723 null-var1655))) ; Negate: Cond: $r19 == null  
(define-const var633 var1655 (parser/145254134 var1619)) ; Statement: $r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var2887 var3040 (getErrorListenerDispatch/-1594005314 (cast-from-var1655-to-var88 var633))) ; Statement: $r17 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var517 var1655 (parser/145254134 var1619)) ; Statement: $r16 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
;(assert (var3040_reportContextSensitivity/-1392569832 var2887 var517 var3751 var1332 var1061 var615 var43)) ; Statement: interfaceinvoke $r17.<org.antlr.v4.runtime.ANTLRErrorListener: void reportContextSensitivity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,int,org.antlr.v4.runtime.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5) 

(declare-const var2887!1 var3040)
(declare-const var517!1 var1655)
(declare-const var3751!1 var616)
(declare-const var1332!1 Int)
(declare-const var1061!1 Int)
(declare-const var615!1 Int)
(declare-const var43!1 var3902)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2084_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/-2041177131=([org.antlr.v4.runtime.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3902-to-var3854=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var1563_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getErrorListenerDispatch/-1594005314=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.ANTLRErrorListener), cast-from-var1655-to-var88=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var3040_reportContextSensitivity/-1392569832=([org.antlr.v4.runtime.ANTLRErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA, int, int, int, org.antlr.v4.runtime.atn.ATNConfigSet], void)}
; {var2464=org.antlr.v4.runtime.atn.ParserATNSimulator, var1619=r8, var616=org.antlr.v4.runtime.dfa.DFA, var3751=r2, var615=i3, var3902=org.antlr.v4.runtime.atn.ATNConfigSet, var43=r5, var1332=i0, var1061=i1, var3339=$z0, var3662=$z1, var2084=org.antlr.v4.runtime.misc.Interval, var3245=$r18, var1348=java.io.PrintStream, var505=java.lang.System, var1106=$r1, var3767=$r0, var95=$r3, var883=$i2, var1499=$r4, var1708=$r6, var3854=java.lang.Object, var1706=$r7, var2981=$r12, var1655=org.antlr.v4.runtime.Parser, var751=$r9, var1563=org.antlr.v4.runtime.TokenStream, var1629=$r10, var1036=$r11, var1839=$r13, var670=$r14, var1723=$r19, var633=$r15, var3040=org.antlr.v4.runtime.ANTLRErrorListener, var88=org.antlr.v4.runtime.Recognizer, var2887=$r17, var517=$r16}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var2464, r8=var1619, org.antlr.v4.runtime.dfa.DFA=var616, r2=var3751, i3=var615, org.antlr.v4.runtime.atn.ATNConfigSet=var3902, r5=var43, i0=var1332, i1=var1061, $z0=var3339, $z1=var3662, org.antlr.v4.runtime.misc.Interval=var2084, $r18=var3245, java.io.PrintStream=var1348, java.lang.System=var505, $r1=var1106, $r0=var3767, $r3=var95, $i2=var883, $r4=var1499, $r6=var1708, java.lang.Object=var3854, $r7=var1706, $r12=var2981, org.antlr.v4.runtime.Parser=var1655, $r9=var751, org.antlr.v4.runtime.TokenStream=var1563, $r10=var1629, $r11=var1036, $r13=var1839, $r14=var670, $r19=var1723, $r15=var633, org.antlr.v4.runtime.ANTLRErrorListener=var3040, org.antlr.v4.runtime.Recognizer=var88, $r17=var2887, $r16=var517}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	i3 := @parameter1: int;	r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=");	$i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r18);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r19 == null goto return;	$r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r17 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>();	$r16 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	interfaceinvoke $r17.<org.antlr.v4.runtime.ANTLRErrorListener: void reportContextSensitivity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,int,org.antlr.v4.runtime.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5);	return
;block_num 6