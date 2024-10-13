(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2083 0)
(declare-sort var2768 0)
(declare-sort var2371 0)
(declare-sort var960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node/1974960422 (var2371) var2768)
(declare-fun cast-from-var2083-to-var2371 (var2083) var2371)
(declare-fun var2768_getLocalName/-2072444605 (var2768) String)
(declare-fun var2768_getNodeName/2033747668 (var2768) String)
(declare-const null-var2083 var2083)
(declare-const null-String String)
(declare-const var2005 var2083) ; Statement: r0 := @this: freemarker.ext.dom.AttributeNodeModel 
(assert (not (= var2005 null-var2083)))
(define-const var69 var2768 (node/1974960422 (cast-from-var2083-to-var2371 var2005))) ; Statement: $r1 = r0.<freemarker.ext.dom.AttributeNodeModel: org.w3c.dom.Node node> 
(define-const var664 String (var2768_getLocalName/-2072444605 var69)) ; Statement: r3 = interfaceinvoke $r1.<org.w3c.dom.Node: java.lang.String getLocalName()>() 
 ; Statement: if r3 == null goto $r2 = r0.<freemarker.ext.dom.AttributeNodeModel: org.w3c.dom.Node node> 
(assert (= var664 null-String)) ; Cond: r3 == null 
(define-const var1571 var2768 (node/1974960422 (cast-from-var2083-to-var2371 var2005))) ; Statement: $r2 = r0.<freemarker.ext.dom.AttributeNodeModel: org.w3c.dom.Node node> 
(define-const var664!1 String (var2768_getNodeName/2033747668 var1571)) ; Statement: r3 = interfaceinvoke $r2.<org.w3c.dom.Node: java.lang.String getNodeName()>() 
(assert true) ; Non Conditional
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), cast-from-var2083-to-var2371=([freemarker.ext.dom.AttributeNodeModel], freemarker.ext.dom.NodeModel), var2768_getLocalName/-2072444605=([org.w3c.dom.Node], java.lang.String), var2768_getNodeName/2033747668=([org.w3c.dom.Node], java.lang.String)}
; {var2083=freemarker.ext.dom.AttributeNodeModel, var2005=r0, var2768=org.w3c.dom.Node, var2371=freemarker.ext.dom.NodeModel, var69=$r1, var664=r3, var960=null_type, var1571=$r2}
; {freemarker.ext.dom.AttributeNodeModel=var2083, r0=var2005, org.w3c.dom.Node=var2768, freemarker.ext.dom.NodeModel=var2371, $r1=var69, r3=var664, null_type=var960, $r2=var1571}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.ext.dom.AttributeNodeModel;	$r1 = r0.<freemarker.ext.dom.AttributeNodeModel: org.w3c.dom.Node node>;	r3 = interfaceinvoke $r1.<org.w3c.dom.Node: java.lang.String getLocalName()>();	if r3 == null goto $r2 = r0.<freemarker.ext.dom.AttributeNodeModel: org.w3c.dom.Node node>;	$r2 = r0.<freemarker.ext.dom.AttributeNodeModel: org.w3c.dom.Node node>;	r3 = interfaceinvoke $r2.<org.w3c.dom.Node: java.lang.String getNodeName()>();	return r3
;block_num 3