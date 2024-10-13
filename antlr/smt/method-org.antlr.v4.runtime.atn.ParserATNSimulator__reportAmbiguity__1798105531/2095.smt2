(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1728 0)
(declare-sort var2640 0)
(declare-sort var2388 0)
(declare-sort var1716 0)
(declare-sort var1489 0)
(declare-sort var1857 0)
(declare-sort var1896 0)
(declare-sort var1190 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parser/145254134 (var1728) var1857)
(declare-fun getErrorListenerDispatch/-1594005314 (var1190) var1896)
(declare-fun cast-from-var1857-to-var1190 (var1857) var1190)
(declare-fun var1896_reportAmbiguity/-1406905171 (var1896 var1857 var2640 Int Int Bool var1716 var1489) void)
(declare-const null-var1728 var1728)
(declare-const null-var2640 var2640)
(declare-const null-var2388 var2388)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var1716 var1716)
(declare-const null-var1489 var1489)
(declare-const var1728-debug Bool)
(declare-const var1728-retry_debug Bool)
(declare-const null-var1857 var1857)
(declare-const var3458 var1728) ; Statement: r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var3458 null-var1728)))
(declare-const var1854 var2640) ; Statement: r16 := @parameter0: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var1854 null-var2640)))
(declare-const var111 var2388) ; Statement: r20 := @parameter1: org.antlr.v4.runtime.dfa.DFAState 
(assert (not (= var111 null-var2388)))
(declare-const var2818 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2818 null-Int)))
(declare-const var1522 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1522 null-Int)))
(declare-const var2188 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var2188 null-Bool)))
(declare-const var1162 var1716) ; Statement: r2 := @parameter5: java.util.BitSet 
(assert (not (= var1162 null-var1716)))
(declare-const var3492 var1489) ; Statement: r5 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var3492 null-var1489)))
(define-const var3951 Bool var1728-debug) ; Statement: $z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var3951 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2243 Bool var1728-retry_debug) ; Statement: $z2 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z2 == 0 goto $r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (= (ite var2243 1 0) 0)) ; Cond: $z2 == 0 
(define-const var236 var1857 (parser/145254134 var3458)) ; Statement: $r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r21 == null goto return 
(assert (not (= var236 null-var1857))) ; Negate: Cond: $r21 == null  
(define-const var307 var1857 (parser/145254134 var3458)) ; Statement: $r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var995 var1896 (getErrorListenerDispatch/-1594005314 (cast-from-var1857-to-var1190 var307))) ; Statement: $r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var998 var1857 (parser/145254134 var3458)) ; Statement: $r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
;(assert (var1896_reportAmbiguity/-1406905171 var995 var998 var1854 var2818 var1522 var2188 var1162 var3492)) ; Statement: interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAmbiguity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,boolean,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r16, i0, i1, z1, r2, r5) 

(declare-const var995!1 var1896)
(declare-const var998!1 var1857)
(declare-const var1854!1 var2640)
(declare-const var2818!1 Int)
(declare-const var1522!1 Int)
(declare-const var2188!1 Bool)
(declare-const var1162!1 var1716)
(declare-const var3492!1 var1489)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getErrorListenerDispatch/-1594005314=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.ANTLRErrorListener), cast-from-var1857-to-var1190=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var1896_reportAmbiguity/-1406905171=([org.antlr.v4.runtime.ANTLRErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA, int, int, boolean, java.util.BitSet, org.antlr.v4.runtime.atn.ATNConfigSet], void)}
; {var1728=org.antlr.v4.runtime.atn.ParserATNSimulator, var3458=r8, var2640=org.antlr.v4.runtime.dfa.DFA, var1854=r16, var2388=org.antlr.v4.runtime.dfa.DFAState, var111=r20, var2818=i0, var1522=i1, var2188=z1, var1716=java.util.BitSet, var1162=r2, var1489=org.antlr.v4.runtime.atn.ATNConfigSet, var3492=r5, var3951=$z0, var2243=$z2, var1857=org.antlr.v4.runtime.Parser, var236=$r21, var307=$r15, var1896=org.antlr.v4.runtime.ANTLRErrorListener, var1190=org.antlr.v4.runtime.Recognizer, var995=$r18, var998=$r17}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var1728, r8=var3458, org.antlr.v4.runtime.dfa.DFA=var2640, r16=var1854, org.antlr.v4.runtime.dfa.DFAState=var2388, r20=var111, i0=var2818, i1=var1522, z1=var2188, java.util.BitSet=var1716, r2=var1162, org.antlr.v4.runtime.atn.ATNConfigSet=var1489, r5=var3492, $z0=var3951, $z2=var2243, org.antlr.v4.runtime.Parser=var1857, $r21=var236, $r15=var307, org.antlr.v4.runtime.ANTLRErrorListener=var1896, org.antlr.v4.runtime.Recognizer=var1190, $r18=var995, $r17=var998}
;seq 
;cnt {}
;stmts r8 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	r16 := @parameter0: org.antlr.v4.runtime.dfa.DFA;	r20 := @parameter1: org.antlr.v4.runtime.dfa.DFAState;	i0 := @parameter2: int;	i1 := @parameter3: int;	z1 := @parameter4: boolean;	r2 := @parameter5: java.util.BitSet;	r5 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet;	$z0 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$z2 = <org.antlr.v4.runtime.atn.ParserATNSimulator: boolean retry_debug>;	if $z2 == 0 goto $r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r21 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r21 == null goto return;	$r15 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r18 = virtualinvoke $r15.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.ANTLRErrorListener getErrorListenerDispatch()>();	$r17 = r8.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	interfaceinvoke $r18.<org.antlr.v4.runtime.ANTLRErrorListener: void reportAmbiguity(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA,int,int,boolean,java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>($r17, r16, i0, i1, z1, r2, r5);	return
;block_num 5