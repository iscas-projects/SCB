(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var587 0)
(declare-sort var1520 0)
(declare-sort var3631 0)
(declare-sort var2352 0)
(declare-sort var2962 0)
(declare-sort var514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/95005385 (var587 var1520 var3631) var3631)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1088573756 (var2962) var2352)
(declare-fun cast-from-var587-to-var2962 (var587) var2962)
(declare-fun maxTokenType/-533844056 (var2352) Int)
(declare-fun edges/729997761 (var3631) (Array Int var3631))
(declare-const null-var587 var587)
(declare-const null-var1520 var1520)
(declare-const null-var3631 var3631)
(declare-const null-Int Int)
(declare-const var587-debug Bool)
(declare-const null-var514 var514)
(declare-const var1876 var587) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var1876 null-var587)))
(declare-const var325 var1520) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var325 null-var1520)))
(declare-const var3936 var3631) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var3936 null-var3631)))
(declare-const var549 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var549 null-Int)))
(declare-const var2372 var3631) ; Statement: r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var2372 null-var3631)))
(define-const var1578 Bool var587-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1578 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
(assert (not (= var2372 null-var3631))) ; Cond: r27 != null 
(assert true)
(define-const var1338 var3631 (addDFAState/95005385 var1876 var325 var2372)) ; Statement: r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var3936 null-var3631))) ; Negate: Cond: r2 == null  
(define-const var3467 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var549 var3467))) ; Negate: Cond: i0 < $i7  
(define-const var455 var2352 (atn/1088573756 (cast-from-var587-to-var2962 var1876))) ; Statement: $r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn> 
(define-const var1917 Int (maxTokenType/-533844056 var455)) ; Statement: $i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (<= var549 var1917)) ; Cond: i0 <= $i1 
 ; Statement: entermonitor r2 
(assert true) ; Non Conditional
(define-const var809 (Array Int var3631) (edges/729997761 var3936)) ; Statement: $r4 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.dfa.DFAState[] edges> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3554 var514) ; Statement: $r26 := @caughtexception 
(assert (not (= var3554 null-var514)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor r2 
(assert true) ; Non Conditional
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/95005385=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFA, com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1088573756=([com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATN), cast-from-var587-to-var2962=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator), maxTokenType/-533844056=([com.github.jknack.handlebars.internal.antlr.atn.ATN], int), edges/729997761=([com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.dfa.DFAState[])}
; {var587=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var1876=r0, var1520=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var325=r1, var3631=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var3936=r2, var549=i0, var2372=r27, var1578=$z0, var1338=r28, var3467=$i7, var2352=com.github.jknack.handlebars.internal.antlr.atn.ATN, var2962=com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator, var455=$r3, var1917=$i1, var809=$r4, var514=java.lang.Throwable, var3554=$r26}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var587, r0=var1876, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var1520, r1=var325, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var3631, r2=var3936, i0=var549, r27=var2372, $z0=var1578, r28=var1338, $i7=var3467, com.github.jknack.handlebars.internal.antlr.atn.ATN=var2352, com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator=var2962, $r3=var455, $i1=var1917, $r4=var809, java.lang.Throwable=var514, $r26=var3554}
;seq 
;cnt {}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn>;	$i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	entermonitor r2;	$r4 = r2.<com.github.jknack.handlebars.internal.antlr.dfa.DFAState: com.github.jknack.handlebars.internal.antlr.dfa.DFAState[] edges>;	$r26 := @caughtexception;	exitmonitor r2;	throw $r26
;block_num 10