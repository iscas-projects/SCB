(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2493 0)
(declare-sort var1275 0)
(declare-sort var2278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/95005385 (var2493 var1275 var2278) var2278)
(declare-const null-var2493 var2493)
(declare-const null-var1275 var1275)
(declare-const null-var2278 var2278)
(declare-const null-Int Int)
(declare-const var2493-debug Bool)
(declare-const var2421 var2493) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2421 null-var2493)))
(declare-const var1861 var1275) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var1861 null-var1275)))
(declare-const var387 var2278) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var387 null-var2278)))
(declare-const var2914 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2914 null-Int)))
(declare-const var911 var2278) ; Statement: r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var911 null-var2278)))
(define-const var888 Bool var2493-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var888 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
(assert (not (= var911 null-var2278))) ; Cond: r27 != null 
(assert true)
(define-const var1003 var2278 (addDFAState/95005385 var2421 var1861 var911)) ; Statement: r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (= var387 null-var2278)) ; Cond: r2 == null 
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/95005385=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFA, com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.dfa.DFAState)}
; {var2493=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2421=r0, var1275=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var1861=r1, var2278=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var387=r2, var2914=i0, var911=r27, var888=$z0, var1003=r28}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2493, r0=var2421, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var1275, r1=var1861, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var2278, r2=var387, i0=var2914, r27=var911, $z0=var888, r28=var1003}
;seq 
;cnt {}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	return r28
;block_num 4