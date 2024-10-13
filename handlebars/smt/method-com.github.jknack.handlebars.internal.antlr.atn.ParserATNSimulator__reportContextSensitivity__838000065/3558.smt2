(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var123 0)
(declare-sort var96 0)
(declare-sort var2605 0)
(declare-sort var3839 0)
(declare-sort var2430 0)
(declare-sort var1846 0)
(declare-sort var3401 0)
(declare-sort var1378 0)
(declare-sort var443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3839_of/1114852800 (Int Int) var3839)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/1715855536 (var96) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var3401) String)
(declare-fun cast-from-var2605-to-var3401 (var2605) var3401)
(declare-fun parser/310440123 (var123) var1378)
(declare-fun getTokenStream/1024418418 (var1378) var443)
(declare-fun var443_getText/1244185151 (var443 var3839) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2430 String) void)
(declare-const null-var123 var123)
(declare-const null-var96 var96)
(declare-const null-Int Int)
(declare-const null-var2605 var2605)
(declare-const var123-debug Bool)
(declare-const var1846-out var2430)
(declare-const null-var1378 var1378)
(declare-const var3014 var123) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var3014 null-var123)))
(declare-const var2365 var96) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var2365 null-var96)))
(declare-const var2551 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2551 null-Int)))
(declare-const var1373 var2605) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var1373 null-var2605)))
(declare-const var2678 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2678 null-Int)))
(declare-const var1969 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var1969 null-Int)))
(define-const var2951 Bool var123-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var2951 1 0) 0))) ; Cond: $z0 != 0 
(define-const var41 var3839 (var3839_of/1114852800 var2678 var1969)) ; Statement: $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(define-const var3935 var2430 var1846-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var1891 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1891)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1891!1 String)
(assert (= var1891!1 ""))
(assert true)
(define-const var2574 String (append/672562846 var1891!1 "reportContextSensitivity decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=") 
(declare-const var1891!2 String)
(assert (= var1891!2 (str.++ var1891!1 "reportContextSensitivity decision=")))
(define-const var1240 Int (decision/1715855536 var2365)) ; Statement: $i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision> 
(assert true)
(define-const var2300 String (append/-1001720160 var2574 var1240)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2574!1 String)
(assert (str.prefixof var2574 var2574!1))
(assert true)
(define-const var3048 String (append/672562846 var2300 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2300!1 String)
(assert (= var2300!1 (str.++ var2300 ":")))
(assert true)
(define-const var1402 String (append/-1031950772 var3048 (cast-from-var2605-to-var3401 var1373))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var3048!1 String)
(assert (str.prefixof var3048 var3048!1))
(assert true)
(define-const var1741 String (append/672562846 var1402 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var1402!1 String)
(assert (= var1402!1 (str.++ var1402 ", input=")))
(define-const var276 var1378 (parser/310440123 var3014)) ; Statement: $r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var3468 var443 (getTokenStream/1024418418 var276)) ; Statement: $r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>() 
(define-const var604 String (var443_getText/1244185151 var3468 var41)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r18) 
(assert true)
(define-const var1597 String (append/672562846 var1741 var604)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1741!1 String)
(assert (= var1741!1 (str.++ var1741 var604)))
(assert true)
(define-const var312 String (toString/-2075883882 var1597)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3935 var312)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var3935!1 var2430)
(declare-const var312!1 String)
(assert true) ; Non Conditional
(define-const var142 var1378 (parser/310440123 var3014)) ; Statement: $r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r19 == null goto return 
(assert (= var142 null-var1378)) ; Cond: $r19 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3839_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/1715855536=([com.github.jknack.handlebars.internal.antlr.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2605-to-var3401=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getTokenStream/1024418418=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var443_getText/1244185151=([com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void)}
; {var123=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var3014=r8, var96=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var2365=r2, var2551=i3, var2605=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var1373=r5, var2678=i0, var1969=i1, var2951=$z0, var3839=com.github.jknack.handlebars.internal.antlr.misc.Interval, var41=$r18, var2430=java.io.PrintStream, var1846=java.lang.System, var3935=$r1, var1891=$r0, var2574=$r3, var1240=$i2, var2300=$r4, var3048=$r6, var3401=java.lang.Object, var1402=$r7, var1741=$r12, var1378=com.github.jknack.handlebars.internal.antlr.Parser, var276=$r9, var443=com.github.jknack.handlebars.internal.antlr.TokenStream, var3468=$r10, var604=$r11, var1597=$r13, var312=$r14, var142=$r19}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var123, r8=var3014, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var96, r2=var2365, i3=var2551, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var2605, r5=var1373, i0=var2678, i1=var1969, $z0=var2951, com.github.jknack.handlebars.internal.antlr.misc.Interval=var3839, $r18=var41, java.io.PrintStream=var2430, java.lang.System=var1846, $r1=var3935, $r0=var1891, $r3=var2574, $i2=var1240, $r4=var2300, $r6=var3048, java.lang.Object=var3401, $r7=var1402, $r12=var1741, com.github.jknack.handlebars.internal.antlr.Parser=var1378, $r9=var276, com.github.jknack.handlebars.internal.antlr.TokenStream=var443, $r10=var3468, $r11=var604, $r13=var1597, $r14=var312, $r19=var142}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	i3 := @parameter1: int;	r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=");	$i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r18);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r19 == null goto return;	return
;block_num 4