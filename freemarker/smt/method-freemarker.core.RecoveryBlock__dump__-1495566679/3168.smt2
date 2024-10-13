(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3500 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNodeTypeSymbol/-2110269805 (var3500) String)
(declare-const null-var3500 var3500)
(declare-const null-Bool Bool)
(declare-const var733 var3500) ; Statement: r0 := @this: freemarker.core.RecoveryBlock 
(assert (not (= var733 null-var3500)))
(declare-const var240 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var240 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.RecoveryBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var240 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2005 String (getNodeTypeSymbol/-2110269805 var733)) ; Statement: $r1 = virtualinvoke r0.<freemarker.core.RecoveryBlock: java.lang.String getNodeTypeSymbol()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getNodeTypeSymbol/-2110269805=([freemarker.core.RecoveryBlock], java.lang.String)}
; {var3500=freemarker.core.RecoveryBlock, var733=r0, var240=z0, var2005=$r1}
; {freemarker.core.RecoveryBlock=var3500, r0=var733, z0=var240, $r1=var2005}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.RecoveryBlock;	z0 := @parameter0: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.RecoveryBlock: java.lang.String getNodeTypeSymbol()>();	$r1 = virtualinvoke r0.<freemarker.core.RecoveryBlock: java.lang.String getNodeTypeSymbol()>();	return $r1
;block_num 2