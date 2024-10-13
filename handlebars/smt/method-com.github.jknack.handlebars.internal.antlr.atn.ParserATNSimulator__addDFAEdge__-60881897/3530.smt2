(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3872 0)
(declare-sort var3829 0)
(declare-sort var619 0)
(declare-sort var3326 0)
(declare-sort var3489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/95005385 (var3872 var3829 var619) var619)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1088573756 (var3489) var3326)
(declare-fun cast-from-var3872-to-var3489 (var3872) var3489)
(declare-fun maxTokenType/-533844056 (var3326) Int)
(declare-const null-var3872 var3872)
(declare-const null-var3829 var3829)
(declare-const null-var619 var619)
(declare-const null-Int Int)
(declare-const var3872-debug Bool)
(declare-const var1734 var3872) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var1734 null-var3872)))
(declare-const var2569 var3829) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var2569 null-var3829)))
(declare-const var1781 var619) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var1781 null-var619)))
(declare-const var3979 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3979 null-Int)))
(declare-const var1536 var619) ; Statement: r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var1536 null-var619)))
(define-const var374 Bool var3872-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var374 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
(assert (not (= var1536 null-var619))) ; Cond: r27 != null 
(assert true)
(define-const var2572 var619 (addDFAState/95005385 var1734 var2569 var1536)) ; Statement: r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var1781 null-var619))) ; Negate: Cond: r2 == null  
(define-const var2480 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var3979 var2480))) ; Negate: Cond: i0 < $i7  
(define-const var2992 var3326 (atn/1088573756 (cast-from-var3872-to-var3489 var1734))) ; Statement: $r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn> 
(define-const var1732 Int (maxTokenType/-533844056 var2992)) ; Statement: $i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (not (<= var3979 var1732))) ; Negate: Cond: i0 <= $i1  
 ; Statement: return r28 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/95005385=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFA, com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1088573756=([com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATN), cast-from-var3872-to-var3489=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator), maxTokenType/-533844056=([com.github.jknack.handlebars.internal.antlr.atn.ATN], int)}
; {var3872=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var1734=r0, var3829=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var2569=r1, var619=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var1781=r2, var3979=i0, var1536=r27, var374=$z0, var2572=r28, var2480=$i7, var3326=com.github.jknack.handlebars.internal.antlr.atn.ATN, var3489=com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator, var2992=$r3, var1732=$i1}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var3872, r0=var1734, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var3829, r1=var2569, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var619, r2=var1781, i0=var3979, r27=var1536, $z0=var374, r28=var2572, $i7=var2480, com.github.jknack.handlebars.internal.antlr.atn.ATN=var3326, com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator=var3489, $r3=var2992, $i1=var1732}
;seq 
;cnt {}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn>;	$i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	return r28
;block_num 6