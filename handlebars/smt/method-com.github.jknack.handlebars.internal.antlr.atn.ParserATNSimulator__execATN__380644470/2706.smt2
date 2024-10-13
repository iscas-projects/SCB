(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1163 0)
(declare-sort var1610 0)
(declare-sort var3237 0)
(declare-sort var2181 0)
(declare-sort var85 0)
(declare-sort var31 0)
(declare-sort var1962 0)
(declare-sort var1117 0)
(declare-sort var3618 0)
(declare-sort var2284 0)
(declare-sort var2718 0)
(declare-sort var2606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/1715855536 (var1610) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1117) String)
(declare-fun cast-from-var3237-to-var1117 (var3237) var1117)
(declare-fun getLookaheadName/-725855653 (var1163 var2181) String)
(declare-fun var2181_LT/-1327699634 (var2181 Int) var3618)
(declare-fun var3618_getLine/1695299143 (var3618) Int)
(declare-fun var3618_getCharPositionInLine/-1512232701 (var3618) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var31 String) void)
(declare-fun var2284_LA/461575771 (var2284 Int) Int)
(declare-fun cast-from-var2181-to-var2284 (var2181) var2284)
(declare-fun getExistingTargetState/-1843479616 (var1163 var3237 Int) var3237)
(declare-fun configs/729997761 (var3237) var2718)
(declare-fun noViableAlt/1945165783 (var1163 var2181 var85 var2718 Int) var2606)
(declare-fun var2284_seek/-1872436025 (var2284 Int) void)
(declare-fun getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282 (var1163 var2718 var85) Int)
(declare-const null-var1163 var1163)
(declare-const null-var1610 var1610)
(declare-const null-var3237 var3237)
(declare-const null-var2181 var2181)
(declare-const null-Int Int)
(declare-const null-var85 var85)
(declare-const var1163-debug Bool)
(declare-const var1962-out var31)
(declare-const var1163-ERROR var3237)
(declare-const var3874 var1163) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var3874 null-var1163)))
(declare-const var2361 var1610) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var2361 null-var1610)))
(declare-const var2943 var3237) ; Statement: r5 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var2943 null-var3237)))
(declare-const var3581 var2181) ; Statement: r9 := @parameter2: com.github.jknack.handlebars.internal.antlr.TokenStream 
(assert (not (= var3581 null-var2181)))
(declare-const var2910 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var2910 null-Int)))
(declare-const var1439 var85) ; Statement: r22 := @parameter4: com.github.jknack.handlebars.internal.antlr.ParserRuleContext 
(assert (not (= var1439 null-var85)))
(define-const var2106 Bool var1163-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var2106 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2311 var31 var1962-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3652 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3652)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3652!1 String)
(assert (= var3652!1 ""))
(assert true)
(define-const var2867 String (append/672562846 var3652!1 "execATN decision ")) ; Statement: $r3 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATN decision ") 
(declare-const var3652!2 String)
(assert (= var3652!2 (str.++ var3652!1 "execATN decision ")))
(define-const var66 Int (decision/1715855536 var2361)) ; Statement: $i0 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision> 
(assert true)
(define-const var3094 String (append/-1001720160 var2867 var66)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2867!1 String)
(assert (str.prefixof var2867 var2867!1))
(assert true)
(define-const var355 String (append/672562846 var3094 ", DFA state ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", DFA state ") 
(declare-const var3094!1 String)
(assert (= var3094!1 (str.++ var3094 ", DFA state ")))
(assert true)
(define-const var3021 String (append/-1031950772 var355 (cast-from-var3237-to-var1117 var2943))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var355!1 String)
(assert (str.prefixof var355 var355!1))
(assert true)
(define-const var971 String (append/672562846 var3021 ", LA(1)==")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LA(1)==") 
(declare-const var3021!1 String)
(assert (= var3021!1 (str.++ var3021 ", LA(1)==")))
(assert true)
(define-const var712 String (getLookaheadName/-725855653 var3874 var3581)) ; Statement: $r10 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getLookaheadName(com.github.jknack.handlebars.internal.antlr.TokenStream)>(r9) 
(assert true)
(define-const var914 String (append/672562846 var971 var712)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var971!1 String)
(assert (= var971!1 (str.++ var971 var712)))
(assert true)
(define-const var3499 String (append/672562846 var914 " line ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ") 
(declare-const var914!1 String)
(assert (= var914!1 (str.++ var914 " line ")))
(define-const var863 var3618 (var2181_LT/-1327699634 var3581 1)) ; Statement: $r13 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1) 
(define-const var441 Int (var3618_getLine/1695299143 var863)) ; Statement: $i1 = interfaceinvoke $r13.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>() 
(assert true)
(define-const var1303 String (append/-1001720160 var3499 var441)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3499!1 String)
(assert (str.prefixof var3499 var3499!1))
(assert true)
(define-const var772 String (append/672562846 var1303 ":")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1303!1 String)
(assert (= var1303!1 (str.++ var1303 ":")))
(define-const var2 var3618 (var2181_LT/-1327699634 var3581 1)) ; Statement: $r16 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1) 
(define-const var2294 Int (var3618_getCharPositionInLine/-1512232701 var2)) ; Statement: $i2 = interfaceinvoke $r16.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>() 
(assert true)
(define-const var872 String (append/-1001720160 var772 var2294)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var772!1 String)
(assert (str.prefixof var772 var772!1))
(assert true)
(define-const var3647 String (toString/-2075883882 var872)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var2311 var3647)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r19) 

(declare-const var2311!1 var31)
(declare-const var3647!1 String)
(assert true) ; Non Conditional
(define-const var344 var3237 var2943) ; Statement: r47 = r5 
(define-const var1153 Int (var2284_LA/461575771 (cast-from-var2181-to-var2284 var3581) 1)) ; Statement: i13 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: int LA(int)>(1) 
(assert true) ; Non Conditional
(assert true)
(define-const var266 var3237 (getExistingTargetState/-1843479616 var3874 var344 var1153)) ; Statement: $r48 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState getExistingTargetState(com.github.jknack.handlebars.internal.antlr.dfa.DFAState,int)>(r47, i13) 
(define-const var2950 var3237 var266) ; Statement: r49 = $r48 
 ; Statement: if $r48 != null goto $r20 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState ERROR> 
(assert (not (= var266 null-var3237))) ; Cond: $r48 != null 
(define-const var122 var3237 var1163-ERROR) ; Statement: $r20 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState ERROR> 
 ; Statement: if r49 != $r20 goto $z1 = r49.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext> 
(assert (not (not (= var2950 var122)))) ; Negate: Cond: r49 != $r20  
(define-const var3039 var2718 (configs/729997761 var344)) ; Statement: $r45 = r47.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet configs> 
(assert true)
(define-const var1271 var2606 (noViableAlt/1945165783 var3874 var3581 var1439 var3039 var2910)) ; Statement: r50 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.NoViableAltException noViableAlt(com.github.jknack.handlebars.internal.antlr.TokenStream,com.github.jknack.handlebars.internal.antlr.ParserRuleContext,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int)>(r9, r22, $r45, i3) 
;(assert (var2284_seek/-1872436025 (cast-from-var2181-to-var2284 var3581) var2910)) ; Statement: interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i3) 

