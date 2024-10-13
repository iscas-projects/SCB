(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var895 0)
(declare-sort var457 0)
(declare-sort var3227 0)
(declare-sort var3897 0)
(declare-sort var1210 0)
(declare-sort var1418 0)
(declare-sort var2855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDecisionDescription/1930635579 (var895 var457 var3227) String)
(declare-fun getTokenStream/-211092484 (var457) var1210)
(declare-fun var1418_of/-1711527236 (Int Int) var1418)
(declare-fun var1210_getText/1167499073 (var1210 var1418) String)
(declare-fun arr-var2855-init () (Array Int var2855))
(declare-fun cast-from-String-to-var2855 (String) var2855)
(declare-fun String_format/1339386452 (String (Array Int var2855)) String)
(declare-fun notifyErrorListeners/-504563046 (var457 String) void)
(declare-const null-var895 var895)
(declare-const null-var457 var457)
(declare-const null-var3227 var3227)
(declare-const null-Int Int)
(declare-const null-var3897 var3897)
(declare-const null-__Array__Int__var2855__ (Array Int var2855))
(declare-const var2067 var895) ; Statement: r0 := @this: org.antlr.v4.runtime.DiagnosticErrorListener 
(assert (not (= var2067 null-var895)))
(declare-const var682 var457) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.Parser 
(assert (not (= var682 null-var457)))
(declare-const var3336 var3227) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var3336 null-var3227)))
(declare-const var2818 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2818 null-Int)))
(declare-const var2031 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2031 null-Int)))
(declare-const var1069 Int) ; Statement: i2 := @parameter4: int 
(assert (not (= var1069 null-Int)))
(declare-const var2146 var3897) ; Statement: r9 := @parameter5: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var2146 null-var3897)))
(assert true)
(define-const var3241 String (getDecisionDescription/1930635579 var2067 var682 var3336)) ; Statement: r3 = virtualinvoke r0.<org.antlr.v4.runtime.DiagnosticErrorListener: java.lang.String getDecisionDescription(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA)>(r1, r2) 
(assert true)
(define-const var155 var1210 (getTokenStream/-211092484 var682)) ; Statement: $r5 = virtualinvoke r1.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var3115 var1418 (var1418_of/-1711527236 var2818 var2031)) ; Statement: $r4 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var1056 String (var1210_getText/1167499073 var155 var3115)) ; Statement: r6 = interfaceinvoke $r5.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r4) 
(define-const var3519 (Array Int var2855) arr-var2855-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(declare-const var3519!1 (Array Int var2855))
(assert (not (= var3519!1 null-__Array__Int__var2855__)))
(assert (= (select var3519!1 0) (cast-from-String-to-var2855 var3241))) ; Statement: $r7[0] = r3 
(declare-const var3519!2 (Array Int var2855))
(assert (not (= var3519!2 null-__Array__Int__var2855__)))
(assert (= (select var3519!2 1) (cast-from-String-to-var2855 var1056))) ; Statement: $r7[1] = r6 
(define-const var1546 String (String_format/1339386452 "reportContextSensitivity d=%s, input=\u0027%s\u0027" var3519!2)) ; Statement: r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("reportContextSensitivity d=%s, input=\'%s\'", $r7) 
(assert true)
;(assert (notifyErrorListeners/-504563046 var682 var1546)) ; Statement: virtualinvoke r1.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(java.lang.String)>(r8) 

(declare-const var682!1 var457)
(declare-const var1546!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDecisionDescription/1930635579=([org.antlr.v4.runtime.DiagnosticErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA], java.lang.String), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var1418_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), var1210_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), arr-var2855-init=([], java.lang.Object[]), cast-from-String-to-var2855=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), notifyErrorListeners/-504563046=([org.antlr.v4.runtime.Parser, java.lang.String], void)}
; {var895=org.antlr.v4.runtime.DiagnosticErrorListener, var2067=r0, var457=org.antlr.v4.runtime.Parser, var682=r1, var3227=org.antlr.v4.runtime.dfa.DFA, var3336=r2, var2818=i0, var2031=i1, var1069=i2, var3897=org.antlr.v4.runtime.atn.ATNConfigSet, var2146=r9, var3241=r3, var1210=org.antlr.v4.runtime.TokenStream, var155=$r5, var1418=org.antlr.v4.runtime.misc.Interval, var3115=$r4, var1056=r6, var2855=java.lang.Object, var3519=$r7, var1546=r8}
; {org.antlr.v4.runtime.DiagnosticErrorListener=var895, r0=var2067, org.antlr.v4.runtime.Parser=var457, r1=var682, org.antlr.v4.runtime.dfa.DFA=var3227, r2=var3336, i0=var2818, i1=var2031, i2=var1069, org.antlr.v4.runtime.atn.ATNConfigSet=var3897, r9=var2146, r3=var3241, org.antlr.v4.runtime.TokenStream=var1210, $r5=var155, org.antlr.v4.runtime.misc.Interval=var1418, $r4=var3115, r6=var1056, java.lang.Object=var2855, $r7=var3519, r8=var1546}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.DiagnosticErrorListener;	r1 := @parameter0: org.antlr.v4.runtime.Parser;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFA;	i0 := @parameter2: int;	i1 := @parameter3: int;	i2 := @parameter4: int;	r9 := @parameter5: org.antlr.v4.runtime.atn.ATNConfigSet;	r3 = virtualinvoke r0.<org.antlr.v4.runtime.DiagnosticErrorListener: java.lang.String getDecisionDescription(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA)>(r1, r2);	$r5 = virtualinvoke r1.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r4 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	r6 = interfaceinvoke $r5.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r4);	$r7 = newarray (java.lang.Object)[2];	$r7[0] = r3;	$r7[1] = r6;	r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("reportContextSensitivity d=%s, input=\'%s\'", $r7);	virtualinvoke r1.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(java.lang.String)>(r8);	return
;block_num 1