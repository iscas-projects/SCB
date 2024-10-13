(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2670 0)
(declare-sort var1429 0)
(declare-sort var3859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1429_getNamespaceURI/-1958997008 (var1429) String)
(declare-fun var1429_getNodeName/2033747668 (var1429) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2670 var2670)
(declare-const null-var1429 var1429)
(declare-const null-String String)
(declare-const var542 var2670) ; Statement: r4 := @this: freemarker.ext.dom.NodeOutputter 
(assert (not (= var542 null-var2670)))
(declare-const var895 var1429) ; Statement: r0 := @parameter0: org.w3c.dom.Node 
(assert (not (= var895 null-var1429)))
(declare-const var1672 String) ; Statement: r2 := @parameter1: java.lang.StringBuilder 
(assert (not (= var1672 null-String)))
(define-const var1399 String (var1429_getNamespaceURI/-1958997008 var895)) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNamespaceURI()>() 
 ; Statement: if r1 == null goto $r3 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNodeName()>() 
(assert (= var1399 null-String)) ; Cond: r1 == null 
(define-const var78 String (var1429_getNodeName/2033747668 var895)) ; Statement: $r3 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNodeName()>() 
(assert true)
;(assert (append/672562846 var1672 var78)) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1672!1 String)
(assert (= var1672!1 (str.++ var1672 var78)))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1429_getNamespaceURI/-1958997008=([org.w3c.dom.Node], java.lang.String), var1429_getNodeName/2033747668=([org.w3c.dom.Node], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2670=freemarker.ext.dom.NodeOutputter, var542=r4, var1429=org.w3c.dom.Node, var895=r0, var1672=r2, var1399=r1, var3859=null_type, var78=$r3}
; {freemarker.ext.dom.NodeOutputter=var2670, r4=var542, org.w3c.dom.Node=var1429, r0=var895, r2=var1672, r1=var1399, null_type=var3859, $r3=var78}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r4 := @this: freemarker.ext.dom.NodeOutputter;	r0 := @parameter0: org.w3c.dom.Node;	r2 := @parameter1: java.lang.StringBuilder;	r1 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNamespaceURI()>();	if r1 == null goto $r3 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNodeName()>();	$r3 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getNodeName()>();	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	goto [?= return];	return
;block_num 3