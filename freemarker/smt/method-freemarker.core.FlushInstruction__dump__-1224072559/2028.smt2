(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var565 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNodeTypeSymbol/-232786821 (var565) String)
(declare-const null-var565 var565)
(declare-const null-Bool Bool)
(declare-const var852 var565) ; Statement: r0 := @this: freemarker.core.FlushInstruction 
(assert (not (= var852 null-var565)))
(declare-const var36 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var36 null-Bool)))
 ; Statement: if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.FlushInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var36 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var564 String (getNodeTypeSymbol/-232786821 var852)) ; Statement: $r6 = virtualinvoke r0.<freemarker.core.FlushInstruction: java.lang.String getNodeTypeSymbol()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {getNodeTypeSymbol/-232786821=([freemarker.core.FlushInstruction], java.lang.String)}
; {var565=freemarker.core.FlushInstruction, var852=r0, var36=z0, var564=$r6}
; {freemarker.core.FlushInstruction=var565, r0=var852, z0=var36, $r6=var564}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.FlushInstruction;	z0 := @parameter0: boolean;	if z0 == 0 goto $r6 = virtualinvoke r0.<freemarker.core.FlushInstruction: java.lang.String getNodeTypeSymbol()>();	$r6 = virtualinvoke r0.<freemarker.core.FlushInstruction: java.lang.String getNodeTypeSymbol()>();	return $r6
;block_num 3