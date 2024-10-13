(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3945 0)
(declare-sort var2186 0)
(declare-sort var107 0)
(declare-sort var1585 0)
(declare-sort var2028 0)
(declare-sort var414 0)
(declare-sort var1823 0)
(declare-sort var3765 0)
(declare-sort var276 0)
(declare-sort var249 0)
(declare-sort var208 0)
(declare-sort var987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/-2041177131 (var2186) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var3765) String)
(declare-fun cast-from-var107-to-var3765 (var107) var3765)
(declare-fun getLookaheadName/-375406071 (var3945 var1585) String)
(declare-fun var1585_LT/-1699631322 (var1585 Int) var276)
(declare-fun var276_getLine/-1887331676 (var276) Int)
(declare-fun var276_getCharPositionInLine/969483936 (var276) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var414 String) void)
(declare-fun var249_LA/2117130104 (var249 Int) Int)
(declare-fun cast-from-var1585-to-var249 (var1585) var249)
(declare-fun getExistingTargetState/-1637564977 (var3945 var107 Int) var107)
(declare-fun configs/-2105354820 (var107) var208)
(declare-fun noViableAlt/-1144971256 (var3945 var1585 var2028 var208 Int) var987)
(declare-fun var249_seek/-362761590 (var249 Int) void)
(declare-fun getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329 (var3945 var208 var2028) Int)
(declare-const null-var3945 var3945)
(declare-const null-var2186 var2186)
(declare-const null-var107 var107)
(declare-const null-var1585 var1585)
(declare-const null-Int Int)
(declare-const null-var2028 var2028)
(declare-const var3945-debug Bool)
(declare-const var1823-out var414)
(declare-const var3945-ERROR var107)
(declare-const var1981 var3945) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1981 null-var3945)))
(declare-const var2947 var2186) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var2947 null-var2186)))
(declare-const var3046 var107) ; Statement: r5 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var3046 null-var107)))
(declare-const var970 var1585) ; Statement: r9 := @parameter2: org.antlr.v4.runtime.TokenStream 
(assert (not (= var970 null-var1585)))
(declare-const var3658 Int) ; Statement: i3 := @parameter3: int 
(assert (not (= var3658 null-Int)))
(declare-const var676 var2028) ; Statement: r22 := @parameter4: org.antlr.v4.runtime.ParserRuleContext 
(assert (not (= var676 null-var2028)))
(define-const var3545 Bool var3945-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out> 
(assert (not (= (ite var3545 1 0) 0))) ; Cond: $z0 != 0 
(define-const var421 var414 var1823-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3566 String String-init) ; Statement: $r53 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3566)) ; Statement: specialinvoke $r53.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3566!1 String)
(assert (= var3566!1 ""))
(assert true)
(define-const var3239 String (append/672562846 var3566!1 "execATN decision ")) ; Statement: $r3 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATN decision ") 
(declare-const var3566!2 String)
(assert (= var3566!2 (str.++ var3566!1 "execATN decision ")))
(define-const var460 Int (decision/-2041177131 var2947)) ; Statement: $i0 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision> 
(assert true)
(define-const var3552 String (append/-1001720160 var3239 var460)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3239!1 String)
(assert (str.prefixof var3239 var3239!1))
(assert true)
(define-const var988 String (append/672562846 var3552 ", DFA state ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", DFA state ") 
(declare-const var3552!1 String)
(assert (= var3552!1 (str.++ var3552 ", DFA state ")))
(assert true)
(define-const var3129 String (append/-1031950772 var988 (cast-from-var107-to-var3765 var3046))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var988!1 String)
(assert (str.prefixof var988 var988!1))
(assert true)
(define-const var3687 String (append/672562846 var3129 ", LA(1)==")) ; Statement: $r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LA(1)==") 
(declare-const var3129!1 String)
(assert (= var3129!1 (str.++ var3129 ", LA(1)==")))
(assert true)
(define-const var190 String (getLookaheadName/-375406071 var1981 var970)) ; Statement: $r10 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getLookaheadName(org.antlr.v4.runtime.TokenStream)>(r9) 
(assert true)
(define-const var1941 String (append/672562846 var3687 var190)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3687!1 String)
(assert (= var3687!1 (str.++ var3687 var190)))
(assert true)
(define-const var3430 String (append/672562846 var1941 " line ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ") 
(declare-const var1941!1 String)
(assert (= var1941!1 (str.++ var1941 " line ")))
(define-const var3205 var276 (var1585_LT/-1699631322 var970 1)) ; Statement: $r13 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1) 
(define-const var2295 Int (var276_getLine/-1887331676 var3205)) ; Statement: $i1 = interfaceinvoke $r13.<org.antlr.v4.runtime.Token: int getLine()>() 
(assert true)
(define-const var86 String (append/-1001720160 var3430 var2295)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3430!1 String)
(assert (str.prefixof var3430 var3430!1))
(assert true)
(define-const var2198 String (append/672562846 var86 ":")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var86!1 String)
(assert (= var86!1 (str.++ var86 ":")))
(define-const var1751 var276 (var1585_LT/-1699631322 var970 1)) ; Statement: $r16 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1) 
(define-const var237 Int (var276_getCharPositionInLine/969483936 var1751)) ; Statement: $i2 = interfaceinvoke $r16.<org.antlr.v4.runtime.Token: int getCharPositionInLine()>() 
(assert true)
(define-const var2497 String (append/-1001720160 var2198 var237)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2198!1 String)
(assert (str.prefixof var2198 var2198!1))
(assert true)
(define-const var2855 String (toString/-2075883882 var2497)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var421 var2855)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r19) 

