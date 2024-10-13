(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var558 0)
(declare-sort var3841 0)
(declare-sort var1049 0)
(declare-sort var3193 0)
(declare-sort var1022 0)
(declare-sort var612 0)
(declare-sort var1311 0)
(declare-sort var1974 0)
(declare-sort var1156 0)
(declare-sort var2883 0)
(declare-sort var2662 0)
(declare-sort var3808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1022_of/-1711527236 (Int Int) var1022)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun decision/-2041177131 (var3841) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun append/-1031950772 (String var1974) String)
(declare-fun cast-from-var3193-to-var1974 (var3193) var1974)
(declare-fun parser/145254134 (var558) var1156)
(declare-fun getTokenStream/-211092484 (var1156) var2883)
(declare-fun var2883_getText/1167499073 (var2883 var1022) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var612 String) void)
(declare-fun getErrorListenerDispatch/-1594005314 (var3808) var2662)
(declare-fun cast-from-var1156-to-var3808 (var1156) var3808)
(declare-fun var2662_reportAttemptingFullContext/486845351 (var2662 var1156 var3841 Int Int var1049 var3193) void)
(declare-const null-var558 var558)
(declare-const null-var3841 var3841)
(declare-const null-var1049 var1049)
(declare-const null-var3193 var3193)
(declare-const null-Int Int)
(declare-const var558-debug Bool)
(declare-const var558-retry_debug Bool)
(declare-const var1311-out var612)
(declare-const null-var1156 var1156)
(declare-const var1361 var558) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1361 null-var558)))
(declare-const var3350 var3841) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var3350 null-var3841)))
(declare-const var2233 var1049) ; Statement: r16 := @parameter1: java.util.BitSet 
(assert (not (= var2233 null-var1049)))
(declare-const var3554 var3193) ; Statement: r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var3554 null-var3193)))
(declare-const var3540 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3540 null-Int)))
(declare-const var1045 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var1045 null-Int)))
(define-const var451 Bool var558-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var451 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var45 Bool var558-retry_debug) ; Statement: $z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (not (= (ite var45 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1392 var1022 (var1022_of/-1711527236 var3540 var1045)) ; Statement: $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var3281 var612 var1311-out) ; Statement: $r1 = <java.lang.System: java.io.PrintStream out> 
(define-const var3945 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3945)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3945!1 String)
(assert (= var3945!1 ""))
(assert true)
(define-const var2672 String (append/672562846 var3945!1 "reportAttemptingFullContext decision=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=") 
(declare-const var3945!2 String)
(assert (= var3945!2 (str.++ var3945!1 "reportAttemptingFullContext decision=")))
(define-const var219 Int (decision/-2041177131 var3350)) ; Statement: $i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision> 
(assert true)
(define-const var237 String (append/-1001720160 var2672 var219)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2) 
(declare-const var2672!1 String)
(assert (str.prefixof var2672 var2672!1))
(assert true)
(define-const var2806 String (append/672562846 var237 ":")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var237!1 String)
(assert (= var237!1 (str.++ var237 ":")))
(assert true)
(define-const var1165 String (append/-1031950772 var2806 (cast-from-var3193-to-var1974 var3554))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var2806!1 String)
(assert (str.prefixof var2806 var2806!1))
(assert true)
(define-const var535 String (append/672562846 var1165 ", input=")) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=") 
(declare-const var1165!1 String)
(assert (= var1165!1 (str.++ var1165 ", input=")))
(define-const var2758 var1156 (parser/145254134 var1361)) ; Statement: $r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var2034 var2883 (getTokenStream/-211092484 var2758)) ; Statement: $r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var1435 String (var2883_getText/1167499073 var2034 var1392)) ; Statement: $r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19) 
(assert true)
(define-const var713 String (append/672562846 var535 var1435)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var535!1 String)
(assert (= var535!1 (str.++ var535 var1435)))
(assert true)
(define-const var1481 String (toString/-2075883882 var713)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3281 var1481)) ; Statement: virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14) 

