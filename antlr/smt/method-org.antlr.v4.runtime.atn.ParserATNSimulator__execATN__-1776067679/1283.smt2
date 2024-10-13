(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2781 0)
(declare-sort var2770 0)
(declare-sort var721 0)
(declare-sort var778 0)
(declare-sort var3841 0)
(declare-sort var938 0)
(declare-sort var2534 0)
(declare-sort var3581 0)
(declare-sort var1095 0)
(declare-sort var3694 0)
(declare-sort var524 0)
(declare-sort var747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/-2041177131 (var2770) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var3581) String)
(declare-fun cast-from-var721-to-var3581 (var721) var3581)
(declare-fun getLookaheadName/-375406071 (var2781 var778) String)
(declare-fun var778_LT/-1699631322 (var778 Int) var1095)
(declare-fun var1095_getLine/-1887331676 (var1095) Int)
(declare-fun var1095_getCharPositionInLine/969483936 (var1095) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var938 String) void)
(declare-fun var3694_LA/2117130104 (var3694 Int) Int)
(declare-fun cast-from-var778-to-var3694 (var778) var3694)
(declare-fun getExistingTargetState/-1637564977 (var2781 var721 Int) var721)
(declare-fun configs/-2105354820 (var721) var524)
(declare-fun noViableAlt/-1144971256 (var2781 var778 var3841 var524 Int) var747)
(declare-fun var3694_seek/-362761590 (var3694 Int) void)
(declare-fun getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329 (var2781 var524 var3841) Int)
(declare-const null-var2781 var2781)
(declare-const null-var2770 var2770)
(declare-const null-var721 var721)
(declare-const null-var778 var778)
(declare-const null-Int Int)
(declare-const null-var3841 var3841)
(declare-const var2781-debug Bool)
(declare-const var2534-out var938)
(declare-const var2781-ERROR var721)
(declare-const var2119 var2781) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var2119 null-var2781)))
(declare-const var3792 var2770) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var3792 null-var2770)))
(declare-const var3388 var721) ; Statement: r5 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var3388 null-var721)))
(declare-const var3666 var778) ; Statement: r9 := @parameter2: org.antlr.v4.runtime.TokenStream 
(assert (not (= var3666 null-var778)))
(declare-const var1605 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var1605 null-Int)))
(declare-const var619 var3841) ; Statement: r22 := @parameter4: org.antlr.v4.runtime.ParserRuleContext 
(assert (not (= var619 null-var3841)))
(define-const var2 Bool var2781-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var2 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3157 var938 var2534-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var473 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var473)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var473!1 String)
(assert (= var473!1 ""))
(assert true)
(define-const var1434 String (append/672562846 var473!1 "execATN decision ")) ; Statement: $r3 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATN decision ") 
(declare-const var473!2 String)
(assert (= var473!2 (str.++ var473!1 "execATN decision ")))
(define-const var3362 Int (decision/-2041177131 var3792)) ; Statement: $i0 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision> 
(assert true)
(define-const var1072 String (append/-1001720160 var1434 var3362)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1434!1 String)
(assert (str.prefixof var1434 var1434!1))
(assert true)
(define-const var1324 String (append/672562846 var1072 ", DFA state ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", DFA state ") 
(declare-const var1072!1 String)
(assert (= var1072!1 (str.++ var1072 ", DFA state ")))
(assert true)
(define-const var109 String (append/-1031950772 var1324 (cast-from-var721-to-var3581 var3388))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1324!1 String)
(assert (str.prefixof var1324 var1324!1))
(assert true)
(define-const var662 String (append/672562846 var109 ", LA(1)==")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LA(1)==") 
(declare-const var109!1 String)
(assert (= var109!1 (str.++ var109 ", LA(1)==")))
(assert true)
(define-const var1442 String (getLookaheadName/-375406071 var2119 var3666)) ; Statement: $r10 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getLookaheadName(org.antlr.v4.runtime.TokenStream)>(r9) 
(assert true)
(define-const var2300 String (append/672562846 var662 var1442)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var662!1 String)
(assert (= var662!1 (str.++ var662 var1442)))
(assert true)
(define-const var2966 String (append/672562846 var2300 " line ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ") 
(declare-const var2300!1 String)
(assert (= var2300!1 (str.++ var2300 " line ")))
(define-const var82 var1095 (var778_LT/-1699631322 var3666 1)) ; Statement: $r13 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1) 
(define-const var1136 Int (var1095_getLine/-1887331676 var82)) ; Statement: $i1 = interfaceinvoke $r13.<org.antlr.v4.runtime.Token: int getLine()>() 
(assert true)
(define-const var2198 String (append/-1001720160 var2966 var1136)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2966!1 String)
(assert (str.prefixof var2966 var2966!1))
(assert true)
(define-const var896 String (append/672562846 var2198 ":")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2198!1 String)
(assert (= var2198!1 (str.++ var2198 ":")))
(define-const var3357 var1095 (var778_LT/-1699631322 var3666 1)) ; Statement: $r16 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1) 
(define-const var3052 Int (var1095_getCharPositionInLine/969483936 var3357)) ; Statement: $i2 = interfaceinvoke $r16.<org.antlr.v4.runtime.Token: int getCharPositionInLine()>() 
(assert true)
(define-const var3670 String (append/-1001720160 var896 var3052)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var896!1 String)
(assert (str.prefixof var896 var896!1))
(assert true)
(define-const var752 String (toString/-2075883882 var3670)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3157 var752)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r19) 

(declare-const var3157!1 var938)
(declare-const var752!1 String)
(assert true) ; Non Conditional
(define-const var2158 var721 var3388) ; Statement: r47 = r5 
(define-const var1327 Int (var3694_LA/2117130104 (cast-from-var778-to-var3694 var3666) 1)) ; Statement: i13 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: int LA(int)>(1) 
(assert true) ; Non Conditional
(assert true)
(define-const var2812 var721 (getExistingTargetState/-1637564977 var2119 var2158 var1327)) ; Statement: $r48 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState getExistingTargetState(org.antlr.v4.runtime.dfa.DFAState,int)>(r47, i13) 
(define-const var3248 var721 var2812) ; Statement: r49 = $r48 
 ; Statement: if $r48 != null goto $r20 = <org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState ERROR> 
(assert (not (= var2812 null-var721))) ; Cond: $r48 != null 
(define-const var3473 var721 var2781-ERROR) ; Statement: $r20 = <org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState ERROR> 
 ; Statement: if r49 != $r20 goto $z1 = r49.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext> 
(assert (not (not (= var3248 var3473)))) ; Negate: Cond: r49 != $r20  
(define-const var564 var524 (configs/-2105354820 var2158)) ; Statement: $r45 = r47.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.atn.ATNConfigSet configs> 
(assert true)
(define-const var2969 var747 (noViableAlt/-1144971256 var2119 var3666 var619 var564 var1605)) ; Statement: r50 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.NoViableAltException noViableAlt(org.antlr.v4.runtime.TokenStream,org.antlr.v4.runtime.ParserRuleContext,org.antlr.v4.runtime.atn.ATNConfigSet,int)>(r9, r22, $r45, i3) 
;(assert (var3694_seek/-362761590 (cast-from-var778-to-var3694 var3666) var1605)) ; Statement: interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i3) 

