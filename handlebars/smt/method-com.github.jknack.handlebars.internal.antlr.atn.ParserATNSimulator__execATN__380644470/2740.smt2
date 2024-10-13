(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2035 0)
(declare-sort var3357 0)
(declare-sort var3931 0)
(declare-sort var1083 0)
(declare-sort var969 0)
(declare-sort var1336 0)
(declare-sort var2758 0)
(declare-sort var356 0)
(declare-sort var1121 0)
(declare-sort var1485 0)
(declare-sort var13 0)
(declare-sort var436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/1715855536 (var3357) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var356) String)
(declare-fun cast-from-var3931-to-var356 (var3931) var356)
(declare-fun getLookaheadName/-725855653 (var2035 var1083) String)
(declare-fun var1083_LT/-1327699634 (var1083 Int) var1121)
(declare-fun var1121_getLine/1695299143 (var1121) Int)
(declare-fun var1121_getCharPositionInLine/-1512232701 (var1121) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var1336 String) void)
(declare-fun var1485_LA/461575771 (var1485 Int) Int)
(declare-fun cast-from-var1083-to-var1485 (var1083) var1485)
(declare-fun getExistingTargetState/-1843479616 (var2035 var3931 Int) var3931)
(declare-fun configs/729997761 (var3931) var13)
(declare-fun noViableAlt/1945165783 (var2035 var1083 var969 var13 Int) var436)
(declare-fun var1485_seek/-1872436025 (var1485 Int) void)
(declare-fun getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282 (var2035 var13 var969) Int)
(declare-const null-var2035 var2035)
(declare-const null-var3357 var3357)
(declare-const null-var3931 var3931)
(declare-const null-var1083 var1083)
(declare-const null-Int Int)
(declare-const null-var969 var969)
(declare-const var2035-debug Bool)
(declare-const var2758-out var1336)
(declare-const var2035-ERROR var3931)
(declare-const var1208 var2035) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var1208 null-var2035)))
(declare-const var429 var3357) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var429 null-var3357)))
(declare-const var3457 var3931) ; Statement: r5 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var3457 null-var3931)))
(declare-const var469 var1083) ; Statement: r9 := @parameter2: com.github.jknack.handlebars.internal.antlr.TokenStream 
(assert (not (= var469 null-var1083)))
(declare-const var2584 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2584 null-Int)))
(declare-const var504 var969) ; Statement: r22 := @parameter4: com.github.jknack.handlebars.internal.antlr.ParserRuleContext 
(assert (not (= var504 null-var969)))
(define-const var2710 Bool var2035-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var2710 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2762 var1336 var2758-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var2138 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2138)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2138!1 String)
(assert (= var2138!1 ""))
(assert true)
(define-const var3660 String (append/672562846 var2138!1 "execATN decision ")) ; Statement: $r3 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATN decision ") 
(declare-const var2138!2 String)
(assert (= var2138!2 (str.++ var2138!1 "execATN decision ")))
(define-const var2204 Int (decision/1715855536 var429)) ; Statement: $i0 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision> 
(assert true)
(define-const var1153 String (append/-1001720160 var3660 var2204)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3660!1 String)
(assert (str.prefixof var3660 var3660!1))
(assert true)
(define-const var3475 String (append/672562846 var1153 ", DFA state ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", DFA state ") 
(declare-const var1153!1 String)
(assert (= var1153!1 (str.++ var1153 ", DFA state ")))
(assert true)
(define-const var0 String (append/-1031950772 var3475 (cast-from-var3931-to-var356 var3457))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var3475!1 String)
(assert (str.prefixof var3475 var3475!1))
(assert true)
(define-const var2817 String (append/672562846 var0 ", LA(1)==")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LA(1)==") 
(declare-const var0!1 String)
(assert (= var0!1 (str.++ var0 ", LA(1)==")))
(assert true)
(define-const var2299 String (getLookaheadName/-725855653 var1208 var469)) ; Statement: $r10 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getLookaheadName(com.github.jknack.handlebars.internal.antlr.TokenStream)>(r9) 
(assert true)
(define-const var3156 String (append/672562846 var2817 var2299)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2817!1 String)
(assert (= var2817!1 (str.++ var2817 var2299)))
(assert true)
(define-const var1477 String (append/672562846 var3156 " line ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ") 
(declare-const var3156!1 String)
(assert (= var3156!1 (str.++ var3156 " line ")))
(define-const var2416 var1121 (var1083_LT/-1327699634 var469 1)) ; Statement: $r13 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1) 
(define-const var3997 Int (var1121_getLine/1695299143 var2416)) ; Statement: $i1 = interfaceinvoke $r13.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(assert true)
(define-const var840 String (append/-1001720160 var1477 var3997)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var1477!1 String)
(assert (str.prefixof var1477 var1477!1))
(assert true)
(define-const var2125 String (append/672562846 var840 ":")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var840!1 String)
(assert (= var840!1 (str.++ var840 ":")))
(define-const var2024 var1121 (var1083_LT/-1327699634 var469 1)) ; Statement: $r16 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1) 
(define-const var1258 Int (var1121_getCharPositionInLine/-1512232701 var2024)) ; Statement: $i2 = interfaceinvoke $r16.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(assert true)
(define-const var3891 String (append/-1001720160 var2125 var1258)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2125!1 String)
(assert (str.prefixof var2125 var2125!1))
(assert true)
(define-const var2646 String (toString/-2075883882 var3891)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2762 var2646)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r19) 

(declare-const var2762!1 var1336)
(declare-const var2646!1 String)
(assert true) ; Non Conditional
(define-const var2718 var3931 var3457) ; Statement: r47 = r5 
(define-const var1828 Int (var1485_LA/461575771 (cast-from-var1083-to-var1485 var469) 1)) ; Statement: i13 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: int LA(int)>(1) 
(assert true) ; Non Conditional
(assert true)
(define-const var2691 var3931 (getExistingTargetState/-1843479616 var1208 var2718 var1828)) ; Statement: $r48 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState getExistingTargetState(com.github.jknack.handlebars.internal.antlr.dfa.DFAState,int)>(r47, i13) 
(define-const var1093 var3931 var2691) ; Statement: r49 = $r48 
 ; Statement: if $r48 != null goto $r20 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState ERROR> 
(assert (not (= var2691 null-var3931))) ; Cond: $r48 != null 
(define-const var1400 var3931 var2035-ERROR) ; Statement: $r20 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState ERROR> 
 ; Statement: if r49 != $r20 goto $z1 = r49.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext> 
(assert (not (not (= var1093 var1400)))) ; Negate: Cond: r49 != $r20  
(define-const var3415 var13 (configs/729997761 var2718)) ; Statement: $r45 = r47.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet configs> 
(assert true)
(define-const var473 var436 (noViableAlt/1945165783 var1208 var469 var504 var3415 var2584)) ; Statement: r50 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.NoViableAltException noViableAlt(com.github.jknack.handlebars.internal.antlr.TokenStream,com.github.jknack.handlebars.internal.antlr.ParserRuleContext,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int)>(r9, r22, $r45, i3) 
;(assert (var1485_seek/-1872436025 (cast-from-var1083-to-var1485 var469) var2584)) ; Statement: interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i3) 

