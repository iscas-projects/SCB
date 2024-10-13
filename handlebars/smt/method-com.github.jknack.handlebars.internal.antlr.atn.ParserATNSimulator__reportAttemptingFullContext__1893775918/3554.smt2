(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3389 0)
(declare-sort var2060 0)
(declare-sort var915 0)
(declare-sort var3842 0)
(declare-sort var3667 0)
(declare-sort var1660 0)
(declare-sort var1279 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parser/310440123 (var3389) var3667)
(declare-fun getErrorListenerDispatch/1243680242 (var1279) var1660)
(declare-fun cast-from-var3667-to-var1279 (var3667) var1279)
(declare-fun var1660_reportAttemptingFullContext/1702232109 (var1660 var3667 var2060 Int Int var915 var3842) void)
(declare-const null-var3389 var3389)
(declare-const null-var2060 var2060)
(declare-const null-var915 var915)
(declare-const null-var3842 var3842)
(declare-const null-Int Int)
(declare-const var3389-debug Bool)
(declare-const var3389-retry_debug Bool)
(declare-const null-var3667 var3667)
(declare-const var2523 var3389) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2523 null-var3389)))
(declare-const var2661 var2060) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var2661 null-var2060)))
(declare-const var3091 var915) ; Statement: r16 := @parameter1: java.util.BitSet 
(assert (not (= var3091 null-var915)))
(declare-const var614 var3842) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var614 null-var3842)))
(declare-const var1165 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1165 null-Int)))
(declare-const var2858 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var2858 null-Int)))
(define-const var3469 Bool var3389-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var3469 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2226 Bool var3389-retry_debug) ; Statement: $z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (= (ite var2226 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1432 var3667 (parser/310440123 var2523)) ; Statement: $r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r20 == null goto return 
(assert (not (= var1432 null-var3667))) ; Negate: Cond: $r20 == null  
(define-const var2634 var3667 (parser/310440123 var2523)) ; Statement: $r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var2121 var1660 (getErrorListenerDispatch/1243680242 (cast-from-var3667-to-var1279 var2634))) ; Statement: $r18 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var2485 var3667 (parser/310440123 var2523)) ; Statement: $r17 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
;(assert (var1660_reportAttemptingFullContext/1702232109 var2121 var2485 var2661 var1165 var2858 var3091 var614)) ; Statement: interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportAttemptingFullContext(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,java.util.BitSet,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5) 

(declare-const var2121!1 var1660)
(declare-const var2485!1 var3667)
(declare-const var2661!1 var2060)
(declare-const var1165!1 Int)
(declare-const var2858!1 Int)
(declare-const var3091!1 var915)
(declare-const var614!1 var3842)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getErrorListenerDispatch/1243680242=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener), cast-from-var3667-to-var1279=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), var1660_reportAttemptingFullContext/1702232109=([com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, com.github.jknack.handlebars.internal.antlr.Parser, com.github.jknack.handlebars.internal.antlr.dfa.DFA, int, int, java.util.BitSet, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], void)}
; {var3389=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2523=r8, var2060=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var2661=r2, var915=java.util.BitSet, var3091=r16, var3842=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var614=r5, var1165=i0, var2858=i1, var3469=$z0, var2226=$z1, var3667=com.github.jknack.handlebars.internal.antlr.Parser, var1432=$r20, var2634=$r15, var1660=com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, var1279=com.github.jknack.handlebars.internal.antlr.Recognizer, var2121=$r18, var2485=$r17}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var3389, r8=var2523, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var2060, r2=var2661, java.util.BitSet=var915, r16=var3091, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var3842, r5=var614, i0=var1165, i1=var2858, $z0=var3469, $z1=var2226, com.github.jknack.handlebars.internal.antlr.Parser=var3667, $r20=var1432, $r15=var2634, com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener=var1660, com.github.jknack.handlebars.internal.antlr.Recognizer=var1279, $r18=var2121, $r17=var2485}
;seq 
;cnt {}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r16 := @parameter1: java.util.BitSet;	r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r20 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r20 == null goto return;	$r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r18 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>();	$r17 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportAttemptingFullContext(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,java.util.BitSet,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r17, r2, i0, i1, r16, r5);	return
;block_num 5