(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var134 0)
(declare-sort var1849 0)
(declare-sort var3379 0)
(declare-sort var3260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun node/1974960422 (var3379) var1849)
(declare-fun cast-from-var134-to-var3379 (var134) var3379)
(declare-fun var1849_getLocalName/-2072444605 (var1849) String)
(declare-fun var1849_getNodeName/2033747668 (var1849) String)
(declare-const null-var134 var134)
(declare-const null-String String)
(declare-const var858 var134) ; Statement: r0 := @this: freemarker.ext.dom.ElementModel 
(assert (not (= var858 null-var134)))
(define-const var1403 var1849 (node/1974960422 (cast-from-var134-to-var3379 var858))) ; Statement: $r1 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node> 
(define-const var789 String (var1849_getLocalName/-2072444605 var1403)) ; Statement: r3 = interfaceinvoke $r1.<org.w3c.dom.Node: java.lang.String getLocalName()>() 
 ; Statement: if r3 == null goto $r2 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node> 
(assert (= var789 null-String)) ; Cond: r3 == null 
(define-const var3061 var1849 (node/1974960422 (cast-from-var134-to-var3379 var858))) ; Statement: $r2 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node> 
(define-const var789!1 String (var1849_getNodeName/2033747668 var3061)) ; Statement: r3 = interfaceinvoke $r2.<org.w3c.dom.Node: java.lang.String getNodeName()>() 
(assert true) ; Non Conditional
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), cast-from-var134-to-var3379=([freemarker.ext.dom.ElementModel], freemarker.ext.dom.NodeModel), var1849_getLocalName/-2072444605=([org.w3c.dom.Node], java.lang.String), var1849_getNodeName/2033747668=([org.w3c.dom.Node], java.lang.String)}
; {var134=freemarker.ext.dom.ElementModel, var858=r0, var1849=org.w3c.dom.Node, var3379=freemarker.ext.dom.NodeModel, var1403=$r1, var789=r3, var3260=null_type, var3061=$r2}
; {freemarker.ext.dom.ElementModel=var134, r0=var858, org.w3c.dom.Node=var1849, freemarker.ext.dom.NodeModel=var3379, $r1=var1403, r3=var789, null_type=var3260, $r2=var3061}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.ext.dom.ElementModel;	$r1 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node>;	r3 = interfaceinvoke $r1.<org.w3c.dom.Node: java.lang.String getLocalName()>();	if r3 == null goto $r2 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node>;	$r2 = r0.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node>;	r3 = interfaceinvoke $r2.<org.w3c.dom.Node: java.lang.String getNodeName()>();	return r3
;block_num 3