(declare-const var469!1 var1083)
(declare-const var2584!1 Int)
(define-const var2884 var13 (configs/729997761 var2718)) ; Statement: $r46 = r47.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet configs> 
(assert true)
(define-const var1240 Int (getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282 var1208 var2884 var504)) ; Statement: i14 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,com.github.jknack.handlebars.internal.antlr.ParserRuleContext)>($r46, r22) 
 ; Statement: if i14 == 0 goto throw r50 
(assert (= var1240 0)) ; Cond: i14 == 0 
 ; Statement: throw r50 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/1715855536=([com.github.jknack.handlebars.internal.antlr.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3931-to-var356=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], java.lang.Object), getLookaheadName/-725855653=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.TokenStream], java.lang.String), var1083_LT/-1327699634=([com.github.jknack.handlebars.internal.antlr.TokenStream, int], com.github.jknack.handlebars.internal.antlr.Token), var1121_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var1121_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var1485_LA/461575771=([com.github.jknack.handlebars.internal.antlr.IntStream, int], int), cast-from-var1083-to-var1485=([com.github.jknack.handlebars.internal.antlr.TokenStream], com.github.jknack.handlebars.internal.antlr.IntStream), getExistingTargetState/-1843479616=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFAState, int], com.github.jknack.handlebars.internal.antlr.dfa.DFAState), configs/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet), noViableAlt/1945165783=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.ParserRuleContext, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, int], com.github.jknack.handlebars.internal.antlr.NoViableAltException), var1485_seek/-1872436025=([com.github.jknack.handlebars.internal.antlr.IntStream, int], void), getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, com.github.jknack.handlebars.internal.antlr.ParserRuleContext], int)}
