(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var454 0)
(declare-sort var1456 0)
(declare-sort var292 0)
(declare-sort var1258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node/1974960422 (var292) var1456)
(declare-fun cast-from-var454-to-var292 (var454) var292)
(declare-fun var1456_getLocalName/-2072444605 (var1456) String)
(declare-const null-var454 var454)
(declare-const null-String String)
(declare-const var60 var454) ; Statement: r0 := @this: freemarker.ext.dom.ElementModel 
(assert (not (= var60 null-var454)))
(define-const var1099 var1456 (node/1974960422 (cast-from-var454-to-var292 var60))) ; Statement: $r1 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node> 
(define-const var3510 String (var1456_getLocalName/-2072444605 var1099)) ; Statement: r3 = interfaceinvoke $r1.<org.w3c.dom.Node: java.lang.String getLocalName()>() 
 ; Statement: if r3 == null goto $r2 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node> 
(assert (not (= var3510 null-String))) ; Negate: Cond: r3 == null  
(assert true)
(define-const var2688 Bool (= var3510 "")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto return r3 
(assert (= (ite var2688 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), cast-from-var454-to-var292=([freemarker.ext.dom.ElementModel], freemarker.ext.dom.NodeModel), var1456_getLocalName/-2072444605=([org.w3c.dom.Node], java.lang.String)}
; {var454=freemarker.ext.dom.ElementModel, var60=r0, var1456=org.w3c.dom.Node, var292=freemarker.ext.dom.NodeModel, var1099=$r1, var3510=r3, var1258=null_type, var2688=$z0}
; {freemarker.ext.dom.ElementModel=var454, r0=var60, org.w3c.dom.Node=var1456, freemarker.ext.dom.NodeModel=var292, $r1=var1099, r3=var3510, null_type=var1258, $z0=var2688}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.ext.dom.ElementModel;	$r1 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node>;	r3 = interfaceinvoke $r1.<org.w3c.dom.Node: java.lang.String getLocalName()>();	if r3 == null goto $r2 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node>;	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto return r3;	return r3
;block_num 3