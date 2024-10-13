(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var608 0)
(declare-sort var2505 0)
(declare-sort var51 0)
(declare-sort var3271 0)
(declare-sort var1374 0)
(declare-sort var199 0)
(declare-sort var3028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parser/145254134 (var608) var1374)
(declare-fun getErrorListenerDispatch/-1594005314 (var3028) var199)
(declare-fun cast-from-var1374-to-var3028 (var1374) var3028)
(declare-fun var199_reportAttemptingFullContext/486845351 (var199 var1374 var2505 Int Int var51 var3271) void)
(declare-const null-var608 var608)
(declare-const null-var2505 var2505)
(declare-const null-var51 var51)
(declare-const null-var3271 var3271)
(declare-const null-Int Int)
(declare-const var608-debug Bool)
(declare-const var608-retry_debug Bool)
(declare-const null-var1374 var1374)
(declare-const var1133 var608) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1133 null-var608)))
(declare-const var1178 var2505) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var1178 null-var2505)))
(declare-const var2336 var51) ; Statement: r16 := @parameter1: java.util.BitSet 
(assert (not (= var2336 null-var51)))
(declare-const var2874 var3271) ; Statement: r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var2874 null-var3271)))
(declare-const var3541 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3541 null-Int)))
(declare-const var2329 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var2329 null-Int)))
(define-const var2425 Bool var608-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var2425 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3094 Bool var608-retry_debug) ; Statement: $z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (= (ite var3094 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3858 var1374 (parser/145254134 var1133)) ; Statement: $r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r20 == null goto return 
(assert (not (= var3858 null-var1374))) ; Negate: Cond: $r20 == null  
(define-const var1069 var1374 (parser/145254134 var1133)) ; Statement: $r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var2470 var199 (getErrorListenerDispatch/-1594005314 (cast-from-var1374-to-var3028 var1069))) ; Statement: $r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var1236 var1374 (parser/145254134 var1133)) ; Statement: $r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
;(assert (var199_reportAttemptingFullContext/486845351 var2470 var1236 var1178 var3541 var2329 var2336 var2874)) ; Statement: interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAttemptingFullContext(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5) 

(declare-const var2470!1 var199)
(declare-const var1236!1 var1374)
(declare-const var1178!1 var2505)
(declare-const var3541!1 Int)
(declare-const var2329!1 Int)
(declare-const var2336!1 var51)
(declare-const var2874!1 var3271)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getErrorListenerDispatch/-1594005314=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.ANTLRErrorListener), cast-from-var1374-to-var3028=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var199_reportAttemptingFullContext/486845351=([org.antlr.v4.runtime.ANTLRErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA, int, int, java.util.BitSet, org.antlr.v4.runtime.atn.ATNConfigSet], void)}
; {var608=org.antlr.v4.runtime.atn.ParserATNSimulator, var1133=r8, var2505=org.antlr.v4.runtime.dfa.DFA, var1178=r2, var51=java.util.BitSet, var2336=r16, var3271=org.antlr.v4.runtime.atn.ATNConfigSet, var2874=r5, var3541=i0, var2329=i1, var2425=$z0, var3094=$z1, var1374=org.antlr.v4.runtime.Parser, var3858=$r20, var1069=$r15, var199=org.antlr.v4.runtime.ANTLRErrorListener, var3028=org.antlr.v4.runtime.Recognizer, var2470=$r18, var1236=$r17}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var608, r8=var1133, org.antlr.v4.runtime.dfa.DFA=var2505, r2=var1178, java.util.BitSet=var51, r16=var2336, org.antlr.v4.runtime.atn.ATNConfigSet=var3271, r5=var2874, i0=var3541, i1=var2329, $z0=var2425, $z1=var3094, org.antlr.v4.runtime.Parser=var1374, $r20=var3858, $r15=var1069, org.antlr.v4.runtime.ANTLRErrorListener=var199, org.antlr.v4.runtime.Recognizer=var3028, $r18=var2470, $r17=var1236}
;seq 
;cnt {}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r16 := @parameter1: java.util.BitSet;	r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r20 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r20 == null goto return;	$r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>();	$r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAttemptingFullContext(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5);	return
;block_num 5