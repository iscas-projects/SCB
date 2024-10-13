(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3741 0)
(declare-sort var1874 0)
(declare-sort var1349 0)
(declare-sort var269 0)
(declare-sort var1917 0)
(declare-sort var1332 0)
(declare-sort var1517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1349-init () var1349)
(declare-fun node/1974960422 (var1917) var269)
(declare-fun cast-from-var3741-to-var1917 (var3741) var1917)
(declare-fun cast-from-var269-to-var1332 (var269) var1332)
(declare-fun var1332_getElementsByTagName/375085831 (var1332 String) var1517)
(declare-fun <init>/-2030729642 (var1349 var1517 var1917) void)
(declare-const null-var3741 var3741)
(declare-const null-String String)
(declare-const var1671 var3741) ; Statement: r1 := @this: freemarker.ext.dom.ElementModel 
(assert (not (= var1671 null-var3741)))
(declare-const var408 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var408 null-String)))
(assert true)
(define-const var1783 Bool (= var408 "*")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("*") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("**") 
(assert (= (ite var1783 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1412 Bool (= var408 "**")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("**") 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("@") 
(assert (not (= (ite var1412 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2278 var1349 var1349-init) ; Statement: $r69 = new freemarker.ext.dom.NodeListModel 
(define-const var3726 var269 (node/1974960422 (cast-from-var3741-to-var1917 var1671))) ; Statement: $r53 = r1.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node> 
(define-const var2086 var1332 (cast-from-var269-to-var1332 var3726)) ; Statement: $r54 = (org.w3c.dom.Element) $r53 
(define-const var2405 var1517 (var1332_getElementsByTagName/375085831 var2086 "*")) ; Statement: $r55 = interfaceinvoke $r54.<org.w3c.dom.Element: org.w3c.dom.NodeList getElementsByTagName(java.lang.String)>("*") 
(assert true)
;(assert (<init>/-2030729642 var2278 var2405 (cast-from-var3741-to-var1917 var1671))) ; Statement: specialinvoke $r69.<freemarker.ext.dom.NodeListModel: void <init>(org.w3c.dom.NodeList,freemarker.ext.dom.NodeModel)>($r55, r1) 

(declare-const var2278!1 var1349)
(declare-const var2405!1 var1517)
(declare-const var1671!1 var3741)
 ; Statement: return $r69 
(check-sat)
(get-model)
(get-unsat-core)
; {var1349-init=([], freemarker.ext.dom.NodeListModel), node/1974960422=([freemarker.ext.dom.NodeModel], org.w3c.dom.Node), cast-from-var3741-to-var1917=([freemarker.ext.dom.ElementModel], freemarker.ext.dom.NodeModel), cast-from-var269-to-var1332=([org.w3c.dom.Node], org.w3c.dom.Element), var1332_getElementsByTagName/375085831=([org.w3c.dom.Element, java.lang.String], org.w3c.dom.NodeList), <init>/-2030729642=([freemarker.ext.dom.NodeListModel, org.w3c.dom.NodeList, freemarker.ext.dom.NodeModel], void)}
; {var3741=freemarker.ext.dom.ElementModel, var1671=r1, var408=r0, var1874=null_type, var1783=$z0, var1412=$z1, var1349=freemarker.ext.dom.NodeListModel, var2278=$r69, var269=org.w3c.dom.Node, var1917=freemarker.ext.dom.NodeModel, var3726=$r53, var1332=org.w3c.dom.Element, var2086=$r54, var1517=org.w3c.dom.NodeList, var2405=$r55}
; {freemarker.ext.dom.ElementModel=var3741, r1=var1671, r0=var408, null_type=var1874, $z0=var1783, $z1=var1412, freemarker.ext.dom.NodeListModel=var1349, $r69=var2278, org.w3c.dom.Node=var269, freemarker.ext.dom.NodeModel=var1917, $r53=var3726, org.w3c.dom.Element=var1332, $r54=var2086, org.w3c.dom.NodeList=var1517, $r55=var2405}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r1 := @this: freemarker.ext.dom.ElementModel;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("*");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("**");	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("**");	if $z1 == 0 goto $z2 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("@");	$r69 = new freemarker.ext.dom.NodeListModel;	$r53 = r1.<freemarker.ext.dom.ElementModel: org.w3c.dom.Node node>;	$r54 = (org.w3c.dom.Element) $r53;	$r55 = interfaceinvoke $r54.<org.w3c.dom.Element: org.w3c.dom.NodeList getElementsByTagName(java.lang.String)>("*");	specialinvoke $r69.<freemarker.ext.dom.NodeListModel: void <init>(org.w3c.dom.NodeList,freemarker.ext.dom.NodeModel)>($r55, r1);	return $r69
;block_num 3