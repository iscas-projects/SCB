(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var861 0)
(declare-sort var3980 0)
(declare-sort var444 0)
(declare-sort var2444 0)
(declare-sort var3025 0)
(declare-sort var1219 0)
(declare-sort var3848 0)
(declare-sort var2730 0)
(declare-sort var1801 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2444_of/-1711527236 (Int Int) var2444)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/-2041177131 (var3980) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var3848) String)
(declare-fun cast-from-var444-to-var3848 (var444) var3848)
(declare-fun parser/145254134 (var861) var2730)
(declare-fun getTokenStream/-211092484 (var2730) var1801)
(declare-fun var1801_getText/1167499073 (var1801 var2444) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var3025 String) void)
(declare-const null-var861 var861)
(declare-const null-var3980 var3980)
(declare-const null-Int Int)
(declare-const null-var444 var444)
(declare-const var861-debug Bool)
(declare-const var861-retry_debug Bool)
(declare-const var1219-out var3025)
(declare-const null-var2730 var2730)
(declare-const var1596 var861) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1596 null-var861)))
(declare-const var2741 var3980) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var2741 null-var3980)))
(declare-const var2285 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2285 null-Int)))
(declare-const var794 var444) ; Statement: r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var794 null-var444)))
(declare-const var1490 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1490 null-Int)))
(declare-const var1332 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var1332 null-Int)))
(define-const var2505 Bool var861-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var2505 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2731 Bool var861-retry_debug) ; Statement: $z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (not (= (ite var2731 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1165 var2444 (var2444_of/-1711527236 var1490 var1332)) ; Statement: $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var877 var3025 var1219-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1817 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1817)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1817!1 String)
(assert (= var1817!1 ""))
(assert true)
(define-const var3215 String (append/672562846 var1817!1 "reportContextSensitivity decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=") 
(declare-const var1817!2 String)
(assert (= var1817!2 (str.++ var1817!1 "reportContextSensitivity decision=")))
(define-const var1906 Int (decision/-2041177131 var2741)) ; Statement: $i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision> 
(assert true)
(define-const var2383 String (append/-1001720160 var3215 var1906)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3215!1 String)
(assert (str.prefixof var3215 var3215!1))
(assert true)
(define-const var1023 String (append/672562846 var2383 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2383!1 String)
(assert (= var2383!1 (str.++ var2383 ":")))
(assert true)
(define-const var1840 String (append/-1031950772 var1023 (cast-from-var444-to-var3848 var794))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1023!1 String)
(assert (str.prefixof var1023 var1023!1))
(assert true)
(define-const var1709 String (append/672562846 var1840 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var1840!1 String)
(assert (= var1840!1 (str.++ var1840 ", input=")))
(define-const var1818 var2730 (parser/145254134 var1596)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var1941 var1801 (getTokenStream/-211092484 var1818)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var60 String (var1801_getText/1167499073 var1941 var1165)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r18) 
(assert true)
(define-const var3376 String (append/672562846 var1709 var60)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1709!1 String)
(assert (= var1709!1 (str.++ var1709 var60)))
(assert true)
(define-const var955 String (toString/-2075883882 var3376)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var877 var955)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var877!1 var3025)
(declare-const var955!1 String)
(assert true) ; Non Conditional
(define-const var1985 var2730 (parser/145254134 var1596)) ; Statement: $r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r19 == null goto return 
(assert (= var1985 null-var2730)) ; Cond: $r19 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2444_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/-2041177131=([org.antlr.v4.runtime.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var444-to-var3848=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var1801_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var861=org.antlr.v4.runtime.atn.ParserATNSimulator, var1596=r8, var3980=org.antlr.v4.runtime.dfa.DFA, var2741=r2, var2285=i3, var444=org.antlr.v4.runtime.atn.ATNConfigSet, var794=r5, var1490=i0, var1332=i1, var2505=$z0, var2731=$z1, var2444=org.antlr.v4.runtime.misc.Interval, var1165=$r18, var3025=java.io.PrintStream, var1219=java.lang.System, var877=$r1, var1817=$r0, var3215=$r3, var1906=$i2, var2383=$r4, var1023=$r6, var3848=java.lang.Object, var1840=$r7, var1709=$r12, var2730=org.antlr.v4.runtime.Parser, var1818=$r9, var1801=org.antlr.v4.runtime.TokenStream, var1941=$r10, var60=$r11, var3376=$r13, var955=$r14, var1985=$r19}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var861, r8=var1596, org.antlr.v4.runtime.dfa.DFA=var3980, r2=var2741, i3=var2285, org.antlr.v4.runtime.atn.ATNConfigSet=var444, r5=var794, i0=var1490, i1=var1332, $z0=var2505, $z1=var2731, org.antlr.v4.runtime.misc.Interval=var2444, $r18=var1165, java.io.PrintStream=var3025, java.lang.System=var1219, $r1=var877, $r0=var1817, $r3=var3215, $i2=var1906, $r4=var2383, $r6=var1023, java.lang.Object=var3848, $r7=var1840, $r12=var1709, org.antlr.v4.runtime.Parser=var2730, $r9=var1818, org.antlr.v4.runtime.TokenStream=var1801, $r10=var1941, $r11=var60, $r13=var3376, $r14=var955, $r19=var1985}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	i3 := @parameter1: int;	r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=");	$i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r18);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r19 == null goto return;	return
;block_num 5