; {var2035=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var1208=r8, var3357=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var429=r2, var3931=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var3457=r5, var1083=com.github.jknack.handlebars.internal.antlr.TokenStream, var469=r9, var2584=i3, var969=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var504=r22, var2710=$z0, var1336=java.io.PrintStream, var2758=java.lang.System, var2762=$r1, var2138=$r53, var3660=$r3, var2204=$i0, var1153=$r4, var3475=$r6, var356=java.lang.Object, var0=$r7, var2817=$r11, var2299=$r10, var3156=$r12, var1477=$r14, var1121=com.github.jknack.handlebars.internal.antlr.Token, var2416=$r13, var3997=$i1, var840=$r15, var2125=$r17, var2024=$r16, var1258=$i2, var3891=$r18, var2646=$r19, var2718=r47, var1485=com.github.jknack.handlebars.internal.antlr.IntStream, var1828=i13, var2691=$r48, var1093=r49, var1400=$r20, var13=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var3415=$r45, var436=com.github.jknack.handlebars.internal.antlr.NoViableAltException, var473=r50, var2884=$r46, var1240=i14}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2035, r8=var1208, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var3357, r2=var429, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var3931, r5=var3457, com.github.jknack.handlebars.internal.antlr.TokenStream=var1083, r9=var469, i3=var2584, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var969, r22=var504, $z0=var2710, java.io.PrintStream=var1336, java.lang.System=var2758, $r1=var2762, $r53=var2138, $r3=var3660, $i0=var2204, $r4=var1153, $r6=var3475, java.lang.Object=var356, $r7=var0, $r11=var2817, $r10=var2299, $r12=var3156, $r14=var1477, com.github.jknack.handlebars.internal.antlr.Token=var1121, $r13=var2416, $i1=var3997, $r15=var840, $r17=var2125, $r16=var2024, $i2=var1258, $r18=var3891, $r19=var2646, r47=var2718, com.github.jknack.handlebars.internal.antlr.IntStream=var1485, i13=var1828, $r48=var2691, r49=var1093, $r20=var1400, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var13, $r45=var3415, com.github.jknack.handlebars.internal.antlr.NoViableAltException=var436, r50=var473, $r46=var2884, i14=var1240}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r5 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	r9 := @parameter2: com.github.jknack.handlebars.internal.antlr.TokenStream;	i3 := @parameter3: int;	r22 := @parameter4: com.github.jknack.handlebars.internal.antlr.ParserRuleContext;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out>;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATN decision ");	$i0 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", DFA state ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LA(1)==");	$r10 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getLookaheadName(com.github.jknack.handlebars.internal.antlr.TokenStream)>(r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ");	$r13 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1);	$i1 = interfaceinvoke $r13.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r16 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1);	$i2 = interfaceinvoke $r16.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r19);	r47 = r5;	i13 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: int LA(int)>(1);	$r48 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState getExistingTargetState(com.github.jknack.handlebars.internal.antlr.dfa.DFAState,int)>(r47, i13);	r49 = $r48;	if $r48 != null goto $r20 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState ERROR>;	$r20 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState ERROR>;	if r49 != $r20 goto $z1 = r49.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext>;	$r45 = r47.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet configs>;	r50 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.NoViableAltException noViableAlt(com.github.jknack.handlebars.internal.antlr.TokenStream,com.github.jknack.handlebars.internal.antlr.ParserRuleContext,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int)>(r9, r22, $r45, i3);	interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i3);	$r46 = r47.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet configs>;	i14 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,com.github.jknack.handlebars.internal.antlr.ParserRuleContext)>($r46, r22);	if i14 == 0 goto throw r50;	throw r50
;block_num 7