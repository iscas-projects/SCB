(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3970 0)
(declare-sort var3133 0)
(declare-sort var2872 0)
(declare-sort var107 0)
(declare-sort var3223 0)
(declare-sort var3820 0)
(declare-sort var3489 0)
(declare-sort var200 0)
(declare-sort var587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3820) String)
(declare-fun cast-from-var2872-to-var3820 (var2872) var3820)
(declare-fun getTokenName/-2026426139 (var3970 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var107 String) void)
(declare-fun addDFAState/638134899 (var3970 var3133 var2872) var2872)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1854001079 (var200) var3489)
(declare-fun cast-from-var3970-to-var200 (var3970) var200)
(declare-fun maxTokenType/4090573 (var3489) Int)
(declare-const null-var3970 var3970)
(declare-const null-var3133 var3133)
(declare-const null-var2872 var2872)
(declare-const null-Int Int)
(declare-const var3970-debug Bool)
(declare-const var3223-out var107)
(declare-const null-var587 var587)
(declare-const var1418 var3970) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1418 null-var3970)))
(declare-const var2001 var3133) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var2001 null-var3133)))
(declare-const var802 var2872) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var802 null-var2872)))
(declare-const var886 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var886 null-Int)))
(declare-const var2553 var2872) ; Statement: r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var2553 null-var2872)))
(define-const var2709 Bool var3970-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var2709 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1503 var107 var3223-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(define-const var3937 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3937)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3937!1 String)
(assert (= var3937!1 ""))
(assert true)
(define-const var3754 String (append/672562846 var3937!1 "EDGE ")) ; Statement: $r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ") 
(declare-const var3937!2 String)
(assert (= var3937!2 (str.++ var3937!1 "EDGE ")))
(assert true)
(define-const var1553 String (append/-1031950772 var3754 (cast-from-var2872-to-var3820 var802))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3754!1 String)
(assert (str.prefixof var3754 var3754!1))
(assert true)
(define-const var2493 String (append/672562846 var1553 " -> ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var1553!1 String)
(assert (= var1553!1 (str.++ var1553 " -> ")))
(assert true)
(define-const var1599 String (append/-1031950772 var2493 (cast-from-var2872-to-var3820 var2553))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27) 
(declare-const var2493!1 String)
(assert (str.prefixof var2493 var2493!1))
(assert true)
(define-const var2607 String (append/672562846 var1599 " upon ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ") 
(declare-const var1599!1 String)
(assert (= var1599!1 (str.++ var1599 " upon ")))
(assert true)
(define-const var676 String (getTokenName/-2026426139 var1418 var886)) ; Statement: $r22 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0) 
(assert true)
(define-const var1405 String (append/672562846 var2607 var676)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2607!1 String)
(assert (= var2607!1 (str.++ var2607 var676)))
(assert true)
(define-const var2310 String (toString/-2075883882 var1405)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var1503 var2310)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25) 

(declare-const var1503!1 var107)
(declare-const var2310!1 String)
(assert true) ; Non Conditional
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
(assert (not (= var2553 null-var2872))) ; Cond: r27 != null 
(assert true)
(define-const var451 var2872 (addDFAState/638134899 var1418 var2001 var2553)) ; Statement: r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var802 null-var2872))) ; Negate: Cond: r2 == null  
(define-const var12 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var886 var12))) ; Negate: Cond: i0 < $i7  
(define-const var199 var3489 (atn/1854001079 (cast-from-var3970-to-var200 var1418))) ; Statement: $r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn> 
(define-const var3384 Int (maxTokenType/4090573 var199)) ; Statement: $i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (<= var886 var3384)) ; Cond: i0 <= $i1 
 ; Statement: entermonitor r2 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2431 var587) ; Statement: $r26 := @caughtexception 
(assert (not (= var2431 null-var587)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor r2 
(assert true) ; Non Conditional
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2872-to-var3820=([org.antlr.v4.runtime.dfa.DFAState], java.lang.Object), getTokenName/-2026426139=([org.antlr.v4.runtime.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), addDFAState/638134899=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFA, org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1854001079=([org.antlr.v4.runtime.atn.ATNSimulator], org.antlr.v4.runtime.atn.ATN), cast-from-var3970-to-var200=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.atn.ATNSimulator), maxTokenType/4090573=([org.antlr.v4.runtime.atn.ATN], int)}
; {var3970=org.antlr.v4.runtime.atn.ParserATNSimulator, var1418=r0, var3133=org.antlr.v4.runtime.dfa.DFA, var2001=r1, var2872=org.antlr.v4.runtime.dfa.DFAState, var802=r2, var886=i0, var2553=r27, var2709=$z0, var107=java.io.PrintStream, var3223=java.lang.System, var1503=$r17, var3937=$r30, var3754=$r18, var3820=java.lang.Object, var1553=$r19, var2493=$r20, var1599=$r21, var2607=$r23, var676=$r22, var1405=$r24, var2310=$r25, var451=r28, var12=$i7, var3489=org.antlr.v4.runtime.atn.ATN, var200=org.antlr.v4.runtime.atn.ATNSimulator, var199=$r3, var3384=$i1, var587=java.lang.Throwable, var2431=$r26}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3970, r0=var1418, org.antlr.v4.runtime.dfa.DFA=var3133, r1=var2001, org.antlr.v4.runtime.dfa.DFAState=var2872, r2=var802, i0=var886, r27=var2553, $z0=var2709, java.io.PrintStream=var107, java.lang.System=var3223, $r17=var1503, $r30=var3937, $r18=var3754, java.lang.Object=var3820, $r19=var1553, $r20=var2493, $r21=var1599, $r23=var2607, $r22=var676, $r24=var1405, $r25=var2310, r28=var451, $i7=var12, org.antlr.v4.runtime.atn.ATN=var3489, org.antlr.v4.runtime.atn.ATNSimulator=var200, $r3=var199, $i1=var3384, java.lang.Throwable=var587, $r26=var2431}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	$r17 = <java.lang.System: java.io.PrintStream out>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ");	$r22 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25);	if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn>;	$i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	entermonitor r2;	$r26 := @caughtexception;	exitmonitor r2;	throw $r26
;block_num 10