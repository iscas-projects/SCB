(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var867 0)
(declare-sort var59 0)
(declare-sort var2884 0)
(declare-sort var3718 0)
(declare-sort var3171 0)
(declare-sort var1929 0)
(declare-sort var158 0)
(declare-sort var3405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parser/310440123 (var867) var1929)
(declare-fun getErrorListenerDispatch/1243680242 (var3405) var158)
(declare-fun cast-from-var1929-to-var3405 (var1929) var3405)
(declare-fun var158_reportAmbiguity/-381263513 (var158 var1929 var59 Int Int Bool var3718 var3171) void)
(declare-const null-var867 var867)
(declare-const null-var59 var59)
(declare-const null-var2884 var2884)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3718 var3718)
(declare-const null-var3171 var3171)
(declare-const var867-debug Bool)
(declare-const var867-retry_debug Bool)
(declare-const null-var1929 var1929)
(declare-const var2437 var867) ; Statement: r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2437 null-var867)))
(declare-const var3453 var59) ; Statement: r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA 
(assert (not (= var3453 null-var59)))
(declare-const var1055 var2884) ; Statement: r20 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState 
(assert (not (= var1055 null-var2884)))
(declare-const var3783 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3783 null-Int)))
(declare-const var923 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var923 null-Int)))
(declare-const var1897 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var1897 null-Bool)))
(declare-const var3656 var3718) ; Statement: r2 := @parameter5: java.util.BitSet 
(assert (not (= var3656 null-var3718)))
(declare-const var1417 var3171) ; Statement: r5 := @parameter6: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet 
(assert (not (= var1417 null-var3171)))
(define-const var1322 Bool var867-debug) ; Statement: $z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug> 
 ; Statement: if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1) 
(assert (not (not (= (ite var1322 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1994 Bool var867-retry_debug) ; Statement: $z2 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug> 
 ; Statement: if $z2 == 0 goto $r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (= (ite var1994 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3168 var1929 (parser/310440123 var2437)) ; Statement: $r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r21 == null goto return 
(assert (not (= var3168 null-var1929))) ; Negate: Cond: $r21 == null  
(define-const var1914 var1929 (parser/310440123 var2437)) ; Statement: $r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var526 var158 (getErrorListenerDispatch/1243680242 (cast-from-var1929-to-var3405 var1914))) ; Statement: $r18 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>() 
(define-const var272 var1929 (parser/310440123 var2437)) ; Statement: $r17 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
;(assert (var158_reportAmbiguity/-381263513 var526 var272 var3453 var3783 var923 var1897 var3656 var1417)) ; Statement: interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportAmbiguity(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,boolean,java.util.BitSet,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r17, r16, i0, i1, z1, r2, r5) 

(declare-const var526!1 var158)
(declare-const var272!1 var1929)
(declare-const var3453!1 var59)
(declare-const var3783!1 Int)
(declare-const var923!1 Int)
(declare-const var1897!1 Bool)
(declare-const var3656!1 var3718)
(declare-const var1417!1 var3171)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getErrorListenerDispatch/1243680242=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener), cast-from-var1929-to-var3405=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), var158_reportAmbiguity/-381263513=([com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, com.github.jknack.handlebars.internal.antlr.Parser, com.github.jknack.handlebars.internal.antlr.dfa.DFA, int, int, boolean, java.util.BitSet, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet], void)}
; {var867=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2437=r8, var59=com.github.jknack.handlebars.internal.antlr.dfa.DFA, var3453=r16, var2884=com.github.jknack.handlebars.internal.antlr.dfa.DFAState, var1055=r20, var3783=i0, var923=i1, var1897=z1, var3718=java.util.BitSet, var3656=r2, var3171=com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet, var1417=r5, var1322=$z0, var1994=$z2, var1929=com.github.jknack.handlebars.internal.antlr.Parser, var3168=$r21, var1914=$r15, var158=com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener, var3405=com.github.jknack.handlebars.internal.antlr.Recognizer, var526=$r18, var272=$r17}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var867, r8=var2437, com.github.jknack.handlebars.internal.antlr.dfa.DFA=var59, r16=var3453, com.github.jknack.handlebars.internal.antlr.dfa.DFAState=var2884, r20=var1055, i0=var3783, i1=var923, z1=var1897, java.util.BitSet=var3718, r2=var3656, com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet=var3171, r5=var1417, $z0=var1322, $z2=var1994, com.github.jknack.handlebars.internal.antlr.Parser=var1929, $r21=var3168, $r15=var1914, com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener=var158, com.github.jknack.handlebars.internal.antlr.Recognizer=var3405, $r18=var526, $r17=var272}
;seq 
;cnt {}
;stmts r8 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	r16 := @parameter0: com.github.jknack.handlebars.internal.antlr.dfa.DFA;	r20 := @parameter1: com.github.jknack.handlebars.internal.antlr.dfa.DFAState;	i0 := @parameter2: int;	i1 := @parameter3: int;	z1 := @parameter4: boolean;	r2 := @parameter5: java.util.BitSet;	r5 := @parameter6: com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet;	$z0 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean debug>;	if $z0 != 0 goto $r19 = staticinvoke <com.github.jknack.handlebars.internal.antlr.misc.Interval: com.github.jknack.handlebars.internal.antlr.misc.Interval of(int,int)>(i0, i1);	$z2 = <com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: boolean retry_debug>;	if $z2 == 0 goto $r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r21 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r21 == null goto return;	$r15 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r18 = virtualinvoke $r15.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener getErrorListenerDispatch()>();	$r17 = r8.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	interfaceinvoke $r18.<com.github.jknack.handlebars.internal.antlr.ANTLRErrorListener: void reportAmbiguity(com.github.jknack.handlebars.internal.antlr.Parser,com.github.jknack.handlebars.internal.antlr.dfa.DFA,int,int,boolean,java.util.BitSet,com.github.jknack.handlebars.internal.antlr.atn.ATNConfigSet)>($r17, r16, i0, i1, z1, r2, r5);	return
;block_num 5