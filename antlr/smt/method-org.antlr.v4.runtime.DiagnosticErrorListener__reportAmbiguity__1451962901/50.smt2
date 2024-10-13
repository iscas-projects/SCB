(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var701 0)
(declare-sort var2847 0)
(declare-sort var3863 0)
(declare-sort var3158 0)
(declare-sort var138 0)
(declare-sort var890 0)
(declare-sort var1328 0)
(declare-sort var195 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun exactOnly/-1316754822 (var701) Bool)
(declare-fun getDecisionDescription/1930635579 (var701 var2847 var3863) String)
(declare-fun getConflictingAlts/-1946805338 (var701 var3158 var138) var3158)
(declare-fun getTokenStream/-211092484 (var2847) var890)
(declare-fun var1328_of/-1711527236 (Int Int) var1328)
(declare-fun var890_getText/1167499073 (var890 var1328) String)
(declare-fun arr-var195-init () (Array Int var195))
(declare-fun cast-from-String-to-var195 (String) var195)
(declare-fun cast-from-var3158-to-var195 (var3158) var195)
(declare-fun String_format/1339386452 (String (Array Int var195)) String)
(declare-fun notifyErrorListeners/-504563046 (var2847 String) void)
(declare-const null-var701 var701)
(declare-const null-var2847 var2847)
(declare-const null-var3863 var3863)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-var3158 var3158)
(declare-const null-var138 var138)
(declare-const null-__Array__Int__var195__ (Array Int var195))
(declare-const var3365 var701) ; Statement: r0 := @this: org.antlr.v4.runtime.DiagnosticErrorListener 
(assert (not (= var3365 null-var701)))
(declare-const var905 var2847) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.Parser 
(assert (not (= var905 null-var2847)))
(declare-const var3106 var3863) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var3106 null-var3863)))
(declare-const var3643 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3643 null-Int)))
(declare-const var524 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var524 null-Int)))
(declare-const var1001 Bool) ; Statement: z1 := @parameter4: boolean 
(assert (not (= var1001 null-Bool)))
(declare-const var3211 var3158) ; Statement: r3 := @parameter5: java.util.BitSet 
(assert (not (= var3211 null-var3158)))
(declare-const var3243 var138) ; Statement: r4 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var3243 null-var138)))
(define-const var364 Bool (exactOnly/-1316754822 var3365)) ; Statement: $z0 = r0.<org.antlr.v4.runtime.DiagnosticErrorListener: boolean exactOnly> 
 ; Statement: if $z0 == 0 goto $r8 = virtualinvoke r0.<org.antlr.v4.runtime.DiagnosticErrorListener: java.lang.String getDecisionDescription(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA)>(r1, r2) 
