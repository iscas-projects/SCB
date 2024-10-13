(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3489 0)
(declare-sort var1509 0)
(declare-sort var3237 0)
(declare-sort var99 0)
(declare-sort var2273 0)
(declare-sort var3068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/95005385 (var3489 var1509 var3237) var3237)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1088573756 (var2273) var99)
(declare-fun cast-from-var3489-to-var2273 (var3489) var2273)
(declare-fun maxTokenType/-533844056 (var99) Int)
(declare-const null-var3489 var3489)
(declare-const null-var1509 var1509)
(declare-const null-var3237 var3237)
(declare-const null-Int Int)
(declare-const var3489-debug Bool)
(declare-const null-var3068 var3068)
(declare-const var898 var3489) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var898 null-var3489)))
(declare-const var1834 var1509) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var1834 null-var1509)))
(declare-const var1797 var3237) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var1797 null-var3237)))
(declare-const var2639 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2639 null-Int)))
(declare-const var2893 var3237) ; Statement: r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var2893 null-var3237)))
(define-const var1354 Bool var3489-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1354 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
(assert (not (= var2893 null-var3237))) ; Cond: r27 != null 
(assert true)
(define-const var2178 var3237 (addDFAState/95005385 var898 var1834 var2893)) ; Statement: r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var1797 null-var3237))) ; Negate: Cond: r2 == null  
(define-const var2235 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var2639 var2235))) ; Negate: Cond: i0 < $i7  
(define-const var3855 var99 (atn/1088573756 (cast-from-var3489-to-var2273 var898))) ; Statement: $r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn> 
(define-const var333 Int (maxTokenType/-533844056 var3855)) ; Statement: $i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (<= var2639 var333)) ; Cond: i0 <= $i1 
 ; Statement: entermonitor r2 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3437 var3068) ; Statement: $r26 := @caughtexception 
(assert (not (= var3437 null-var3068)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor r2 
(assert true) ; Non Conditional
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/95005385=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFA, com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1088573756=([com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATN), cast-from-var3489-to-var2273=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator), maxTokenType/-533844056=([com.github.jknack.handlebars.internal.antlr.atn.ATN], int)}
; {var3489=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var898=r0, var1509=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var1834=r1, var3237=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var1797=r2, var2639=i0, var2893=r27, var1354=$z0, var2178=r28, var2235=$i7, var99=com.github.jknack.handlebars.internal.antlr.atn.ATN, var2273=com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator, var3855=$r3, var333=$i1, var3068=java.lang.Throwable, var3437=$r26}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var3489, r0=var898, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var1509, r1=var1834, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var3237, r2=var1797, i0=var2639, r27=var2893, $z0=var1354, r28=var2178, $i7=var2235, com.github.jknack.handlebars.internal.antlr.atn.ATN=var99, com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator=var2273, $r3=var3855, $i1=var333, java.lang.Throwable=var3068, $r26=var3437}
;seq 
;cnt {}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn>;	$i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	entermonitor r2;	$r26 := @caughtexception;	exitmonitor r2;	throw $r26
;block_num 9