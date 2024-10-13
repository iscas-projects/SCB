(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1163 0)
(declare-sort var2051 0)
(declare-sort var3410 0)
(declare-sort var1948 0)
(declare-sort var2908 0)
(declare-sort var3031 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parser/310440123 (var1163) var1948)
(declare-fun getErrorListenerDispatch/1243680242 (var3031) var2908)
(declare-fun cast-from-var1948-to-var3031 (var1948) var3031)
(declare-fun var2908_reportContextSensitivity/153253860 (var2908 var1948 var2051 Int Int Int var3410) void)
(declare-const null-var1163 var1163)
(declare-const null-var2051 var2051)
(declare-const null-Int Int)
(declare-const null-var3410 var3410)
(declare-const var1163-debug Bool)
(declare-const var1163-retry_debug Bool)
(declare-const null-var1948 var1948)
(declare-const var2906 var1163) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2906 null-var1163)))
(declare-const var3654 var2051) ; Statement: r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var3654 null-var2051)))
(declare-const var1647 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1647 null-Int)))
(declare-const var379 var3410) ; Statement: r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var379 null-var3410)))
(declare-const var3046 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var3046 null-Int)))
(declare-const var6 Int) ; Statement: i1 := @parameter4: int 
(assert (not (= var6 null-Int)))
(define-const var1708 Bool var1163-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var1708 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3319 Bool var1163-retry_debug) ; Statement: $z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z1 == 0 goto $r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (= (ite var3319 1 0) 0)) ; Cond: $z1 == 0 
(define-const var384 var1948 (parser/310440123 var2906)) ; Statement: $r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r19 == null goto return 
(assert (not (= var384 null-var1948))) ; Negate: Cond: $r19 == null  
(define-const var2228 var1948 (parser/310440123 var2906)) ; Statement: $r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var632 var2908 (getErrorListenerDispatch/1243680242 (cast-from-var1948-to-var3031 var2228))) ; Statement: $r17 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var3986 var1948 (parser/310440123 var2906)) ; Statement: $r16 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
;(assert (var2908_reportContextSensitivity/153253860 var632 var3986 var3654 var3046 var6 var1647 var379)) ; Statement: interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportContextSensitivity(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,int,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5) 

(declare-const var632!1 var2908)
(declare-const var3986!1 var1948)
(declare-const var3654!1 var2051)
(declare-const var3046!1 Int)
(declare-const var6!1 Int)
(declare-const var1647!1 Int)
(declare-const var379!1 var3410)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getErrorListenerDispatch/1243680242=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener), cast-from-var1948-to-var3031=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), var2908_reportContextSensitivity/153253860=([com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, com.github.jknack.handlebars.internal.antlr.Parser, com.github.jknack.handlebars.internal.antlr.dfa.DFA, int, int, int, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], void)}
; {var1163=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2906=r8, var2051=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var3654=r2, var1647=i3, var3410=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var379=r5, var3046=i0, var6=i1, var1708=$z0, var3319=$z1, var1948=com.github.jknack.handlebars.internal.antlr.Parser, var384=$r19, var2228=$r15, var2908=com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, var3031=com.github.jknack.handlebars.internal.antlr.Recognizer, var632=$r17, var3986=$r16}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var1163, r8=var2906, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var2051, r2=var3654, i3=var1647, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var3410, r5=var379, i0=var3046, i1=var6, $z0=var1708, $z1=var3319, com.github.jknack.handlebars.internal.antlr.Parser=var1948, $r19=var384, $r15=var2228, com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener=var2908, com.github.jknack.handlebars.internal.antlr.Recognizer=var3031, $r17=var632, $r16=var3986}
;seq 
;cnt {}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r2 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	i3 := @parameter1: int;	r5 := @parameter2: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	i0 := @parameter3: int;	i1 := @parameter4: int;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r18 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$z1 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug>;	if $z1 == 0 goto $r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r19 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r19 == null goto return;	$r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r17 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>();	$r16 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	interfaceinvoke $r17.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportContextSensitivity(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,int,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r16, r2, i0, i1, i3, r5);	return
;block_num 5