(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2807 0)
(declare-sort var641 0)
(declare-sort var1601 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/638134899 (var2807 var641 var1601) var1601)
(declare-const null-var2807 var2807)
(declare-const null-var641 var641)
(declare-const null-var1601 var1601)
(declare-const null-Int Int)
(declare-const var2807-debug Bool)
(declare-const var170 var2807) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var170 null-var2807)))
(declare-const var863 var641) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var863 null-var641)))
(declare-const var1631 var1601) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1631 null-var1601)))
(declare-const var419 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var419 null-Int)))
(declare-const var2527 var1601) ; Statement: r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var2527 null-var1601)))
(define-const var3331 Bool var2807-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var3331 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
(assert (not (= var2527 null-var1601))) ; Cond: r27 != null 
(assert true)
(define-const var1436 var1601 (addDFAState/638134899 var170 var863 var2527)) ; Statement: r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (= var1631 null-var1601)) ; Cond: r2 == null 
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/638134899=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFA, org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.dfa.DFAState)}
; {var2807=org.antlr.v4.runtime.atn.ParserATNSimulator, var170=r0, var641=org.antlr.v4.runtime.dfa.DFA, var863=r1, var1601=org.antlr.v4.runtime.dfa.DFAState, var1631=r2, var419=i0, var2527=r27, var3331=$z0, var1436=r28}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var2807, r0=var170, org.antlr.v4.runtime.dfa.DFA=var641, r1=var863, org.antlr.v4.runtime.dfa.DFAState=var1601, r2=var1631, i0=var419, r27=var2527, $z0=var3331, r28=var1436}
;seq 
;cnt {}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	return r28
;block_num 4