(assert (= (ite var364 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2707 String (getDecisionDescription/1930635579 var3365 var905 var3106)) ; Statement: $r8 = virtualinvoke r0.<org.antlr.v4.runtime.DiagnosticErrorListener: java.lang.String getDecisionDescription(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA)>(r1, r2) 
(assert true)
(define-const var1369 var3158 (getConflictingAlts/-1946805338 var3365 var3211 var3243)) ; Statement: $r9 = virtualinvoke r0.<org.antlr.v4.runtime.DiagnosticErrorListener: java.util.BitSet getConflictingAlts(java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>(r3, r4) 
(assert true)
(define-const var3530 var890 (getTokenStream/-211092484 var905)) ; Statement: $r6 = virtualinvoke r1.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var1637 var1328 (var1328_of/-1711527236 var3643 var524)) ; Statement: $r5 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var1092 String (var890_getText/1167499073 var3530 var1637)) ; Statement: $r10 = interfaceinvoke $r6.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r5) 
(define-const var397 (Array Int var195) arr-var195-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(declare-const var397!1 (Array Int var195))
(assert (not (= var397!1 null-__Array__Int__var195__)))
(assert (= (select var397!1 0) (cast-from-String-to-var195 var2707))) ; Statement: $r7[0] = $r8 
(declare-const var397!2 (Array Int var195))
(assert (not (= var397!2 null-__Array__Int__var195__)))
(assert (= (select var397!2 1) (cast-from-var3158-to-var195 var1369))) ; Statement: $r7[1] = $r9 
(declare-const var397!3 (Array Int var195))
(assert (not (= var397!3 null-__Array__Int__var195__)))
(assert (= (select var397!3 2) (cast-from-String-to-var195 var1092))) ; Statement: $r7[2] = $r10 
(define-const var3565 String (String_format/1339386452 "reportAmbiguity d=%s: ambigAlts=%s, input=\u0027%s\u0027" var397!3)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("reportAmbiguity d=%s: ambigAlts=%s, input=\'%s\'", $r7) 
(assert true)
;(assert (notifyErrorListeners/-504563046 var905 var3565)) ; Statement: virtualinvoke r1.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(java.lang.String)>($r11) 

(declare-const var905!1 var2847)
(declare-const var3565!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {exactOnly/-1316754822=([org.antlr.v4.runtime.DiagnosticErrorListener], boolean), getDecisionDescription/1930635579=([org.antlr.v4.runtime.DiagnosticErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA], java.lang.String), getConflictingAlts/-1946805338=([org.antlr.v4.runtime.DiagnosticErrorListener, java.util.BitSet, org.antlr.v4.runtime.atn.ATNConfigSet], java.util.BitSet), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var1328_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), var890_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), arr-var195-init=([], java.lang.Object[]), cast-from-String-to-var195=([java.lang.String], java.lang.Object), cast-from-var3158-to-var195=([java.util.BitSet], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), notifyErrorListeners/-504563046=([org.antlr.v4.runtime.Parser, java.lang.String], void)}
; {var701=org.antlr.v4.runtime.DiagnosticErrorListener, var3365=r0, var2847=org.antlr.v4.runtime.Parser, var905=r1, var3863=org.antlr.v4.runtime.dfa.DFA, var3106=r2, var3643=i0, var524=i1, var1001=z1, var3158=java.util.BitSet, var3211=r3, var138=org.antlr.v4.runtime.atn.ATNConfigSet, var3243=r4, var364=$z0, var2707=$r8, var1369=$r9, var890=org.antlr.v4.runtime.TokenStream, var3530=$r6, var1328=org.antlr.v4.runtime.misc.Interval, var1637=$r5, var1092=$r10, var195=java.lang.Object, var397=$r7, var3565=$r11}
; {org.antlr.v4.runtime.DiagnosticErrorListener=var701, r0=var3365, org.antlr.v4.runtime.Parser=var2847, r1=var905, org.antlr.v4.runtime.dfa.DFA=var3863, r2=var3106, i0=var3643, i1=var524, z1=var1001, java.util.BitSet=var3158, r3=var3211, org.antlr.v4.runtime.atn.ATNConfigSet=var138, r4=var3243, $z0=var364, $r8=var2707, $r9=var1369, org.antlr.v4.runtime.TokenStream=var890, $r6=var3530, org.antlr.v4.runtime.misc.Interval=var1328, $r5=var1637, $r10=var1092, java.lang.Object=var195, $r7=var397, $r11=var3565}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.DiagnosticErrorListener;	r1 := @parameter0: org.antlr.v4.runtime.Parser;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFA;	i0 := @parameter2: int;	i1 := @parameter3: int;	z1 := @parameter4: boolean;	r3 := @parameter5: java.util.BitSet;	r4 := @parameter6: org.antlr.v4.runtime.atn.ATNConfigSet;	$z0 = r0.<org.antlr.v4.runtime.DiagnosticErrorListener: boolean exactOnly>;	if $z0 == 0 goto $r8 = virtualinvoke r0.<org.antlr.v4.runtime.DiagnosticErrorListener: java.lang.String getDecisionDescription(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA)>(r1, r2);	$r8 = virtualinvoke r0.<org.antlr.v4.runtime.DiagnosticErrorListener: java.lang.String getDecisionDescription(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA)>(r1, r2);	$r9 = virtualinvoke r0.<org.antlr.v4.runtime.DiagnosticErrorListener: java.util.BitSet getConflictingAlts(java.util.BitSet,org.antlr.v4.runtime.atn.ATNConfigSet)>(r3, r4);	$r6 = virtualinvoke r1.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r5 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	$r10 = interfaceinvoke $r6.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r5);	$r7 = newarray (java.lang.Object)[3];	$r7[0] = $r8;	$r7[1] = $r9;	$r7[2] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("reportAmbiguity d=%s: ambigAlts=%s, input=\'%s\'", $r7);	virtualinvoke r1.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(java.lang.String)>($r11);	return
;block_num 2