(declare-const var3281!1 var612)
(declare-const var1481!1 String)
(assert true) ; Non Conditional
(define-const var2668 var1156 (parser/145254134 var1361)) ; Statement: $r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r20 == null goto return 
(assert (not (= var2668 null-var1156))) ; Negate: Cond: $r20 == null  
(define-const var777 var1156 (parser/145254134 var1361)) ; Statement: $r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var21 var2662 (getErrorListenerDispatch/-1594005314 (cast-from-var1156-to-var3808 var777))) ; Statement: $r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var2942 var1156 (parser/145254134 var1361)) ; Statement: $r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
;(assert (var2662_reportAttemptingFullContext/486845351 var21 var2942 var3350 var3540 var1045 var2233 var3554)) ; Statement: interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAttemptingFullContext(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5) 

(declare-const var21!1 var2662)
(declare-const var2942!1 var1156)
(declare-const var3350!1 var3841)
(declare-const var3540!1 Int)
(declare-const var1045!1 Int)
(declare-const var2233!1 var1049)
(declare-const var3554!1 var3193)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1022_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), decision/-2041177131=([org.antlr.v4.runtime.dfa.DFA], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3193-to-var1974=([org.antlr.v4.runtime.atn.ATNConfigSet], java.lang.Object), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var2883_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), getErrorListenerDispatch/-1594005314=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.ANTLRErrorListener), cast-from-var1156-to-var3808=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var2662_reportAttemptingFullContext/486845351=([org.antlr.v4.runtime.ANTLRErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA, int, int, java.util.BitSet, org.antlr.v4.runtime.atn.ATNConfigSet], void)}
; {var558=org.antlr.v4.runtime.atn.ParserATNSimulator, var1361=r8, var3841=org.antlr.v4.runtime.dfa.DFA, var3350=r2, var1049=java.util.BitSet, var2233=r16, var3193=org.antlr.v4.runtime.atn.ATNConfigSet, var3554=r5, var3540=i0, var1045=i1, var451=$z0, var45=$z1, var1022=org.antlr.v4.runtime.misc.Interval, var1392=$r19, var612=java.io.PrintStream, var1311=java.lang.System, var3281=$r1, var3945=$r0, var2672=$r3, var219=$i2, var237=$r4, var2806=$r6, var1974=java.lang.Object, var1165=$r7, var535=$r12, var1156=org.antlr.v4.runtime.Parser, var2758=$r9, var2883=org.antlr.v4.runtime.TokenStream, var2034=$r10, var1435=$r11, var713=$r13, var1481=$r14, var2668=$r20, var777=$r15, var2662=org.antlr.v4.runtime.ANTLRErrorListener, var3808=org.antlr.v4.runtime.Recognizer, var21=$r18, var2942=$r17}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var558, r8=var1361, org.antlr.v4.runtime.dfa.DFA=var3841, r2=var3350, java.util.BitSet=var1049, r16=var2233, org.antlr.v4.runtime.atn.ATNConfigSet=var3193, r5=var3554, i0=var3540, i1=var1045, $z0=var451, $z1=var45, org.antlr.v4.runtime.misc.Interval=var1022, $r19=var1392, java.io.PrintStream=var612, java.lang.System=var1311, $r1=var3281, $r0=var3945, $r3=var2672, $i2=var219, $r4=var237, $r6=var2806, java.lang.Object=var1974, $r7=var1165, $r12=var535, org.antlr.v4.runtime.Parser=var1156, $r9=var2758, org.antlr.v4.runtime.TokenStream=var2883, $r10=var2034, $r11=var1435, $r13=var713, $r14=var1481, $r20=var2668, $r15=var777, org.antlr.v4.runtime.ANTLRErrorListener=var2662, org.antlr.v4.runtime.Recognizer=var3808, $r18=var21, $r17=var2942}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r16 := @parameter1: java.util.BitSet;	r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r1 = <java.lang.System: java.io.PrintStream out>;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("reportAttemptingFullContext decision=");	$i2 = r2.<org.antlr.v4.runtime.dfa.DFA: int decision>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", input=");	$r9 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r10 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r11 = interfaceinvoke $r10.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r19);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r1.<java.io.PrintStream: void println(java.lang.String)>($r14);	$r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r20 == null goto return;	$r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>();	$r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAttemptingFullContext(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5);	return
;block_num 6