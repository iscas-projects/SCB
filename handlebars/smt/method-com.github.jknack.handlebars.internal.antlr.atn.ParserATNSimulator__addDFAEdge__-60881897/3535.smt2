(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2714 0)
(declare-sort var1007 0)
(declare-sort var769 0)
(declare-sort var1512 0)
(declare-sort var2012 0)
(declare-sort var726 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addDFAState/95005385 (var2714 var1007 var769) var769)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun atn/1088573756 (var2012) var1512)
(declare-fun cast-from-var2714-to-var2012 (var2714) var2012)
(declare-fun maxTokenType/-533844056 (var1512) Int)
(declare-const null-var2714 var2714)
(declare-const null-var1007 var1007)
(declare-const null-var769 var769)
(declare-const null-Int Int)
(declare-const var2714-debug Bool)
(declare-const null-var726 var726)
(declare-const var468 var2714) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var468 null-var2714)))
(declare-const var3150 var1007) ; Statement: r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var3150 null-var1007)))
(declare-const var523 var769) ; Statement: r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var523 null-var769)))
(declare-const var2146 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2146 null-Int)))
(declare-const var3794 var769) ; Statement: r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var3794 null-var769)))
(define-const var309 Bool var2714-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var309 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
(assert (not (= var3794 null-var769))) ; Cond: r27 != null 
(assert true)
(define-const var1605 var769 (addDFAState/95005385 var468 var3150 var3794)) ; Statement: r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27) 
 ; Statement: if r2 == null goto return r28 
(assert (not (= var523 null-var769))) ; Negate: Cond: r2 == null  
(define-const var2444 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 < $i7 goto return r28 
(assert (not (< var2146 var2444))) ; Negate: Cond: i0 < $i7  
(define-const var205 var1512 (atn/1088573756 (cast-from-var2714-to-var2012 var468))) ; Statement: $r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn> 
(define-const var1961 Int (maxTokenType/-533844056 var205)) ; Statement: $i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType> 
 ; Statement: if i0 <= $i1 goto entermonitor r2 
(assert (<= var2146 var1961)) ; Cond: i0 <= $i1 
 ; Statement: entermonitor r2 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2006 var726) ; Statement: $r26 := @caughtexception 
(assert (not (= var2006 null-var726)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2006!1 var726) ; Statement: $r26 := @caughtexception 
(assert (not (= var2006!1 null-var726)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor r2 
(assert true) ; Non Conditional
 ; Statement: throw $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {addDFAState/95005385=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, com.github.jknack.handlebars.internal.antlr.dfa.DFA, com.github.jknack.handlebars.internal.antlr.dfa.DFAState], com.github.jknack.handlebars.internal.antlr.dfa.DFAState), cast-from-Int-to-Int=([int], int), atn/1088573756=([com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATN), cast-from-var2714-to-var2012=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator), maxTokenType/-533844056=([com.github.jknack.handlebars.internal.antlr.atn.ATN], int)}
; {var2714=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var468=r0, var1007=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var3150=r1, var769=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var523=r2, var2146=i0, var3794=r27, var309=$z0, var1605=r28, var2444=$i7, var1512=com.github.jknack.handlebars.internal.antlr.atn.ATN, var2012=com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator, var205=$r3, var1961=$i1, var726=java.lang.Throwable, var2006=$r26}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2714, r0=var468, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var1007, r1=var3150, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var769, r2=var523, i0=var2146, r27=var3794, $z0=var309, r28=var1605, $i7=var2444, com.github.jknack.handlebars.internal.antlr.atn.ATN=var1512, com.github.jknack.handlebars.internal.antlr.atn.ATNSimulator=var2012, $r3=var205, $i1=var1961, java.lang.Throwable=var726, $r26=var2006}
;seq 
;cnt {}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r1 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r2 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	r27 := @parameter3: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 == 0 goto (branch);	if r27 != null goto r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	r28 = virtualinvoke r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.dfa.DFAState addDFAState(com.github.jknack.handlebars.internal.antlr.dfa.DFA,com.github.jknack.handlebars.internal.antlr.dfa.DFAState)>(r1, r27);	if r2 == null goto return r28;	$i7 = (int) -1;	if i0 < $i7 goto return r28;	$r3 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.atn.ATN atn>;	$i1 = $r3.<com.github.jknack.handlebars.internal.antlr.atn.ATN: int maxTokenType>;	if i0 <= $i1 goto entermonitor r2;	entermonitor r2;	$r26 := @caughtexception;	$r26 := @caughtexception;	exitmonitor r2;	throw $r26
;block_num 10