(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNodeTypeSymbol/-2072323580 (var233) String)
(declare-const null-var233 var233)
(declare-const null-Bool Bool)
(declare-const var1091 var233) ; Statement: r0 := @this: freemarker.core.ContinueInstruction 
(assert (not (= var1091 null-var233)))
(declare-const var2288 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2288 null-Bool)))
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.ContinueInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var2288 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2391 String (getNodeTypeSymbol/-2072323580 var1091)) ; Statement: $r6 = virtualinvoke r0.<freemarker.core.ContinueInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getNodeTypeSymbol/-2072323580=([freemarker.core.ContinueInstruction], java.lang.String)}
; {var233=freemarker.core.ContinueInstruction, var1091=r0, var2288=z0, var2391=$r6}
; {freemarker.core.ContinueInstruction=var233, r0=var1091, z0=var2288, $r6=var2391}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.ContinueInstruction;	z0 := @parameter0: boolean;	if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.ContinueInstruction: java.lang.String getNodeTypeSymbol()>();	$r6 = virtualinvoke r0.<freemarker.core.ContinueInstruction: java.lang.String getNodeTypeSymbol()>();	return $r6
;block_num 3