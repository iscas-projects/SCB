(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1299 0)
(declare-sort var1668 0)
(declare-sort var3605 0)
(declare-sort var3011 0)
(declare-sort var625 0)
(declare-sort var2700 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun decision/-2041177131 (var3605) Int)
(declare-fun atnStartState/-2041177131 (var3605) var3011)
(declare-fun ruleIndex/-1160961596 (var625) Int)
(declare-fun cast-from-var3011-to-var625 (var3011) var625)
(declare-fun getRuleNames/1186755831 (var2700) (Array Int String))
(declare-fun cast-from-var1668-to-var2700 (var1668) var2700)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var1299 var1299)
(declare-const null-var1668 var1668)
(declare-const null-var3605 var3605)
(declare-const var1804 var1299) ; Statement: r10 := @this: org.antlr.v4.runtime.DiagnosticErrorListener 
(assert (not (= var1804 null-var1299)))
(declare-const var903 var1668) ; Statement: r2 := @parameter0: org.antlr.v4.runtime.Parser 
(assert (not (= var903 null-var1668)))
(declare-const var1520 var3605) ; Statement: r0 := @parameter1: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var1520 null-var3605)))
(define-const var2622 Int (decision/-2041177131 var1520)) ; Statement: i0 = r0.<org.antlr.v4.runtime.dfa.DFA: int decision> 
(define-const var557 var3011 (atnStartState/-2041177131 var1520)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.dfa.DFA: org.antlr.v4.runtime.atn.DecisionState atnStartState> 
(define-const var1620 Int (ruleIndex/-1160961596 (cast-from-var3011-to-var625 var557))) ; Statement: i1 = $r1.<org.antlr.v4.runtime.atn.DecisionState: int ruleIndex> 
(assert true)
(define-const var3801 (Array Int String) (getRuleNames/1186755831 (cast-from-var1668-to-var2700 var903))) ; Statement: r3 = virtualinvoke r2.<org.antlr.v4.runtime.Parser: java.lang.String[] getRuleNames()>() 
 ; Statement: if i1 < 0 goto $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert (< var1620 0)) ; Cond: i1 < 0 
(define-const var310 String (String_valueOf/1240665136 var2622)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {decision/-2041177131=([org.antlr.v4.runtime.dfa.DFA], int), atnStartState/-2041177131=([org.antlr.v4.runtime.dfa.DFA], org.antlr.v4.runtime.atn.DecisionState), ruleIndex/-1160961596=([org.antlr.v4.runtime.atn.ATNState], int), cast-from-var3011-to-var625=([org.antlr.v4.runtime.atn.DecisionState], org.antlr.v4.runtime.atn.ATNState), getRuleNames/1186755831=([org.antlr.v4.runtime.Recognizer], java.lang.String[]), cast-from-var1668-to-var2700=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), String_valueOf/1240665136=([int], java.lang.String)}
; {var1299=org.antlr.v4.runtime.DiagnosticErrorListener, var1804=r10, var1668=org.antlr.v4.runtime.Parser, var903=r2, var3605=org.antlr.v4.runtime.dfa.DFA, var1520=r0, var2622=i0, var3011=org.antlr.v4.runtime.atn.DecisionState, var557=$r1, var625=org.antlr.v4.runtime.atn.ATNState, var1620=i1, var2700=org.antlr.v4.runtime.Recognizer, var3801=r3, var310=$r4}
; {org.antlr.v4.runtime.DiagnosticErrorListener=var1299, r10=var1804, org.antlr.v4.runtime.Parser=var1668, r2=var903, org.antlr.v4.runtime.dfa.DFA=var3605, r0=var1520, i0=var2622, org.antlr.v4.runtime.atn.DecisionState=var3011, $r1=var557, org.antlr.v4.runtime.atn.ATNState=var625, i1=var1620, org.antlr.v4.runtime.Recognizer=var2700, r3=var3801, $r4=var310}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r10 := @this: org.antlr.v4.runtime.DiagnosticErrorListener;	r2 := @parameter0: org.antlr.v4.runtime.Parser;	r0 := @parameter1: org.antlr.v4.runtime.dfa.DFA;	i0 = r0.<org.antlr.v4.runtime.dfa.DFA: int decision>;	$r1 = r0.<org.antlr.v4.runtime.dfa.DFA: org.antlr.v4.runtime.atn.DecisionState atnStartState>;	i1 = $r1.<org.antlr.v4.runtime.atn.DecisionState: int ruleIndex>;	r3 = virtualinvoke r2.<org.antlr.v4.runtime.Parser: java.lang.String[] getRuleNames()>();	if i1 < 0 goto $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	return $r4
;block_num 2