(declare-const var3666!1 var778)
(declare-const var1605!1 Int)
(define-const var1245 var524 (configs/-2105354820 var2158)) ; Statement: $r46 = r47.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.atn.ATNConfigSet configs> 
(assert true)
(define-const var3175 Int (getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329 var2119 var1245 var619)) ; Statement: i14 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(org.antlr.v4.runtime.atn.ATNConfigSet,org.antlr.v4.runtime.ParserRuleContext)>($r46, r22) 
 ; Statement: if i14 == 0 goto throw r50 
(assert (= var3175 0)) ; Cond: i14 == 0 
 ; Statement: throw r50 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/-2041177131=([org.antlr.v4.runtime.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var721-to-var3581=([org.antlr.v4.runtime.dfa.DFAState], java.lang.Object), getLookaheadName/-375406071=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.TokenStream], java.lang.String), var778_LT/-1699631322=([org.antlr.v4.runtime.TokenStream, int], org.antlr.v4.runtime.Token), var1095_getLine/-1887331676=([org.antlr.v4.runtime.Token], int), var1095_getCharPositionInLine/969483936=([org.antlr.v4.runtime.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var3694_LA/2117130104=([org.antlr.v4.runtime.IntStream, int], int), cast-from-var778-to-var3694=([org.antlr.v4.runtime.TokenStream], org.antlr.v4.runtime.IntStream), getExistingTargetState/-1637564977=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFAState, int], org.antlr.v4.runtime.dfa.DFAState), configs/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.atn.ATNConfigSet), noViableAlt/-1144971256=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.ParserRuleContext, org.antlr.v4.runtime.atn.ATNConfigSet, int], org.antlr.v4.runtime.NoViableAltException), var3694_seek/-362761590=([org.antlr.v4.runtime.IntStream, int], void), getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.atn.ATNConfigSet, org.antlr.v4.runtime.ParserRuleContext], int)}
