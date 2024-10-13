(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2971 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNodeTypeSymbol/1377562359 (var2971) String)
(declare-const null-var2971 var2971)
(declare-const null-Bool Bool)
(declare-const var325 var2971) ; Statement: r0 := @this: freemarker.core.ElseOfList 
(assert (not (= var325 null-var2971)))
(declare-const var2510 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2510 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.ElseOfList: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var2510 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var427 String (getNodeTypeSymbol/1377562359 var325)) ; Statement: $r1 = virtualinvoke r0.<freemarker.core.ElseOfList: java.lang.String getNodeTypeSymbol()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getNodeTypeSymbol/1377562359=([freemarker.core.ElseOfList], java.lang.String)}
; {var2971=freemarker.core.ElseOfList, var325=r0, var2510=z0, var427=$r1}
; {freemarker.core.ElseOfList=var2971, r0=var325, z0=var2510, $r1=var427}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.ElseOfList;	z0 := @parameter0: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.ElseOfList: java.lang.String getNodeTypeSymbol()>();	$r1 = virtualinvoke r0.<freemarker.core.ElseOfList: java.lang.String getNodeTypeSymbol()>();	return $r1
;block_num 2