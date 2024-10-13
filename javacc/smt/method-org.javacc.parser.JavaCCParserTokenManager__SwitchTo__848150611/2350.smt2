(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3882 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun curLexState/1964309570 (var3882) Int)
(declare-const null-var3882 var3882)
(declare-const null-Int Int)
(declare-const var2452 var3882) ; Statement: r6 := @this: org.javacc.parser.JavaCCParserTokenManager 
(assert (not (= var2452 null-var3882)))
(declare-const var868 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var868 null-Int)))
 ; Statement: if i0 >= 5 goto $r0 = new org.javacc.parser.TokenMgrError 
(assert (not (>= var868 5))) ; Negate: Cond: i0 >= 5  
 ; Statement: if i0 >= 0 goto r6.<org.javacc.parser.JavaCCParserTokenManager: int curLexState> = i0 
(assert (>= var868 0)) ; Cond: i0 >= 0 
(declare-const var2452!1 var3882)
(assert (not (= var2452!1 null-var3882)))
(assert (= (curLexState/1964309570 var2452!1) var868)) ; Statement: r6.<org.javacc.parser.JavaCCParserTokenManager: int curLexState> = i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {curLexState/1964309570=([org.javacc.parser.JavaCCParserTokenManager], int)}
; {var3882=org.javacc.parser.JavaCCParserTokenManager, var2452=r6, var868=i0}
; {org.javacc.parser.JavaCCParserTokenManager=var3882, r6=var2452, i0=var868}
;seq 
;cnt {}
;stmts r6 := @this: org.javacc.parser.JavaCCParserTokenManager;	i0 := @parameter0: int;	if i0 >= 5 goto $r0 = new org.javacc.parser.TokenMgrError;	if i0 >= 0 goto r6.<org.javacc.parser.JavaCCParserTokenManager: int curLexState> = i0;	r6.<org.javacc.parser.JavaCCParserTokenManager: int curLexState> = i0;	return
;block_num 3