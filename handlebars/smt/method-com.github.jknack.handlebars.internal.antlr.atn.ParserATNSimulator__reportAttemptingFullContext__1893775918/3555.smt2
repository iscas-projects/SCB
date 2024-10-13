(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1626 0)
(declare-sort var2087 0)
(declare-sort var3579 0)
(declare-sort var2338 0)
(declare-sort var3144 0)
(declare-sort var2975 0)
(declare-sort var48 0)
(declare-sort var3293 0)
(declare-sort var1414 0)
(declare-sort var2608 0)
(declare-sort var2189 0)
(declare-sort var114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3144_of/1114852800 (Int Int) var3144)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/1715855536 (var2087) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var3293) String)
(declare-fun cast-from-var2338-to-var3293 (var2338) var3293)
(declare-fun parser/310440123 (var1626) var1414)
(declare-fun getTokenStream/1024418418 (var1414) var2608)
(declare-fun var2608_getText/1244185151 (var2608 var3144) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var2975 String) void)
(declare-fun getErrorListenerDispatch/1243680242 (var114) var2189)
(declare-fun cast-from-var1414-to-var114 (var1414) var114)
(declare-fun var2189_reportAttemptingFullContext/1702232109 (var2189 var1414 var2087 Int Int var3579 var2338) void)
(declare-const null-var1626 var1626)
(declare-const null-var2087 var2087)
(declare-const null-var3579 var3579)
(declare-const null-var2338 var2338)
(declare-const null-Int Int)
(declare-const var1626-debug Bool)
(declare-const var48-out var2975)
(declare-const null-var1414 var1414)
(declare-const var899 var1626) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var899 null-var1626)))
(declare-const var3187 var2087) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var3187 null-var2087)))
(declare-const var223 var3579) ; Statement: r16 := @parameter1: java.util.BitSet 
(assert (not (= var223 null-var3579)))
(declare-const var2887 var2338) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var2887 null-var2338)))
(declare-const var3855 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3855 null-Int)))
(declare-const var2048 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var2048 null-Int)))
(define-const var2741 Bool var1626-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (= (ite var2741 1 0) 0))) ; Cond: $z0 != 0 
(define-const var563 var3144 (var3144_of/1114852800 var3855 var2048)) ; Statement: $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(define-const var272 var2975 var48-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var404 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var404)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var404!1 String)
(assert (= var404!1 ""))
(assert true)
(define-const var3902 String (append/672562846 var404!1 "reportAttemptingFullContext decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=") 
(declare-const var404!2 String)
(assert (= var404!2 (str.++ var404!1 "reportAttemptingFullContext decision=")))
(define-const var3826 Int (decision/1715855536 var3187)) ; Statement: $i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision> 
(assert true)
(define-const var3672 String (append/-1001720160 var3902 var3826)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var3902!1 String)
(assert (str.prefixof var3902 var3902!1))
(assert true)
(define-const var1062 String (append/672562846 var3672 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var3672!1 String)
(assert (= var3672!1 (str.++ var3672 ":")))
(assert true)
(define-const var2216 String (append/-1031950772 var1062 (cast-from-var2338-to-var3293 var2887))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1062!1 String)
(assert (str.prefixof var1062 var1062!1))
(assert true)
(define-const var874 String (append/672562846 var2216 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var2216!1 String)
(assert (= var2216!1 (str.++ var2216 ", input=")))
(define-const var2987 var1414 (parser/310440123 var899)) ; Statement: $r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var844 var2608 (getTokenStream/1024418418 var2987)) ; Statement: $r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>() 
(define-const var2517 String (var2608_getText/1244185151 var844 var563)) ; Statement: $r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19) 
(assert true)
(define-const var175 String (append/672562846 var874 var2517)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var874!1 String)
(assert (= var874!1 (str.++ var874 var2517)))
(assert true)
(define-const var1615 String (toString/-2075883882 var175)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var272 var1615)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var272!1 var2975)
(declare-const var1615!1 String)
(assert true) ; Non Conditional
(define-const var58 var1414 (parser/310440123 var899)) ; Statement: $r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r20 == null goto return 
(assert (not (= var58 null-var1414))) ; Negate: Cond: $r20 == null  
(define-const var3194 var1414 (parser/310440123 var899)) ; Statement: $r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var1895 var2189 (getErrorListenerDispatch/1243680242 (cast-from-var1414-to-var114 var3194))) ; Statement: $r18 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var988 var1414 (parser/310440123 var899)) ; Statement: $r17 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
;(assert (var2189_reportAttemptingFullContext/1702232109 var1895 var988 var3187 var3855 var2048 var223 var2887)) ; Statement: interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportAttemptingFullContext(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,java.util.BitSet,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5) 

