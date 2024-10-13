(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNodeTypeSymbol/-680847425 (var1479) String)
(declare-const null-var1479 var1479)
(declare-const null-Bool Bool)
(declare-const var2583 var1479) ; Statement: r0 := @this: freemarker.core.CompressedBlock 
(assert (not (= var2583 null-var1479)))
(declare-const var3371 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var3371 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var3371 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var2534 String (getNodeTypeSymbol/-680847425 var2583)) ; Statement: $r1 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getNodeTypeSymbol()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getNodeTypeSymbol/-680847425=([freemarker.core.CompressedBlock], java.lang.String)}
; {var1479=freemarker.core.CompressedBlock, var2583=r0, var3371=z0, var2534=$r1}
; {freemarker.core.CompressedBlock=var1479, r0=var2583, z0=var3371, $r1=var2534}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.CompressedBlock;	z0 := @parameter0: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getNodeTypeSymbol()>();	$r1 = virtualinvoke r0.<freemarker.core.CompressedBlock: java.lang.String getNodeTypeSymbol()>();	return $r1
;block_num 2