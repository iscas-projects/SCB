(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var433 0)
(declare-sort var1752 0)
(declare-sort var2861 0)
(declare-sort var1350 0)
(declare-sort var2607 0)
(declare-sort var3638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/638134899 (var433 var1752 var2861) var2861)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1854001079 (var2607) var1350)
(declare-fun cast-from-var433-to-var2607 (var433) var2607)
(declare-fun maxTokenType/4090573 (var1350) Int)
(declare-const null-var433 var433)
(declare-const null-var1752 var1752)
(declare-const null-var2861 var2861)
(declare-const null-Int Int)
(declare-const var433-debug Bool)
(declare-const null-var3638 var3638)
(declare-const var698 var433) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var698 null-var433)))
(declare-const var2967 var1752) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var2967 null-var1752)))
(declare-const var1671 var2861) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1671 null-var2861)))
(declare-const var3312 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3312 null-Int)))
(declare-const var1479 var2861) ; Statement: r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1479 null-var2861)))
(define-const var41 Bool var433-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var41 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
(assert (not (= var1479 null-var2861))) ; Cond: r27 != null 
(assert true)
(define-const var758 var2861 (addDFAState/638134899 var698 var2967 var1479)) ; Statement: r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var1671 null-var2861))) ; Negate: Cond: r2 == null  
(define-const var3836 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var3312 var3836))) ; Negate: Cond: i0 < $i7  
(define-const var3116 var1350 (atn/1854001079 (cast-from-var433-to-var2607 var698))) ; Statement: $r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn> 
(define-const var3249 Int (maxTokenType/4090573 var3116)) ; Statement: $i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (<= var3312 var3249)) ; Cond: i0 <= $i1 
 ; Statement: entermonitor r2 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1348 var3638) ; Statement: $r26 := @caughtexception 
(assert (not (= var1348 null-var3638)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1348!1 var3638) ; Statement: $r26 := @caughtexception 
(assert (not (= var1348!1 null-var3638)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor r2 
(assert true) ; Non Conditional
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/638134899=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFA, org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1854001079=([org.antlr.v4.runtime.atn.ATNSimulator], org.antlr.v4.runtime.atn.ATN), cast-from-var433-to-var2607=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.atn.ATNSimulator), maxTokenType/4090573=([org.antlr.v4.runtime.atn.ATN], int)}
; {var433=org.antlr.v4.runtime.atn.ParserATNSimulator, var698=r0, var1752=org.antlr.v4.runtime.dfa.DFA, var2967=r1, var2861=org.antlr.v4.runtime.dfa.DFAState, var1671=r2, var3312=i0, var1479=r27, var41=$z0, var758=r28, var3836=$i7, var1350=org.antlr.v4.runtime.atn.ATN, var2607=org.antlr.v4.runtime.atn.ATNSimulator, var3116=$r3, var3249=$i1, var3638=java.lang.Throwable, var1348=$r26}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var433, r0=var698, org.antlr.v4.runtime.dfa.DFA=var1752, r1=var2967, org.antlr.v4.runtime.dfa.DFAState=var2861, r2=var1671, i0=var3312, r27=var1479, $z0=var41, r28=var758, $i7=var3836, org.antlr.v4.runtime.atn.ATN=var1350, org.antlr.v4.runtime.atn.ATNSimulator=var2607, $r3=var3116, $i1=var3249, java.lang.Throwable=var3638, $r26=var1348}
;seq 
;cnt {}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn>;	$i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	entermonitor r2;	$r26 := @caughtexception;	$r26 := @caughtexception;	exitmonitor r2;	throw $r26
;block_num 10