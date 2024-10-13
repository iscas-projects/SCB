(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3551 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNodeTypeSymbol/-1490092618 (var3551) String)
(declare-const null-var3551 var3551)
(declare-const null-Bool Bool)
(declare-const var3967 var3551) ; Statement: r0 := @this: freemarker.core.BreakInstruction 
(assert (not (= var3967 null-var3551)))
(declare-const var437 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var437 null-Bool)))
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.BreakInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var437 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2673 String (getNodeTypeSymbol/-1490092618 var3967)) ; Statement: $r6 = virtualinvoke r0.<freemarker.core.BreakInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getNodeTypeSymbol/-1490092618=([freemarker.core.BreakInstruction], java.lang.String)}
; {var3551=freemarker.core.BreakInstruction, var3967=r0, var437=z0, var2673=$r6}
; {freemarker.core.BreakInstruction=var3551, r0=var3967, z0=var437, $r6=var2673}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.BreakInstruction;	z0 := @parameter0: boolean;	if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.BreakInstruction: java.lang.String getNodeTypeSymbol()>();	$r6 = virtualinvoke r0.<freemarker.core.BreakInstruction: java.lang.String getNodeTypeSymbol()>();	return $r6
;block_num 3