(declare-const var1895!1 var2189)
(declare-const var988!1 var1414)
(declare-const var3187!1 var2087)
(declare-const var3855!1 Int)
(declare-const var2048!1 Int)
(declare-const var223!1 var3579)
(declare-const var2887!1 var2338)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3144_of/1114852800=([int, int], com.github.jknack.handlebars.internal.antlr.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/1715855536=([com.github.jknack.handlebars.internal.antlr.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2338-to-var3293=([com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], java.lang.Object), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getTokenStream/1024418418=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.TokenStream), var2608_getText/1244185151=([com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getErrorListenerDispatch/1243680242=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener), cast-from-var1414-to-var114=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), var2189_reportAttemptingFullContext/1702232109=([com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, com.github.jknack.handlebars.internal.antlr.Parser, com.github.jknack.handlebars.internal.antlr.dfa.DFA, int, int, java.util.BitSet, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], void)}
; {var1626=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var899=r8, var2087=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var3187=r2, var3579=java.util.BitSet, var223=r16, var2338=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var2887=r5, var3855=i0, var2048=i1, var2741=$z0, var3144=com.github.jknack.handlebars.internal.antlr.misc.Interval, var563=$r19, var2975=java.io.PrintStream, var48=java.lang.System, var272=$r1, var404=$r0, var3902=$r3, var3826=$i2, var3672=$r4, var1062=$r6, var3293=java.lang.Object, var2216=$r7, var874=$r12, var1414=com.github.jknack.handlebars.internal.antlr.Parser, var2987=$r9, var2608=com.github.jknack.handlebars.internal.antlr.TokenStream, var844=$r10, var2517=$r11, var175=$r13, var1615=$r14, var58=$r20, var3194=$r15, var2189=com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, var114=com.github.jknack.handlebars.internal.antlr.Recognizer, var1895=$r18, var988=$r17}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var1626, r8=var899, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var2087, r2=var3187, java.util.BitSet=var3579, r16=var223, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var2338, r5=var2887, i0=var3855, i1=var2048, $z0=var2741, com.github.jknack.handlebars.internal.antlr.misc.Interval=var3144, $r19=var563, java.io.PrintStream=var2975, java.lang.System=var48, $r1=var272, $r0=var404, $r3=var3902, $i2=var3826, $r4=var3672, $r6=var1062, java.lang.Object=var3293, $r7=var2216, $r12=var874, com.github.jknack.handlebars.internal.antlr.Parser=var1414, $r9=var2987, com.github.jknack.handlebars.internal.antlr.TokenStream=var2608, $r10=var844, $r11=var2517, $r13=var175, $r14=var1615, $r20=var58, $r15=var3194, com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener=var2189, com.github.jknack.handlebars.internal.antlr.Recognizer=var114, $r18=var1895, $r17=var988}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r16 := @parameter1: java.util.BitSet;	r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=");	$i2 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r10 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<com.github.jknack.handlebars.internal.antlr.TokenStream: java.lang.String getText(com.github.jknack.handlebars.internal.antlr.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r20 == null goto return;	$r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r18 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>();	$r17 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportAttemptingFullContext(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,java.util.BitSet,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5);	return
;block_num 5