(declare-const var3581!1 var2181)
(declare-const var2910!1 Int)
(define-const var2958 var2718 (configs/729997761 var344)) ; Statement: $r46 = r47.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet configs> 
(assert true)
(define-const var1350 Int (getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282 var3874 var2958 var1439)) ; Statement: i14 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,com.github.jknack.handlebars.internal.antlr.ParserRuleContext)>($r46, r22) 
 ; Statement: if i14 == 0 goto throw r50 
(assert (not (= var1350 0))) ; Negate: Cond: i14 == 0  
 ; Statement: return i14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/1715855536=([com.github.jknack.handlebars.internal.antlr.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3237-to-var1117=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], java.lang.Object), getLookaheadName/-725855653=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.TokenStream], java.lang.String), var2181_LT/-1327699634=([com.github.jknack.handlebars.internal.antlr.TokenStream, int], com.github.jknack.handlebars.internal.antlr.Token), var3618_getLine/1695299143=([com.github.jknack.handlebars.internal.antlr.Token], int), var3618_getCharPositionInLine/-1512232701=([com.github.jknack.handlebars.internal.antlr.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var2284_LA/461575771=([com.github.jknack.handlebars.internal.antlr.IntStream, int], int), cast-from-var2181-to-var2284=([com.github.jknack.handlebars.internal.antlr.TokenStream], com.github.jknack.handlebars.internal.antlr.IntStream), getExistingTargetState/-1843479616=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFAState, int], com.github.jknack.handlebars.internal.antlr.dfa.DFAState), configs/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet), noViableAlt/1945165783=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.TokenStream, com.github.jknack.handlebars.internal.antlr.ParserRuleContext, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, int], com.github.jknack.handlebars.internal.antlr.NoViableAltException), var2284_seek/-1872436025=([com.github.jknack.handlebars.internal.antlr.IntStream, int], void), getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/104143282=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, com.github.jknack.handlebars.internal.antlr.ParserRuleContext], int)}
