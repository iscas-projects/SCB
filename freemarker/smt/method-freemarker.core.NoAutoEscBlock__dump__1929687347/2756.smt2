(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1532 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNodeTypeSymbol/2032763293 (var1532) String)
(declare-const null-var1532 var1532)
(declare-const null-Bool Bool)
(declare-const var476 var1532) ; Statement: r0 := @this: freemarker.core.NoAutoEscBlock 
(assert (not (= var476 null-var1532)))
(declare-const var2311 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2311 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var2311 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1424 String (getNodeTypeSymbol/2032763293 var476)) ; Statement: $r1 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getNodeTypeSymbol()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getNodeTypeSymbol/2032763293=([freemarker.core.NoAutoEscBlock], java.lang.String)}
; {var1532=freemarker.core.NoAutoEscBlock, var476=r0, var2311=z0, var1424=$r1}
; {freemarker.core.NoAutoEscBlock=var1532, r0=var476, z0=var2311, $r1=var1424}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.NoAutoEscBlock;	z0 := @parameter0: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getNodeTypeSymbol()>();	$r1 = virtualinvoke r0.<freemarker.core.NoAutoEscBlock: java.lang.String getNodeTypeSymbol()>();	return $r1
;block_num 2