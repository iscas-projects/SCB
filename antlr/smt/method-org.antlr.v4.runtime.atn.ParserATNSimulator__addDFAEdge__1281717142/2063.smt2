(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3741 0)
(declare-sort var2266 0)
(declare-sort var821 0)
(declare-sort var3185 0)
(declare-sort var2073 0)
(declare-sort var2087 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/638134899 (var3741 var2266 var821) var821)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1854001079 (var2073) var3185)
(declare-fun cast-from-var3741-to-var2073 (var3741) var2073)
(declare-fun maxTokenType/4090573 (var3185) Int)
(declare-fun edges/-2105354820 (var821) (Array Int var821))
(declare-const null-var3741 var3741)
(declare-const null-var2266 var2266)
(declare-const null-var821 var821)
(declare-const null-Int Int)
(declare-const var3741-debug Bool)
(declare-const null-var2087 var2087)
(declare-const var1523 var3741) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1523 null-var3741)))
(declare-const var2118 var2266) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var2118 null-var2266)))
(declare-const var1765 var821) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1765 null-var821)))
(declare-const var507 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var507 null-Int)))
(declare-const var621 var821) ; Statement: r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var621 null-var821)))
(define-const var3448 Bool var3741-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3448 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
(assert (not (= var621 null-var821))) ; Cond: r27 != null 
(assert true)
(define-const var798 var821 (addDFAState/638134899 var1523 var2118 var621)) ; Statement: r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var1765 null-var821))) ; Negate: Cond: r2 == null  
(define-const var2633 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var507 var2633))) ; Negate: Cond: i0 < $i7  
(define-const var4 var3185 (atn/1854001079 (cast-from-var3741-to-var2073 var1523))) ; Statement: $r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn> 
(define-const var2557 Int (maxTokenType/4090573 var4)) ; Statement: $i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (<= var507 var2557)) ; Cond: i0 <= $i1 
 ; Statement: entermonitor r2 
(assert true) ; Non Conditional
(define-const var103 (Array Int var821) (edges/-2105354820 var1765)) ; Statement: $r4 = r2.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.dfa.DFAState[] edges> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1971 var2087) ; Statement: $r26 := @caughtexception 
(assert (not (= var1971 null-var2087)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor r2 
(assert true) ; Non Conditional
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/638134899=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFA, org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1854001079=([org.antlr.v4.runtime.atn.ATNSimulator], org.antlr.v4.runtime.atn.ATN), cast-from-var3741-to-var2073=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.atn.ATNSimulator), maxTokenType/4090573=([org.antlr.v4.runtime.atn.ATN], int), edges/-2105354820=([org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.dfa.DFAState[])}
; {var3741=org.antlr.v4.runtime.atn.ParserATNSimulator, var1523=r0, var2266=org.antlr.v4.runtime.dfa.DFA, var2118=r1, var821=org.antlr.v4.runtime.dfa.DFAState, var1765=r2, var507=i0, var621=r27, var3448=$z0, var798=r28, var2633=$i7, var3185=org.antlr.v4.runtime.atn.ATN, var2073=org.antlr.v4.runtime.atn.ATNSimulator, var4=$r3, var2557=$i1, var103=$r4, var2087=java.lang.Throwable, var1971=$r26}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3741, r0=var1523, org.antlr.v4.runtime.dfa.DFA=var2266, r1=var2118, org.antlr.v4.runtime.dfa.DFAState=var821, r2=var1765, i0=var507, r27=var621, $z0=var3448, r28=var798, $i7=var2633, org.antlr.v4.runtime.atn.ATN=var3185, org.antlr.v4.runtime.atn.ATNSimulator=var2073, $r3=var4, $i1=var2557, $r4=var103, java.lang.Throwable=var2087, $r26=var1971}
;seq 
;cnt {}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn>;	$i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	entermonitor r2;	$r4 = r2.<org.antlr.v4.runtime.dfa.DFAState: org.antlr.v4.runtime.dfa.DFAState[] edges>;	$r26 := @caughtexception;	exitmonitor r2;	throw $r26
;block_num 10