(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3968 0)
(declare-sort var2410 0)
(declare-sort var2143 0)
(declare-sort var3127 0)
(declare-sort var1981 0)
(declare-sort var2445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/638134899 (var3968 var2410 var2143) var2143)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1854001079 (var1981) var3127)
(declare-fun cast-from-var3968-to-var1981 (var3968) var1981)
(declare-fun maxTokenType/4090573 (var3127) Int)
(declare-const null-var3968 var3968)
(declare-const null-var2410 var2410)
(declare-const null-var2143 var2143)
(declare-const null-Int Int)
(declare-const var3968-debug Bool)
(declare-const null-var2445 var2445)
(declare-const var227 var3968) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var227 null-var3968)))
(declare-const var1059 var2410) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var1059 null-var2410)))
(declare-const var3245 var2143) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var3245 null-var2143)))
(declare-const var2131 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2131 null-Int)))
(declare-const var2259 var2143) ; Statement: r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var2259 null-var2143)))
(define-const var393 Bool var3968-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var393 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
(assert (not (= var2259 null-var2143))) ; Cond: r27 != null 
(assert true)
(define-const var2067 var2143 (addDFAState/638134899 var227 var1059 var2259)) ; Statement: r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var3245 null-var2143))) ; Negate: Cond: r2 == null  
(define-const var847 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var2131 var847))) ; Negate: Cond: i0 < $i7  
(define-const var1035 var3127 (atn/1854001079 (cast-from-var3968-to-var1981 var227))) ; Statement: $r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn> 
(define-const var3667 Int (maxTokenType/4090573 var1035)) ; Statement: $i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (<= var2131 var3667)) ; Cond: i0 <= $i1 
 ; Statement: entermonitor r2 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1642 var2445) ; Statement: $r26 := @caughtexception 
(assert (not (= var1642 null-var2445)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor r2 
(assert true) ; Non Conditional
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/638134899=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFA, org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1854001079=([org.antlr.v4.runtime.atn.ATNSimulator], org.antlr.v4.runtime.atn.ATN), cast-from-var3968-to-var1981=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.atn.ATNSimulator), maxTokenType/4090573=([org.antlr.v4.runtime.atn.ATN], int)}
; {var3968=org.antlr.v4.runtime.atn.ParserATNSimulator, var227=r0, var2410=org.antlr.v4.runtime.dfa.DFA, var1059=r1, var2143=org.antlr.v4.runtime.dfa.DFAState, var3245=r2, var2131=i0, var2259=r27, var393=$z0, var2067=r28, var847=$i7, var3127=org.antlr.v4.runtime.atn.ATN, var1981=org.antlr.v4.runtime.atn.ATNSimulator, var1035=$r3, var3667=$i1, var2445=java.lang.Throwable, var1642=$r26}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3968, r0=var227, org.antlr.v4.runtime.dfa.DFA=var2410, r1=var1059, org.antlr.v4.runtime.dfa.DFAState=var2143, r2=var3245, i0=var2131, r27=var2259, $z0=var393, r28=var2067, $i7=var847, org.antlr.v4.runtime.atn.ATN=var3127, org.antlr.v4.runtime.atn.ATNSimulator=var1981, $r3=var1035, $i1=var3667, java.lang.Throwable=var2445, $r26=var1642}
;seq 
;cnt {}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn>;	$i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	entermonitor r2;	$r26 := @caughtexception;	exitmonitor r2;	throw $r26
;block_num 9