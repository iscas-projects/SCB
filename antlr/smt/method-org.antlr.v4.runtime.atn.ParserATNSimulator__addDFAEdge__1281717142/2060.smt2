(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2716 0)
(declare-sort var1954 0)
(declare-sort var883 0)
(declare-sort var160 0)
(declare-sort var117 0)
(declare-sort var3677 0)
(declare-sort var1389 0)
(declare-sort var2032 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3677) String)
(declare-fun cast-from-var883-to-var3677 (var883) var3677)
(declare-fun getTokenName/-2026426139 (var2716 Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun println/1773605060 (var160 String) void)
(declare-fun addDFAState/638134899 (var2716 var1954 var883) var883)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1854001079 (var2032) var1389)
(declare-fun cast-from-var2716-to-var2032 (var2716) var2032)
(declare-fun maxTokenType/4090573 (var1389) Int)
(declare-const null-var2716 var2716)
(declare-const null-var1954 var1954)
(declare-const null-var883 var883)
(declare-const null-Int Int)
(declare-const var2716-debug Bool)
(declare-const var117-out var160)
(declare-const var2424 var2716) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var2424 null-var2716)))
(declare-const var884 var1954) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var884 null-var1954)))
(declare-const var1398 var883) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1398 null-var883)))
(declare-const var3320 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3320 null-Int)))
(declare-const var1116 var883) ; Statement: r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1116 null-var883)))
(define-const var1575 Bool var2716-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var1575 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3202 var160 var117-out) ; Statement: $r17 = <java.lang.System: java.io.PrintStream out> 
(define-const var2072 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2072)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2072!1 String)
(assert (= var2072!1 ""))
(assert true)
(define-const var3143 String (append/672562846 var2072!1 "EDGE ")) ; Statement: $r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ") 
(declare-const var2072!2 String)
(assert (= var2072!2 (str.++ var2072!1 "EDGE ")))
(assert true)
(define-const var241 String (append/-1031950772 var3143 (cast-from-var883-to-var3677 var1398))) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3143!1 String)
(assert (str.prefixof var3143 var3143!1))
(assert true)
(define-const var38 String (append/672562846 var241 " -> ")) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var241!1 String)
(assert (= var241!1 (str.++ var241 " -> ")))
(assert true)
(define-const var2848 String (append/-1031950772 var38 (cast-from-var883-to-var3677 var1116))) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27) 
(declare-const var38!1 String)
(assert (str.prefixof var38 var38!1))
(assert true)
(define-const var3870 String (append/672562846 var2848 " upon ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ") 
(declare-const var2848!1 String)
(assert (= var2848!1 (str.++ var2848 " upon ")))
(assert true)
(define-const var1095 String (getTokenName/-2026426139 var2424 var3320)) ; Statement: $r22 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0) 
(assert true)
(define-const var342 String (append/672562846 var3870 var1095)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3870!1 String)
(assert (= var3870!1 (str.++ var3870 var1095)))
(assert true)
(define-const var200 String (toString/-2075883882 var342)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (println/1773605060 var3202 var200)) ; Statement: virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25) 

(declare-const var3202!1 var160)
(declare-const var200!1 String)
(assert true) ; Non Conditional
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
(assert (not (= var1116 null-var883))) ; Cond: r27 != null 
(assert true)
(define-const var2631 var883 (addDFAState/638134899 var2424 var884 var1116)) ; Statement: r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var1398 null-var883))) ; Negate: Cond: r2 == null  
(define-const var3545 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var3320 var3545))) ; Negate: Cond: i0 < $i7  
(define-const var33 var1389 (atn/1854001079 (cast-from-var2716-to-var2032 var2424))) ; Statement: $r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn> 
(define-const var722 Int (maxTokenType/4090573 var33)) ; Statement: $i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (not (<= var3320 var722))) ; Negate: Cond: i0 <= $i1  
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var883-to-var3677=([org.antlr.v4.runtime.dfa.DFAState], java.lang.Object), getTokenName/-2026426139=([org.antlr.v4.runtime.atn.ParserATNSimulator, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), println/1773605060=([java.io.PrintStream, java.lang.String], void), addDFAState/638134899=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFA, org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1854001079=([org.antlr.v4.runtime.atn.ATNSimulator], org.antlr.v4.runtime.atn.ATN), cast-from-var2716-to-var2032=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.atn.ATNSimulator), maxTokenType/4090573=([org.antlr.v4.runtime.atn.ATN], int)}
; {var2716=org.antlr.v4.runtime.atn.ParserATNSimulator, var2424=r0, var1954=org.antlr.v4.runtime.dfa.DFA, var884=r1, var883=org.antlr.v4.runtime.dfa.DFAState, var1398=r2, var3320=i0, var1116=r27, var1575=$z0, var160=java.io.PrintStream, var117=java.lang.System, var3202=$r17, var2072=$r30, var3143=$r18, var3677=java.lang.Object, var241=$r19, var38=$r20, var2848=$r21, var3870=$r23, var1095=$r22, var342=$r24, var200=$r25, var2631=r28, var3545=$i7, var1389=org.antlr.v4.runtime.atn.ATN, var2032=org.antlr.v4.runtime.atn.ATNSimulator, var33=$r3, var722=$i1}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var2716, r0=var2424, org.antlr.v4.runtime.dfa.DFA=var1954, r1=var884, org.antlr.v4.runtime.dfa.DFAState=var883, r2=var1398, i0=var3320, r27=var1116, $z0=var1575, java.io.PrintStream=var160, java.lang.System=var117, $r17=var3202, $r30=var2072, $r18=var3143, java.lang.Object=var3677, $r19=var241, $r20=var38, $r21=var2848, $r23=var3870, $r22=var1095, $r24=var342, $r25=var200, r28=var2631, $i7=var3545, org.antlr.v4.runtime.atn.ATN=var1389, org.antlr.v4.runtime.atn.ATNSimulator=var2032, $r3=var33, $i1=var722}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	$r17 = <java.lang.System: java.io.PrintStream out>;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EDGE ");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r27);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" upon ");	$r22 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: java.lang.String getTokenName(int)>(i0);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r17.<java.io.PrintStream: void println(java.lang.String)>($r25);	if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn>;	$i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	return r28
;block_num 7