(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNodeTypeSymbol/1930992928 (var892) String)
(declare-const null-var892 var892)
(declare-const null-Bool Bool)
(declare-const var405 var892) ; Statement: r0 := @this: freemarker.core.NoEscapeBlock 
(assert (not (= var405 null-var892)))
(declare-const var306 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var306 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.NoEscapeBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var306 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1433 String (getNodeTypeSymbol/1930992928 var405)) ; Statement: $r1 = virtualinvoke r0.<freemarker.core.NoEscapeBlock: java.lang.String getNodeTypeSymbol()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getNodeTypeSymbol/1930992928=([freemarker.core.NoEscapeBlock], java.lang.String)}
; {var892=freemarker.core.NoEscapeBlock, var405=r0, var306=z0, var1433=$r1}
; {freemarker.core.NoEscapeBlock=var892, r0=var405, z0=var306, $r1=var1433}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.NoEscapeBlock;	z0 := @parameter0: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.NoEscapeBlock: java.lang.String getNodeTypeSymbol()>();	$r1 = virtualinvoke r0.<freemarker.core.NoEscapeBlock: java.lang.String getNodeTypeSymbol()>();	return $r1
;block_num 2