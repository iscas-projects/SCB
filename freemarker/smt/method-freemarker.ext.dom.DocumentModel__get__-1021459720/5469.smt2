(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1102 0)
(declare-sort var2116 0)
(declare-sort var3224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRootElement/-1166390888 (var1102) var3224)
(declare-const null-var1102 var1102)
(declare-const null-String String)
(declare-const var2808 var1102) ; Statement: r1 := @this: freemarker.ext.dom.DocumentModel 
(assert (not (= var2808 null-var1102)))
(declare-const var434 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var434 null-String)))
(assert true)
(define-const var1581 Bool (= var434 "*")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("*") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("**") 
(assert (not (= (ite var1581 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1527 var3224 (getRootElement/-1166390888 var2808)) ; Statement: $r12 = virtualinvoke r1.<freemarker.ext.dom.DocumentModel: freemarker.ext.dom.ElementModel getRootElement()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getRootElement/-1166390888=([freemarker.ext.dom.DocumentModel], freemarker.ext.dom.ElementModel)}
; {var1102=freemarker.ext.dom.DocumentModel, var2808=r1, var434=r0, var2116=null_type, var1581=$z0, var3224=freemarker.ext.dom.ElementModel, var1527=$r12}
; {freemarker.ext.dom.DocumentModel=var1102, r1=var2808, r0=var434, null_type=var2116, $z0=var1581, freemarker.ext.dom.ElementModel=var3224, $r12=var1527}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.ext.dom.DocumentModel;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("*");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("**");	$r12 = virtualinvoke r1.<freemarker.ext.dom.DocumentModel: freemarker.ext.dom.ElementModel getRootElement()>();	return $r12
;block_num 2