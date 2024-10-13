(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNodeTypeSymbol/1231466367 (var3422) String)
(declare-const null-var3422 var3422)
(declare-const null-Bool Bool)
(declare-const var3043 var3422) ; Statement: r0 := @this: freemarker.core.FallbackInstruction 
(assert (not (= var3043 null-var3422)))
(declare-const var2156 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2156 null-Bool)))
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.FallbackInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var2156 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var510 String (getNodeTypeSymbol/1231466367 var3043)) ; Statement: $r6 = virtualinvoke r0.<freemarker.core.FallbackInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getNodeTypeSymbol/1231466367=([freemarker.core.FallbackInstruction], java.lang.String)}
; {var3422=freemarker.core.FallbackInstruction, var3043=r0, var2156=z0, var510=$r6}
; {freemarker.core.FallbackInstruction=var3422, r0=var3043, z0=var2156, $r6=var510}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.FallbackInstruction;	z0 := @parameter0: boolean;	if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.FallbackInstruction: java.lang.String getNodeTypeSymbol()>();	$r6 = virtualinvoke r0.<freemarker.core.FallbackInstruction: java.lang.String getNodeTypeSymbol()>();	return $r6
;block_num 3