; {var1163=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var3874=r8, var1610=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var2361=r2, var3237=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var2943=r5, var2181=com.github.jknack.handlebars.internal.antlr.TokenStream, var3581=r9, var2910=i3, var85=com.github.jknack.handlebars.internal.antlr.ParserRuleContext, var1439=r22, var2106=$z0, var31=java.io.PrintStream, var1962=java.lang.System, var2311=$r1, var3652=$r53, var2867=$r3, var66=$i0, var3094=$r4, var355=$r6, var1117=java.lang.Object, var3021=$r7, var971=$r11, var712=$r10, var914=$r12, var3499=$r14, var3618=com.github.jknack.handlebars.internal.antlr.Token, var863=$r13, var441=$i1, var1303=$r15, var772=$r17, var2=$r16, var2294=$i2, var872=$r18, var3647=$r19, var344=r47, var2284=com.github.jknack.handlebars.internal.antlr.IntStream, var1153=i13, var266=$r48, var2950=r49, var122=$r20, var2718=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var3039=$r45, var2606=com.github.jknack.handlebars.internal.antlr.NoViableAltException, var1271=r50, var2958=$r46, var1350=i14}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var1163, r8=var3874, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var1610, r2=var2361, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var3237, r5=var2943, com.github.jknack.handlebars.internal.antlr.TokenStream=var2181, r9=var3581, i3=var2910, com.github.jknack.handlebars.internal.antlr.ParserRuleContext=var85, r22=var1439, $z0=var2106, java.io.PrintStream=var31, java.lang.System=var1962, $r1=var2311, $r53=var3652, $r3=var2867, $i0=var66, $r4=var3094, $r6=var355, java.lang.Object=var1117, $r7=var3021, $r11=var971, $r10=var712, $r12=var914, $r14=var3499, com.github.jknack.handlebars.internal.antlr.Token=var3618, $r13=var863, $i1=var441, $r15=var1303, $r17=var772, $r16=var2, $i2=var2294, $r18=var872, $r19=var3647, r47=var344, com.github.jknack.handlebars.internal.antlr.IntStream=var2284, i13=var1153, $r48=var266, r49=var2950, $r20=var122, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var2718, $r45=var3039, com.github.jknack.handlebars.internal.antlr.NoViableAltException=var2606, r50=var1271, $r46=var2958, i14=var1350}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r5 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	r9 := @parameter2: com.github.jknack.handlebars.internal.antlr.TokenStream;	i3 := @parameter3: int;	r22 := @parameter4: com.github.jknack.handlebars.internal.antlr.ParserRuleContext;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out>;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATN decision ");	$i0 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", DFA state ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LA(1)==");	$r10 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: java.lang.String getLookaheadName(com.github.jknack.handlebars.internal.antlr.TokenStream)>(r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ");	$r13 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1);	$i1 = interfaceinvoke $r13.<com.github.jknack.handlebars.internal.antlr.Token: int getLine()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r16 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: com.github.jknack.handlebars.internal.antlr.Token LT(int)>(1);	$i2 = interfaceinvoke $r16.<com.github.jknack.handlebars.internal.antlr.Token: int getCharPositionInLine()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r19);	r47 = r5;	i13 = interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: int LA(int)>(1);	$r48 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState getExistingTargetState(com.github.jknack.handlebars.internal.antlr.dfa.DFAState,int)>(r47, i13);	r49 = $r48;	if $r48 != null goto $r20 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState ERROR>;	$r20 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState ERROR>;	if r49 != $r20 goto $z1 = r49.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: boolean requiresFullContext>;	$r45 = r47.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet configs>;	r50 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.NoViableAltException noViableAlt(com.github.jknack.handlebars.internal.antlr.TokenStream,com.github.jknack.handlebars.internal.antlr.ParserRuleContext,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,int)>(r9, r22, $r45, i3);	interfaceinvoke r9.<com.github.jknack.handlebars.internal.antlr.TokenStream: void seek(int)>(i3);	$r46 = r47.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet configs>;	i14 = virtualinvoke r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet,com.github.jknack.handlebars.internal.antlr.ParserRuleContext)>($r46, r22);	if i14 == 0 goto throw r50;	return i14
;block_num 7