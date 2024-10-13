(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2046 0)
(declare-sort var3595 0)
(declare-sort var158 0)
(declare-sort var2427 0)
(declare-sort var2952 0)
(declare-sort var313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parser/145254134 (var2046) var2427)
(declare-fun getErrorListenerDispatch/-1594005314 (var313) var2952)
(declare-fun cast-from-var2427-to-var313 (var2427) var313)
(declare-fun var2952_reportContextSensitivity/-1392569832 (var2952 var2427 var3595 Int Int Int var158) void)
(declare-const null-var2046 var2046)
(declare-const null-var3595 var3595)
(declare-const null-Int Int)
(declare-const null-var158 var158)
(declare-const var2046-debug Bool)
(declare-const var2046-retry_debug Bool)
(declare-const null-var2427 var2427)
(declare-const var3211 var2046) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var3211 null-var2046)))
(declare-const var2284 var3595) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var2284 null-var3595)))
(declare-const var1156 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1156 null-Int)))
(declare-const var1520 var158) ; Statement: r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var1520 null-var158)))
(declare-const var912 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var912 null-Int)))
(declare-const var3454 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var3454 null-Int)))
(define-const var12 Bool var2046-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var12 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var457 Bool var2046-retry_debug) ; Statement: $z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (= (ite var457 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1152 var2427 (parser/145254134 var3211)) ; Statement: $r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r19 == null goto return 
(assert (not (= var1152 null-var2427))) ; Negate: Cond: $r19 == null  
(define-const var1814 var2427 (parser/145254134 var3211)) ; Statement: $r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var2423 var2952 (getErrorListenerDispatch/-1594005314 (cast-from-var2427-to-var313 var1814))) ; Statement: $r17 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var3914 var2427 (parser/145254134 var3211)) ; Statement: $r16 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
;(assert (var2952_reportContextSensitivity/-1392569832 var2423 var3914 var2284 var912 var3454 var1156 var1520)) ; Statement: interfaceinvoke $r17.<org.antlr.v4.runtime.ANTLRErrorListener: void reportContextSensitivity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,int,org.antlr.v4.runtime.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5) 

(declare-const var2423!1 var2952)
(declare-const var3914!1 var2427)
(declare-const var2284!1 var3595)
(declare-const var912!1 Int)
(declare-const var3454!1 Int)
(declare-const var1156!1 Int)
(declare-const var1520!1 var158)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getErrorListenerDispatch/-1594005314=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.ANTLRErrorListener), cast-from-var2427-to-var313=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var2952_reportContextSensitivity/-1392569832=([org.antlr.v4.runtime.ANTLRErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA, int, int, int, org.antlr.v4.runtime.atn.ATNConfigSet], void)}
; {var2046=org.antlr.v4.runtime.atn.ParserATNSimulator, var3211=r8, var3595=org.antlr.v4.runtime.dfa.DFA, var2284=r2, var1156=i3, var158=org.antlr.v4.runtime.atn.ATNConfigSet, var1520=r5, var912=i0, var3454=i1, var12=$z0, var457=$z1, var2427=org.antlr.v4.runtime.Parser, var1152=$r19, var1814=$r15, var2952=org.antlr.v4.runtime.ANTLRErrorListener, var313=org.antlr.v4.runtime.Recognizer, var2423=$r17, var3914=$r16}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var2046, r8=var3211, org.antlr.v4.runtime.dfa.DFA=var3595, r2=var2284, i3=var1156, org.antlr.v4.runtime.atn.ATNConfigSet=var158, r5=var1520, i0=var912, i1=var3454, $z0=var12, $z1=var457, org.antlr.v4.runtime.Parser=var2427, $r19=var1152, $r15=var1814, org.antlr.v4.runtime.ANTLRErrorListener=var2952, org.antlr.v4.runtime.Recognizer=var313, $r17=var2423, $r16=var3914}
;seq 
;cnt {}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r2 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	i3 := @parameter1: int;	r5 := @parameter2: org.antlr.v4.runtime.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r18 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$z1 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r19 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r19 == null goto return;	$r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r17 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>();	$r16 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	interfaceinvoke $r17.<org.antlr.v4.runtime.ANTLRErrorListener: void reportContextSensitivity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,int,org.antlr.v4.runtime.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5);	return
;block_num 5