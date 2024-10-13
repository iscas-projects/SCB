(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var911 0)
(declare-sort var2647 0)
(declare-sort var3690 0)
(declare-sort var249 0)
(declare-sort var336 0)
(declare-sort var1491 0)
(declare-sort var120 0)
(declare-sort var2745 0)
(declare-sort var702 0)
(declare-sort var440 0)
(declare-sort var500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var249_of/1114852800 (Int Int) var249)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/1715855536 (var2647) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var120) String)
(declare-fun cast-from-var3690-to-var120 (var3690) var120)
(declare-fun parser/310440123 (var911) var2745)
(declare-fun getTokenStream/1024418418 (var2745) var702)
(declare-fun var702_getText/1244185151 (var702 var249) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var336 String) void)
(declare-fun getErrorListenerDispatch/1243680242 (var500) var440)
(declare-fun cast-from-var2745-to-var500 (var2745) var500)
(declare-fun var440_reportContextSensitivity/153253860 (var440 var2745 var2647 Int Int Int var3690) void)
(declare-const null-var911 var911)
(declare-const null-var2647 var2647)
(declare-const null-Int Int)
(declare-const null-var3690 var3690)
(declare-const var911-debug Bool)
(declare-const var1491-out var336)
(declare-const null-var2745 var2745)
(declare-const var3135 var911) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var3135 null-var911)))
(declare-const var1594 var2647) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var1594 null-var2647)))
(declare-const var2632 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2632 null-Int)))
(declare-const var1077 var3690) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var1077 null-var3690)))
(declare-const var2333 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2333 null-Int)))
(declare-const var894 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var894 null-Int)))
(define-const var285 Bool var911-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var285 1 0) 0))) ; Cond: $z0 != 0 
(define-const var301 var249 (var249_of/1114852800 var2333 var894)) ; Statement: $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(define-const var1545 var336 var1491-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3876 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3876)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3876!1 String)
(assert (= var3876!1 ""))
(assert true)
(define-const var555 String (append/672562846 var3876!1 "reportContextSensitivity decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=") 
(declare-const var3876!2 String)
(assert (= var3876!2 (str.++ var3876!1 "reportContextSensitivity decision=")))
(define-const var814 Int (decision/1715855536 var1594)) ; Statement: $i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision> 
(assert true)
(define-const var833 String (append/-1001720160 var555 var814)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var555!1 String)
(assert (str.prefixof var555 var555!1))
(assert true)
(define-const var2055 String (append/672562846 var833 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var833!1 String)
(assert (= var833!1 (str.++ var833 ":")))
(assert true)
(define-const var3599 String (append/-1031950772 var2055 (cast-from-var3690-to-var120 var1077))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var2055!1 String)
(assert (str.prefixof var2055 var2055!1))
(assert true)
(define-const var2175 String (append/672562846 var3599 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var3599!1 String)
(assert (= var3599!1 (str.++ var3599 ", input=")))
(define-const var2117 var2745 (parser/310440123 var3135)) ; Statement: $r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var1698 var702 (getTokenStream/1024418418 var2117)) ; Statement: $r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>() 
(define-const var1627 String (var702_getText/1244185151 var1698 var301)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r18) 
(assert true)
(define-const var3626 String (append/672562846 var2175 var1627)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2175!1 String)
(assert (= var2175!1 (str.++ var2175 var1627)))
(assert true)
(define-const var2923 String (toString/-2075883882 var3626)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1545 var2923)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var1545!1 var336)
(declare-const var2923!1 String)
(assert true) ; Non Conditional
(define-const var338 var2745 (parser/310440123 var3135)) ; Statement: $r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r19 == null goto return 
(assert (not (= var338 null-var2745))) ; Negate: Cond: $r19 == null  
(define-const var3986 var2745 (parser/310440123 var3135)) ; Statement: $r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var2107 var440 (getErrorListenerDispatch/1243680242 (cast-from-var2745-to-var500 var3986))) ; Statement: $r17 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var3711 var2745 (parser/310440123 var3135)) ; Statement: $r16 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
;(assert (var440_reportContextSensitivity/153253860 var2107 var3711 var1594 var2333 var894 var2632 var1077)) ; Statement: interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportContextSensitivity(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,int,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5) 

(declare-const var2107!1 var440)
(declare-const var3711!1 var2745)
(declare-const var1594!1 var2647)
(declare-const var2333!1 Int)
(declare-const var894!1 Int)
(declare-const var2632!1 Int)
(declare-const var1077!1 var3690)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var249_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/1715855536=([com.github.jknack.handlebars.internal.antlr.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3690-to-var120=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getTokenStream/1024418418=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var702_getText/1244185151=([com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getErrorListenerDispatch/1243680242=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener), cast-from-var2745-to-var500=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), var440_reportContextSensitivity/153253860=([com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, com.github.jknack.handlebars.internal.antlr.Parser, com.github.jknack.handlebars.internal.antlr.dfa.DFA, int, int, int, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], void)}
; {var911=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var3135=r8, var2647=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var1594=r2, var2632=i3, var3690=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var1077=r5, var2333=i0, var894=i1, var285=$z0, var249=com.github.jknack.handlebars.internal.antlr.misc.Interval, var301=$r18, var336=java.io.PrintStream, var1491=java.lang.System, var1545=$r1, var3876=$r0, var555=$r3, var814=$i2, var833=$r4, var2055=$r6, var120=java.lang.Object, var3599=$r7, var2175=$r12, var2745=com.github.jknack.handlebars.internal.antlr.Parser, var2117=$r9, var702=com.github.jknack.handlebars.internal.antlr.TokenStream, var1698=$r10, var1627=$r11, var3626=$r13, var2923=$r14, var338=$r19, var3986=$r15, var440=com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, var500=com.github.jknack.handlebars.internal.antlr.Recognizer, var2107=$r17, var3711=$r16}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var911, r8=var3135, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var2647, r2=var1594, i3=var2632, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var3690, r5=var1077, i0=var2333, i1=var894, $z0=var285, com.github.jknack.handlebars.internal.antlr.misc.Interval=var249, $r18=var301, java.io.PrintStream=var336, java.lang.System=var1491, $r1=var1545, $r0=var3876, $r3=var555, $i2=var814, $r4=var833, $r6=var2055, java.lang.Object=var120, $r7=var3599, $r12=var2175, com.github.jknack.handlebars.internal.antlr.Parser=var2745, $r9=var2117, com.github.jknack.handlebars.internal.antlr.TokenStream=var702, $r10=var1698, $r11=var1627, $r13=var3626, $r14=var2923, $r19=var338, $r15=var3986, com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener=var440, com.github.jknack.handlebars.internal.antlr.Recognizer=var500, $r17=var2107, $r16=var3711}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	i3 := @parameter1: int;	r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportContextSensitivity decision=");	$i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r18);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r19 == null goto return;	$r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r17 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>();	$r16 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportContextSensitivity(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,int,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5);	return
;block_num 5