; {var2781=org.antlr.v4.runtime.atn.ParserATNSimulator, var2119=r8, var2770=org.antlr.v4.runtime.dfa.DFA, var3792=r2, var721=org.antlr.v4.runtime.dfa.DFAState, var3388=r5, var778=org.antlr.v4.runtime.TokenStream, var3666=r9, var1605=i3, var3841=org.antlr.v4.runtime.ParserRuleContext, var619=r22, var2=$z0, var938=java.io.PrintStream, var2534=java.lang.System, var3157=$r1, var473=$r53, var1434=$r3, var3362=$i0, var1072=$r4, var1324=$r6, var3581=java.lang.Object, var109=$r7, var662=$r11, var1442=$r10, var2300=$r12, var2966=$r14, var1095=org.antlr.v4.runtime.Token, var82=$r13, var1136=$i1, var2198=$r15, var896=$r17, var3357=$r16, var3052=$i2, var3670=$r18, var752=$r19, var2158=r47, var3694=org.antlr.v4.runtime.IntStream, var1327=i13, var2812=$r48, var3248=r49, var3473=$r20, var524=org.antlr.v4.runtime.atn.ATNConfigSet, var564=$r45, var747=org.antlr.v4.runtime.NoViableAltException, var2969=r50, var1245=$r46, var3175=i14}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var2781, r8=var2119, org.antlr.v4.runtime.dfa.DFA=var2770, r2=var3792, org.antlr.v4.runtime.dfa.DFAState=var721, r5=var3388, org.antlr.v4.runtime.TokenStream=var778, r9=var3666, i3=var1605, org.antlr.v4.runtime.ParserRuleContext=var3841, r22=var619, $z0=var2, java.io.PrintStream=var938, java.lang.System=var2534, $r1=var3157, $r53=var473, $r3=var1434, $i0=var3362, $r4=var1072, $r6=var1324, java.lang.Object=var3581, $r7=var109, $r11=var662, $r10=var1442, $r12=var2300, $r14=var2966, org.antlr.v4.runtime.Token=var1095, $r13=var82, $i1=var1136, $r15=var2198, $r17=var896, $r16=var3357, $i2=var3052, $r18=var3670, $r19=var752, r47=var2158, org.antlr.v4.runtime.IntStream=var3694, i13=var1327, $r48=var2812, r49=var3248, $r20=var3473, org.antlr.v4.runtime.atn.ATNConfigSet=var524, $r45=var564, org.antlr.v4.runtime.NoViableAltException=var747, r50=var2969, $r46=var1245, i14=var3175}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r5 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	r9 := @parameter2: org.antlr.v4.runtime.TokenStream;	i3 := @parameter3: int;	r22 := @parameter4: org.antlr.v4.runtime.ParserRuleContext;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out>;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATN decision ");	$i0 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", DFA state ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LA(1)==");	$r10 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getLookaheadName(org.antlr.v4.runtime.TokenStream)>(r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ");	$r13 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1);	$i1 = interfaceinvoke $r13.<org.antlr.v4.runtime.Token: int getLine()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r16 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1);	$i2 = interfaceinvoke $r16.<org.antlr.v4.runtime.Token: int getCharPositionInLine()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r19);	r47 = r5;	i13 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: int LA(int)>(1);	$r48 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState getExistingTargetState(org.antlr.v4.runtime.dfa.DFAState,int)>(r47, i13);	r49 = $r48;	if $r48 != null goto $r20 = <org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState ERROR>;	$r20 = <org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState ERROR>;	if r49 != $r20 goto $z1 = r49.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext>;	$r45 = r47.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.atn.ATNConfigSet configs>;	r50 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.NoViableAltException noViableAlt(org.antlr.v4.runtime.TokenStream,org.antlr.v4.runtime.ParserRuleContext,org.antlr.v4.runtime.atn.ATNConfigSet,int)>(r9, r22, $r45, i3);	interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i3);	$r46 = r47.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.atn.ATNConfigSet configs>;	i14 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(org.antlr.v4.runtime.atn.ATNConfigSet,org.antlr.v4.runtime.ParserRuleContext)>($r46, r22);	if i14 == 0 goto throw r50;	throw r50
;block_num 7