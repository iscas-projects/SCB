(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1695 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun curLexState/929889025 (var1695) Int)
(declare-const null-var1695 var1695)
(declare-const null-Int Int)
(declare-const var2250 var1695) ; Statement: r6 := @this: freemarker.core.FMParserTokenManager 
(assert (not (= var2250 null-var1695)))
(declare-const var563 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var563 null-Int)))
 ; Statement: if i0 >= 8 goto $r0 = new freemarker.core.TokenMgrError 
(assert (not (>= var563 8))) ; Negate: Cond: i0 >= 8  
 ; Statement: if i0 >= 0 goto r6.<freemarker.core.FMParserTokenManager: int curLexState> = i0 
(assert (>= var563 0)) ; Cond: i0 >= 0 
(declare-const var2250!1 var1695)
(assert (not (= var2250!1 null-var1695)))
(assert (= (curLexState/929889025 var2250!1) var563)) ; Statement: r6.<freemarker.core.FMParserTokenManager: int curLexState> = i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {curLexState/929889025=([freemarker.core.FMParserTokenManager], int)}
; {var1695=freemarker.core.FMParserTokenManager, var2250=r6, var563=i0}
; {freemarker.core.FMParserTokenManager=var1695, r6=var2250, i0=var563}
;seq 
;cnt {}
;stmts r6 := @this: freemarker.core.FMParserTokenManager;	i0 := @parameter0: int;	if i0 >= 8 goto $r0 = new freemarker.core.TokenMgrError;	if i0 >= 0 goto r6.<freemarker.core.FMParserTokenManager: int curLexState> = i0;	r6.<freemarker.core.FMParserTokenManager: int curLexState> = i0;	return
;block_num 3