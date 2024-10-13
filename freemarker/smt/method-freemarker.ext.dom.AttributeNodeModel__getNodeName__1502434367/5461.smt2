(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2058 0)
(declare-sort var3093 0)
(declare-sort var3816 0)
(declare-sort var1472 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node/1974960422 (var3816) var3093)
(declare-fun cast-from-var2058-to-var3816 (var2058) var3816)
(declare-fun var3093_getLocalName/-2072444605 (var3093) String)
(declare-const null-var2058 var2058)
(declare-const null-String String)
(declare-const var2853 var2058) ; Statement: r0 := @this: freemarker.ext.dom.AttributeNodeModel 
(assert (not (= var2853 null-var2058)))
(define-const var1900 var3093 (node/1974960422 (cast-from-var2058-to-var3816 var2853))) ; Statement: $r1 = r0.<freemarker.ext.dom.AttributeNodeModel: org.w3c.dom.Node node> 
(define-const var337 String (var3093_getLocalName/-2072444605 var1900)) ; Statement: r3 = interfaceinvoke $r1.<org.w3c.dom.Node: java.lang.String getLocalName()>() 
 ; Statement: if r3 == null goto $r2 = r0.<freemarker.ext.dom.AttributeNodeModel: org.w3c.dom.Node node> 
(assert (not (= var337 null-String))) ; Negate: Cond: r3 == null  
(assert true)
(define-const var3333 Bool (= var337 "")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z0 == 0 goto return r3 
(assert (= (ite var3333 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), cast-from-var2058-to-var3816=([freemarker.ext.dom.AttributeNodeModel], freemarker.ext.dom.NodeModel), var3093_getLocalName/-2072444605=([org.w3c.dom.Node], java.lang.String)}
; {var2058=freemarker.ext.dom.AttributeNodeModel, var2853=r0, var3093=org.w3c.dom.Node, var3816=freemarker.ext.dom.NodeModel, var1900=$r1, var337=r3, var1472=null_type, var3333=$z0}
; {freemarker.ext.dom.AttributeNodeModel=var2058, r0=var2853, org.w3c.dom.Node=var3093, freemarker.ext.dom.NodeModel=var3816, $r1=var1900, r3=var337, null_type=var1472, $z0=var3333}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: freemarker.ext.dom.AttributeNodeModel;	$r1 = r0.<freemarker.ext.dom.AttributeNodeModel: org.w3c.dom.Node node>;	r3 = interfaceinvoke $r1.<org.w3c.dom.Node: java.lang.String getLocalName()>();	if r3 == null goto $r2 = r0.<freemarker.ext.dom.AttributeNodeModel: org.w3c.dom.Node node>;	$z0 = virtualinvoke r3.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z0 == 0 goto return r3;	return r3
;block_num 3