(declare-const var421!1 var414)
(declare-const var2855!1 String)
(assert true) ; Non Conditional
(define-const var2101 var107 var3046) ; Statement: r47 = r5 
(define-const var2644 Int (var249_LA/2117130104 (cast-from-var1585-to-var249 var970) 1)) ; Statement: i13 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: int LA(int)>(1) 
(assert true) ; Non Conditional
(assert true)
(define-const var3649 var107 (getExistingTargetState/-1637564977 var1981 var2101 var2644)) ; Statement: $r48 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState getExistingTargetState(org.antlr.v4.runtime.dfa.DFAState,int)>(r47, i13) 
(define-const var3096 var107 var3649) ; Statement: r49 = $r48 
 ; Statement: if $r48 != null goto $r20 = <org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState ERROR> 
(assert (not (= var3649 null-var107))) ; Cond: $r48 != null 
(define-const var2473 var107 var3945-ERROR) ; Statement: $r20 = <org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState ERROR> 
 ; Statement: if r49 != $r20 goto $z1 = r49.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext> 
(assert (not (not (= var3096 var2473)))) ; Negate: Cond: r49 != $r20  
(define-const var2996 var208 (configs/-2105354820 var2101)) ; Statement: $r45 = r47.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.atn.ATNConfigSet configs> 
(assert true)
(define-const var2188 var987 (noViableAlt/-1144971256 var1981 var970 var676 var2996 var3658)) ; Statement: r50 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.NoViableAltException noViableAlt(org.antlr.v4.runtime.TokenStream,org.antlr.v4.runtime.ParserRuleContext,org.antlr.v4.runtime.atn.ATNConfigSet,int)>(r9, r22, $r45, i3) 
;(assert (var249_seek/-362761590 (cast-from-var1585-to-var249 var970) var3658)) ; Statement: interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i3) 

(declare-const var970!1 var1585)
(declare-const var3658!1 Int)
(define-const var2354 var208 (configs/-2105354820 var2101)) ; Statement: $r46 = r47.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.atn.ATNConfigSet configs> 
(assert true)
(define-const var3278 Int (getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329 var1981 var2354 var676)) ; Statement: i14 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(org.antlr.v4.runtime.atn.ATNConfigSet,org.antlr.v4.runtime.ParserRuleContext)>($r46, r22) 
 ; Statement: if i14 == 0 goto throw r50 
(assert (not (= var3278 0))) ; Negate: Cond: i14 == 0  
 ; Statement: return i14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/-2041177131=([org.antlr.v4.runtime.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var107-to-var3765=([org.antlr.v4.runtime.dfa.DFAState], java.lang.Object), getLookaheadName/-375406071=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.TokenStream], java.lang.String), var1585_LT/-1699631322=([org.antlr.v4.runtime.TokenStream, int], org.antlr.v4.runtime.Token), var276_getLine/-1887331676=([org.antlr.v4.runtime.Token], int), var276_getCharPositionInLine/969483936=([org.antlr.v4.runtime.Token], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), var249_LA/2117130104=([org.antlr.v4.runtime.IntStream, int], int), cast-from-var1585-to-var249=([org.antlr.v4.runtime.TokenStream], org.antlr.v4.runtime.IntStream), getExistingTargetState/-1637564977=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFAState, int], org.antlr.v4.runtime.dfa.DFAState), configs/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.atn.ATNConfigSet), noViableAlt/-1144971256=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.ParserRuleContext, org.antlr.v4.runtime.atn.ATNConfigSet, int], org.antlr.v4.runtime.NoViableAltException), var249_seek/-362761590=([org.antlr.v4.runtime.IntStream, int], void), getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule/-875850329=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.atn.ATNConfigSet, org.antlr.v4.runtime.ParserRuleContext], int)}
