(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2924 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getNodeTypeSymbol/-2019705514 (var2924) String)
(declare-const null-var2924 var2924)
(declare-const null-Bool Bool)
(declare-const var2233 var2924) ; Statement: r0 := @this: freemarker.core.OutputFormatBlock 
(assert (not (= var2233 null-var2924)))
(declare-const var2242 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2242 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.OutputFormatBlock: java.lang.String getNodeTypeSymbol()>() 
(assert (= (ite var2242 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var1123 String (getNodeTypeSymbol/-2019705514 var2233)) ; Statement: $r1 = virtualinvoke r0.<freemarker.core.OutputFormatBlock: java.lang.String getNodeTypeSymbol()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getNodeTypeSymbol/-2019705514=([freemarker.core.OutputFormatBlock], java.lang.String)}
; {var2924=freemarker.core.OutputFormatBlock, var2233=r0, var2242=z0, var1123=$r1}
; {freemarker.core.OutputFormatBlock=var2924, r0=var2233, z0=var2242, $r1=var1123}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.OutputFormatBlock;	z0 := @parameter0: boolean;	if z0 == 0 goto $r1 = virtualinvoke r0.<freemarker.core.OutputFormatBlock: java.lang.String getNodeTypeSymbol()>();	$r1 = virtualinvoke r0.<freemarker.core.OutputFormatBlock: java.lang.String getNodeTypeSymbol()>();	return $r1
;block_num 2