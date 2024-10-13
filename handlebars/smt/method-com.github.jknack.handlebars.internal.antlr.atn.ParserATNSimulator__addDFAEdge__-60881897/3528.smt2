(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1659 0)
(declare-sort var1482 0)
(declare-sort var1450 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/95005385 (var1659 var1482 var1450) var1450)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1659 var1659)
(declare-const null-var1482 var1482)
(declare-const null-var1450 var1450)
(declare-const null-Int Int)
(declare-const var1659-debug Bool)
(declare-const var2167 var1659) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2167 null-var1659)))
(declare-const var3475 var1482) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var3475 null-var1482)))
(declare-const var3161 var1450) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var3161 null-var1450)))
(declare-const var2772 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2772 null-Int)))
(declare-const var3571 var1450) ; Statement: r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var3571 null-var1450)))
(define-const var831 Bool var1659-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var831 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
(assert (not (= var3571 null-var1450))) ; Cond: r27 != null 
(assert true)
(define-const var1655 var1450 (addDFAState/95005385 var2167 var3475 var3571)) ; Statement: r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var3161 null-var1450))) ; Negate: Cond: r2 == null  
(define-const var2823 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (< var2772 var2823)) ; Cond: i0 < $i7 
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/95005385=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFA, com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.dfa.DFAState), cast-from-Int-to-Int=([int], int)}
; {var1659=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2167=r0, var1482=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var3475=r1, var1450=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var3161=r2, var2772=i0, var3571=r27, var831=$z0, var1655=r28, var2823=$i7}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var1659, r0=var2167, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var1482, r1=var3475, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var1450, r2=var3161, i0=var2772, r27=var3571, $z0=var831, r28=var1655, $i7=var2823}
;seq 
;cnt {}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	return r28
;block_num 5