; {var3945=org.antlr.v4.runtime.atn.ParserATNSimulator, var1981=r8, var2186=org.antlr.v4.runtime.dfa.DFA, var2947=r2, var107=org.antlr.v4.runtime.dfa.DFAState, var3046=r5, var1585=org.antlr.v4.runtime.TokenStream, var970=r9, var3658=i3, var2028=org.antlr.v4.runtime.ParserRuleContext, var676=r22, var3545=$z0, var414=java.io.PrintStream, var1823=java.lang.System, var421=$r1, var3566=$r53, var3239=$r3, var460=$i0, var3552=$r4, var988=$r6, var3765=java.lang.Object, var3129=$r7, var3687=$r11, var190=$r10, var1941=$r12, var3430=$r14, var276=org.antlr.v4.runtime.Token, var3205=$r13, var2295=$i1, var86=$r15, var2198=$r17, var1751=$r16, var237=$i2, var2497=$r18, var2855=$r19, var2101=r47, var249=org.antlr.v4.runtime.IntStream, var2644=i13, var3649=$r48, var3096=r49, var2473=$r20, var208=org.antlr.v4.runtime.atn.ATNConfigSet, var2996=$r45, var987=org.antlr.v4.runtime.NoViableAltException, var2188=r50, var2354=$r46, var3278=i14}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3945, r8=var1981, org.antlr.v4.runtime.dfa.DFA=var2186, r2=var2947, org.antlr.v4.runtime.dfa.DFAState=var107, r5=var3046, org.antlr.v4.runtime.TokenStream=var1585, r9=var970, i3=var3658, org.antlr.v4.runtime.ParserRuleContext=var2028, r22=var676, $z0=var3545, java.io.PrintStream=var414, java.lang.System=var1823, $r1=var421, $r53=var3566, $r3=var3239, $i0=var460, $r4=var3552, $r6=var988, java.lang.Object=var3765, $r7=var3129, $r11=var3687, $r10=var190, $r12=var1941, $r14=var3430, org.antlr.v4.runtime.Token=var276, $r13=var3205, $i1=var2295, $r15=var86, $r17=var2198, $r16=var1751, $i2=var237, $r18=var2497, $r19=var2855, r47=var2101, org.antlr.v4.runtime.IntStream=var249, i13=var2644, $r48=var3649, r49=var3096, $r20=var2473, org.antlr.v4.runtime.atn.ATNConfigSet=var208, $r45=var2996, org.antlr.v4.runtime.NoViableAltException=var987, r50=var2188, $r46=var2354, i14=var3278}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r5 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	r9 := @parameter2: org.antlr.v4.runtime.TokenStream;	i3 := @parameter3: int;	r22 := @parameter4: org.antlr.v4.runtime.ParserRuleContext;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r1 = <java.lang.System: java.io.PrintStream out>;	$r1 = <java.lang.System: java.io.PrintStream out>;	$r53 = new java.lang.StringBuilder;	specialinvoke $r53.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("execATN decision ");	$i0 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", DFA state ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r11 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", LA(1)==");	$r10 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getLookaheadName(org.antlr.v4.runtime.TokenStream)>(r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" line ");	$r13 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1);	$i1 = interfaceinvoke $r13.<org.antlr.v4.runtime.Token: int getLine()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r16 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: org.antlr.v4.runtime.Token LT(int)>(1);	$i2 = interfaceinvoke $r16.<org.antlr.v4.runtime.Token: int getCharPositionInLine()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r19);	r47 = r5;	i13 = interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: int LA(int)>(1);	$r48 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState getExistingTargetState(org.antlr.v4.runtime.dfa.DFAState,int)>(r47, i13);	r49 = $r48;	if $r48 != null goto $r20 = <org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState ERROR>;	$r20 = <org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState ERROR>;	if r49 != $r20 goto $z1 = r49.<org.antlr.v4.runtime.dfa.DFAState: boolean requiresFullContext>;	$r45 = r47.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.atn.ATNConfigSet configs>;	r50 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.NoViableAltException noViableAlt(org.antlr.v4.runtime.TokenStream,org.antlr.v4.runtime.ParserRuleContext,org.antlr.v4.runtime.atn.ATNConfigSet,int)>(r9, r22, $r45, i3);	interfaceinvoke r9.<org.antlr.v4.runtime.TokenStream: void seek(int)>(i3);	$r46 = r47.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.atn.ATNConfigSet configs>;	i14 = virtualinvoke r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: int getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(org.antlr.v4.runtime.atn.ATNConfigSet,org.antlr.v4.runtime.ParserRuleContext)>($r46, r22);	if i14 == 0 goto throw r50;	return i14
;block_num 7