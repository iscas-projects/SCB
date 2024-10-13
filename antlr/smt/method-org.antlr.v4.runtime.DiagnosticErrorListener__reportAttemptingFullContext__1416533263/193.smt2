(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3070 0)
(declare-sort var2385 0)
(declare-sort var341 0)
(declare-sort var1127 0)
(declare-sort var1327 0)
(declare-sort var214 0)
(declare-sort var100 0)
(declare-sort var23 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDecisionDescription/1930635579 (var3070 var2385 var341) String)
(declare-fun getTokenStream/-211092484 (var2385) var214)
(declare-fun var100_of/-1711527236 (Int Int) var100)
(declare-fun var214_getText/1167499073 (var214 var100) String)
(declare-fun arr-var23-init () (Array Int var23))
(declare-fun cast-from-String-to-var23 (String) var23)
(declare-fun String_format/1339386452 (String (Array Int var23)) String)
(declare-fun notifyErrorListeners/-504563046 (var2385 String) void)
(declare-const null-var3070 var3070)
(declare-const null-var2385 var2385)
(declare-const null-var341 var341)
(declare-const null-Int Int)
(declare-const null-var1127 var1127)
(declare-const null-var1327 var1327)
(declare-const null-__Array__Int__var23__ (Array Int var23))
(declare-const var3017 var3070) ; Statement: r0 := @this: org.antlr.v4.runtime.DiagnosticErrorListener 
(assert (not (= var3017 null-var3070)))
(declare-const var3986 var2385) ; Statement: r1 := @parameter0: org.antlr.v4.runtime.Parser 
(assert (not (= var3986 null-var2385)))
(declare-const var3543 var341) ; Statement: r2 := @parameter1: org.antlr.v4.runtime.dfa.DFA 
(assert (not (= var3543 null-var341)))
(declare-const var3944 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var3944 null-Int)))
(declare-const var409 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var409 null-Int)))
(declare-const var1538 var1127) ; Statement: r9 := @parameter4: java.util.BitSet 
(assert (not (= var1538 null-var1127)))
(declare-const var1691 var1327) ; Statement: r10 := @parameter5: org.antlr.v4.runtime.atn.ATNConfigSet 
(assert (not (= var1691 null-var1327)))
(assert true)
(define-const var2089 String (getDecisionDescription/1930635579 var3017 var3986 var3543)) ; Statement: r3 = virtualinvoke r0.<org.antlr.v4.runtime.DiagnosticErrorListener: java.lang.String getDecisionDescription(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA)>(r1, r2) 
(assert true)
(define-const var1862 var214 (getTokenStream/-211092484 var3986)) ; Statement: $r5 = virtualinvoke r1.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>() 
(define-const var779 var100 (var100_of/-1711527236 var3944 var409)) ; Statement: $r4 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1) 
(define-const var1422 String (var214_getText/1167499073 var1862 var779)) ; Statement: r6 = interfaceinvoke $r5.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r4) 
(define-const var2541 (Array Int var23) arr-var23-init) ; Statement: $r7 = newarray (java.lang.Object)[2] 
(declare-const var2541!1 (Array Int var23))
(assert (not (= var2541!1 null-__Array__Int__var23__)))
(assert (= (select var2541!1 0) (cast-from-String-to-var23 var2089))) ; Statement: $r7[0] = r3 
(declare-const var2541!2 (Array Int var23))
(assert (not (= var2541!2 null-__Array__Int__var23__)))
(assert (= (select var2541!2 1) (cast-from-String-to-var23 var1422))) ; Statement: $r7[1] = r6 
(define-const var1487 String (String_format/1339386452 "reportAttemptingFullContext d=%s, input=\u0027%s\u0027" var2541!2)) ; Statement: r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("reportAttemptingFullContext d=%s, input=\'%s\'", $r7) 
(assert true)
;(assert (notifyErrorListeners/-504563046 var3986 var1487)) ; Statement: virtualinvoke r1.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(java.lang.String)>(r8) 

(declare-const var3986!1 var2385)
(declare-const var1487!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDecisionDescription/1930635579=([org.antlr.v4.runtime.DiagnosticErrorListener, org.antlr.v4.runtime.Parser, org.antlr.v4.runtime.dfa.DFA], java.lang.String), getTokenStream/-211092484=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.TokenStream), var100_of/-1711527236=([int, int], org.antlr.v4.runtime.misc.Interval), var214_getText/1167499073=([org.antlr.v4.runtime.TokenStream, org.antlr.v4.runtime.misc.Interval], java.lang.String), arr-var23-init=([], java.lang.Object[]), cast-from-String-to-var23=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), notifyErrorListeners/-504563046=([org.antlr.v4.runtime.Parser, java.lang.String], void)}
; {var3070=org.antlr.v4.runtime.DiagnosticErrorListener, var3017=r0, var2385=org.antlr.v4.runtime.Parser, var3986=r1, var341=org.antlr.v4.runtime.dfa.DFA, var3543=r2, var3944=i0, var409=i1, var1127=java.util.BitSet, var1538=r9, var1327=org.antlr.v4.runtime.atn.ATNConfigSet, var1691=r10, var2089=r3, var214=org.antlr.v4.runtime.TokenStream, var1862=$r5, var100=org.antlr.v4.runtime.misc.Interval, var779=$r4, var1422=r6, var23=java.lang.Object, var2541=$r7, var1487=r8}
; {org.antlr.v4.runtime.DiagnosticErrorListener=var3070, r0=var3017, org.antlr.v4.runtime.Parser=var2385, r1=var3986, org.antlr.v4.runtime.dfa.DFA=var341, r2=var3543, i0=var3944, i1=var409, java.util.BitSet=var1127, r9=var1538, org.antlr.v4.runtime.atn.ATNConfigSet=var1327, r10=var1691, r3=var2089, org.antlr.v4.runtime.TokenStream=var214, $r5=var1862, org.antlr.v4.runtime.misc.Interval=var100, $r4=var779, r6=var1422, java.lang.Object=var23, $r7=var2541, r8=var1487}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.DiagnosticErrorListener;	r1 := @parameter0: org.antlr.v4.runtime.Parser;	r2 := @parameter1: org.antlr.v4.runtime.dfa.DFA;	i0 := @parameter2: int;	i1 := @parameter3: int;	r9 := @parameter4: java.util.BitSet;	r10 := @parameter5: org.antlr.v4.runtime.atn.ATNConfigSet;	r3 = virtualinvoke r0.<org.antlr.v4.runtime.DiagnosticErrorListener: java.lang.String getDecisionDescription(org.antlr.v4.runtime.Parser,org.antlr.v4.runtime.dfa.DFA)>(r1, r2);	$r5 = virtualinvoke r1.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.TokenStream getTokenStream()>();	$r4 = staticinvoke <org.antlr.v4.runtime.misc.Interval: org.antlr.v4.runtime.misc.Interval of(int,int)>(i0, i1);	r6 = interfaceinvoke $r5.<org.antlr.v4.runtime.TokenStream: java.lang.String getText(org.antlr.v4.runtime.misc.Interval)>($r4);	$r7 = newarray (java.lang.Object)[2];	$r7[0] = r3;	$r7[1] = r6;	r8 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("reportAttemptingFullContext d=%s, input=\'%s\'", $r7);	virtualinvoke r1.<org.antlr.v4.runtime.Parser: void notifyErrorListeners(java.lang.String)>(r8);	return
;block_num 1