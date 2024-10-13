(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3368 0)
(declare-sort var3257 0)
(declare-sort var2320 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/638134899 (var3368 var3257 var2320) var2320)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3368 var3368)
(declare-const null-var3257 var3257)
(declare-const null-var2320 var2320)
(declare-const null-Int Int)
(declare-const var3368-debug Bool)
(declare-const var2683 var3368) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var2683 null-var3368)))
(declare-const var2309 var3257) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var2309 null-var3257)))
(declare-const var3765 var2320) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var3765 null-var2320)))
(declare-const var2232 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2232 null-Int)))
(declare-const var1129 var2320) ; Statement: r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1129 null-var2320)))
(define-const var868 Bool var3368-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var868 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
(assert (not (= var1129 null-var2320))) ; Cond: r27 != null 
(assert true)
(define-const var3404 var2320 (addDFAState/638134899 var2683 var2309 var1129)) ; Statement: r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var3765 null-var2320))) ; Negate: Cond: r2 == null  
(define-const var1187 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (< var2232 var1187)) ; Cond: i0 < $i7 
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/638134899=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFA, org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.dfa.DFAState), cast-from-Int-to-Int=([int], int)}
; {var3368=org.antlr.v4.runtime.atn.ParserATNSimulator, var2683=r0, var3257=org.antlr.v4.runtime.dfa.DFA, var2309=r1, var2320=org.antlr.v4.runtime.dfa.DFAState, var3765=r2, var2232=i0, var1129=r27, var868=$z0, var3404=r28, var1187=$i7}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3368, r0=var2683, org.antlr.v4.runtime.dfa.DFA=var3257, r1=var2309, org.antlr.v4.runtime.dfa.DFAState=var2320, r2=var3765, i0=var2232, r27=var1129, $z0=var868, r28=var3404, $i7=var1187}
;seq 
;cnt {}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	return r28
;block_num 5