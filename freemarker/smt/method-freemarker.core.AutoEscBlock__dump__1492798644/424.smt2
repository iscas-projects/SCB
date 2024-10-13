(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNodeTypeSymbol/1631762526 (var2791) String)
(declare-const null-var2791 var2791)
(declare-const null-Bool Bool)
(declare-const var431 var2791) ; Statement: r0 := @this: freemarker.core.AutoEscBlock 
(assert (not (= var431 null-var2791)))
(declare-const var1687 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1687 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.AutoEscBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var1687 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var819 String (getNodeTypeSymbol/1631762526 var431)) ; Statement: $r1 = virtualinvoke r0.<freemarker.core.AutoEscBlock: java.lang.String getNodeTypeSymbol()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getNodeTypeSymbol/1631762526=([freemarker.core.AutoEscBlock], java.lang.String)}
; {var2791=freemarker.core.AutoEscBlock, var431=r0, var1687=z0, var819=$r1}
; {freemarker.core.AutoEscBlock=var2791, r0=var431, z0=var1687, $r1=var819}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.AutoEscBlock;	z0 := @parameter0: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.AutoEscBlock: java.lang.String getNodeTypeSymbol()>();	$r1 = virtualinvoke r0.<freemarker.core.AutoEscBlock: java.lang.String getNodeTypeSymbol()>();	return $r1
;block_num 2