(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3522 0)
(declare-sort var2043 0)
(declare-sort var2725 0)
(declare-sort var267 0)
(declare-sort var184 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/638134899 (var3522 var2043 var2725) var2725)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1854001079 (var184) var267)
(declare-fun cast-from-var3522-to-var184 (var3522) var184)
(declare-fun maxTokenType/4090573 (var267) Int)
(declare-const null-var3522 var3522)
(declare-const null-var2043 var2043)
(declare-const null-var2725 var2725)
(declare-const null-Int Int)
(declare-const var3522-debug Bool)
(declare-const var1269 var3522) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1269 null-var3522)))
(declare-const var388 var2043) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var388 null-var2043)))
(declare-const var3705 var2725) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var3705 null-var2725)))
(declare-const var3742 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3742 null-Int)))
(declare-const var1915 var2725) ; Statement: r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var1915 null-var2725)))
(define-const var453 Bool var3522-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var453 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
(assert (not (= var1915 null-var2725))) ; Cond: r27 != null 
(assert true)
(define-const var3106 var2725 (addDFAState/638134899 var1269 var388 var1915)) ; Statement: r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var3705 null-var2725))) ; Negate: Cond: r2 == null  
(define-const var3675 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var3742 var3675))) ; Negate: Cond: i0 < $i7  
(define-const var2707 var267 (atn/1854001079 (cast-from-var3522-to-var184 var1269))) ; Statement: $r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn> 
(define-const var2205 Int (maxTokenType/4090573 var2707)) ; Statement: $i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (not (<= var3742 var2205))) ; Negate: Cond: i0 <= $i1  
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/638134899=([org.antlr.v4.runtime.atn.ParserATNSimulator, org.antlr.v4.runtime.dfa.DFA, org.antlr.v4.runtime.dfa.DFAState], org.antlr.v4.runtime.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1854001079=([org.antlr.v4.runtime.atn.ATNSimulator], org.antlr.v4.runtime.atn.ATN), cast-from-var3522-to-var184=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.atn.ATNSimulator), maxTokenType/4090573=([org.antlr.v4.runtime.atn.ATN], int)}
; {var3522=org.antlr.v4.runtime.atn.ParserATNSimulator, var1269=r0, var2043=org.antlr.v4.runtime.dfa.DFA, var388=r1, var2725=org.antlr.v4.runtime.dfa.DFAState, var3705=r2, var3742=i0, var1915=r27, var453=$z0, var3106=r28, var3675=$i7, var267=org.antlr.v4.runtime.atn.ATN, var184=org.antlr.v4.runtime.atn.ATNSimulator, var2707=$r3, var2205=$i1}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3522, r0=var1269, org.antlr.v4.runtime.dfa.DFA=var2043, r1=var388, org.antlr.v4.runtime.dfa.DFAState=var2725, r2=var3705, i0=var3742, r27=var1915, $z0=var453, r28=var3106, $i7=var3675, org.antlr.v4.runtime.atn.ATN=var267, org.antlr.v4.runtime.atn.ATNSimulator=var184, $r3=var2707, $i1=var2205}
;seq 
;cnt {}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r1 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: org.antlr.v4.runtime.dfa.DFAState;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.dfa.DFAState addDFAState(org.antlr.v4.runtime.dfa.DFA,org.antlr.v4.runtime.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.atn.ATN atn>;	$i1 = $r3.<org.antlr.v4.runtime.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	return r28
;block_num 6