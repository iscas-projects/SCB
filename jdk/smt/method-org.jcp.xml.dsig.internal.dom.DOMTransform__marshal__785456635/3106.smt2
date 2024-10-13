(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var628 0)
(declare-sort var2697 0)
(declare-sort var2921 0)
(declare-sort var3157 0)
(declare-sort var3024 0)
(declare-sort var3965 0)
(declare-sort var478 0)
(declare-sort var1235 0)
(declare-sort var1839 0)
(declare-sort var77 0)
(declare-sort var1496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3965_getOwnerDocument/1459457377 (var2697) var3024)
(declare-fun var2697_getLocalName/-2072444605 (var2697) String)
(declare-fun var3965_createElement/58206752 (var3024 String String String) var478)
(declare-fun getAlgorithm/14574345 (var628) String)
(declare-fun var3965_setAttribute/1299441133 (var478 String String) void)
(declare-fun spi/-1578054178 (var628) var1235)
(declare-fun var1839-init () var1839)
(declare-fun <init>/1926742051 (var1839 var2697) void)
(declare-fun cast-from-var478-to-var2697 (var478) var2697)
(declare-fun marshalParams/1377073590 (var1235 var77 var1496) void)
(declare-fun cast-from-var1839-to-var77 (var1839) var77)
(declare-fun cast-from-var3157-to-var1496 (var3157) var1496)
(declare-fun var2697_appendChild/-892350246 (var2697 var2697) var2697)
(declare-const null-var628 var628)
(declare-const null-var2697 var2697)
(declare-const null-String String)
(declare-const null-var3157 var3157)
(declare-const var579 var628) ; Statement: r4 := @this: org.jcp.xml.dsig.internal.dom.DOMTransform 
(assert (not (= var579 null-var628)))
(declare-const var3650 var2697) ; Statement: r0 := @parameter0: org.w3c.dom.Node 
(assert (not (= var3650 null-var2697)))
(declare-const var2408 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2408 null-String)))
(declare-const var744 var3157) ; Statement: r8 := @parameter2: javax.xml.crypto.dom.DOMCryptoContext 
(assert (not (= var744 null-var3157)))
(define-const var3699 var3024 (var3965_getOwnerDocument/1459457377 var3650)) ; Statement: r1 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Document getOwnerDocument(org.w3c.dom.Node)>(r0) 
(define-const var163 String (var2697_getLocalName/-2072444605 var3650)) ; Statement: $r2 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getLocalName()>() 
(assert true)
(define-const var117 Bool (= var163 "Transforms")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("Transforms") 
 ; Statement: if $z0 == 0 goto r9 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element createElement(org.w3c.dom.Document,java.lang.String,java.lang.String,java.lang.String)>(r1, "CanonicalizationMethod", "http://www.w3.org/2000/09/xmldsig#", r3) 
(assert (not (= (ite var117 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var722 var478 (var3965_createElement/58206752 var3699 "Transform" "http://www.w3.org/2000/09/xmldsig#" var2408)) ; Statement: r9 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element createElement(org.w3c.dom.Document,java.lang.String,java.lang.String,java.lang.String)>(r1, "Transform", "http://www.w3.org/2000/09/xmldsig#", r3) 
 ; Statement: goto [?= $r5 = virtualinvoke r4.<org.jcp.xml.dsig.internal.dom.DOMTransform: java.lang.String getAlgorithm()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3936 String (getAlgorithm/14574345 var579)) ; Statement: $r5 = virtualinvoke r4.<org.jcp.xml.dsig.internal.dom.DOMTransform: java.lang.String getAlgorithm()>() 
;(assert (var3965_setAttribute/1299441133 var722 "Algorithm" var3936)) ; Statement: staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: void setAttribute(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, "Algorithm", $r5) 

(declare-const var722!1 var478)
(declare-const var595 String)
(declare-const var3936!1 String)
(define-const var2127 var1235 (spi/-1578054178 var579)) ; Statement: $r7 = r4.<org.jcp.xml.dsig.internal.dom.DOMTransform: javax.xml.crypto.dsig.TransformService spi> 
(define-const var3318 var1839 var1839-init) ; Statement: $r6 = new javax.xml.crypto.dom.DOMStructure 
(assert true)
;(assert (<init>/1926742051 var3318 (cast-from-var478-to-var2697 var722!1))) ; Statement: specialinvoke $r6.<javax.xml.crypto.dom.DOMStructure: void <init>(org.w3c.dom.Node)>(r9) 

(declare-const var3318!1 var1839)
(declare-const var722!2 var478)
(assert true)
;(assert (marshalParams/1377073590 var2127 (cast-from-var1839-to-var77 var3318!1) (cast-from-var3157-to-var1496 var744))) ; Statement: virtualinvoke $r7.<javax.xml.crypto.dsig.TransformService: void marshalParams(javax.xml.crypto.XMLStructure,javax.xml.crypto.XMLCryptoContext)>($r6, r8) 

(declare-const var2127!1 var1235)
(declare-const var3318!2 var1839)
(declare-const var744!1 var3157)
;(assert (var2697_appendChild/-892350246 var3650 (cast-from-var478-to-var2697 var722!2))) ; Statement: interfaceinvoke r0.<org.w3c.dom.Node: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r9) 

(declare-const var3650!1 var2697)
(declare-const var722!3 var478)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3965_getOwnerDocument/1459457377=([org.w3c.dom.Node], org.w3c.dom.Document), var2697_getLocalName/-2072444605=([org.w3c.dom.Node], java.lang.String), var3965_createElement/58206752=([org.w3c.dom.Document, java.lang.String, java.lang.String, java.lang.String], org.w3c.dom.Element), getAlgorithm/14574345=([org.jcp.xml.dsig.internal.dom.DOMTransform], java.lang.String), var3965_setAttribute/1299441133=([org.w3c.dom.Element, java.lang.String, java.lang.String], void), spi/-1578054178=([org.jcp.xml.dsig.internal.dom.DOMTransform], javax.xml.crypto.dsig.TransformService), var1839-init=([], javax.xml.crypto.dom.DOMStructure), <init>/1926742051=([javax.xml.crypto.dom.DOMStructure, org.w3c.dom.Node], void), cast-from-var478-to-var2697=([org.w3c.dom.Element], org.w3c.dom.Node), marshalParams/1377073590=([javax.xml.crypto.dsig.TransformService, javax.xml.crypto.XMLStructure, javax.xml.crypto.XMLCryptoContext], void), cast-from-var1839-to-var77=([javax.xml.crypto.dom.DOMStructure], javax.xml.crypto.XMLStructure), cast-from-var3157-to-var1496=([javax.xml.crypto.dom.DOMCryptoContext], javax.xml.crypto.XMLCryptoContext), var2697_appendChild/-892350246=([org.w3c.dom.Node, org.w3c.dom.Node], org.w3c.dom.Node)}
; {var628=org.jcp.xml.dsig.internal.dom.DOMTransform, var579=r4, var2697=org.w3c.dom.Node, var3650=r0, var2408=r3, var2921=null_type, var3157=javax.xml.crypto.dom.DOMCryptoContext, var744=r8, var3024=org.w3c.dom.Document, var3965=org.jcp.xml.dsig.internal.dom.DOMUtils, var3699=r1, var163=$r2, var117=$z0, var478=org.w3c.dom.Element, var722=r9, var3936=$r5, var595="Algorithm", var1235=javax.xml.crypto.dsig.TransformService, var2127=$r7, var1839=javax.xml.crypto.dom.DOMStructure, var3318=$r6, var77=javax.xml.crypto.XMLStructure, var1496=javax.xml.crypto.XMLCryptoContext}
; {org.jcp.xml.dsig.internal.dom.DOMTransform=var628, r4=var579, org.w3c.dom.Node=var2697, r0=var3650, r3=var2408, null_type=var2921, javax.xml.crypto.dom.DOMCryptoContext=var3157, r8=var744, org.w3c.dom.Document=var3024, org.jcp.xml.dsig.internal.dom.DOMUtils=var3965, r1=var3699, $r2=var163, $z0=var117, org.w3c.dom.Element=var478, r9=var722, $r5=var3936, "Algorithm"=var595, javax.xml.crypto.dsig.TransformService=var1235, $r7=var2127, javax.xml.crypto.dom.DOMStructure=var1839, $r6=var3318, javax.xml.crypto.XMLStructure=var77, javax.xml.crypto.XMLCryptoContext=var1496}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: org.jcp.xml.dsig.internal.dom.DOMTransform;	r0 := @parameter0: org.w3c.dom.Node;	r3 := @parameter1: java.lang.String;	r8 := @parameter2: javax.xml.crypto.dom.DOMCryptoContext;	r1 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Document getOwnerDocument(org.w3c.dom.Node)>(r0);	$r2 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getLocalName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("Transforms");	if $z0 == 0 goto r9 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element createElement(org.w3c.dom.Document,java.lang.String,java.lang.String,java.lang.String)>(r1, "CanonicalizationMethod", "http://www.w3.org/2000/09/xmldsig#", r3);	r9 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element createElement(org.w3c.dom.Document,java.lang.String,java.lang.String,java.lang.String)>(r1, "Transform", "http://www.w3.org/2000/09/xmldsig#", r3);	goto [?= $r5 = virtualinvoke r4.<org.jcp.xml.dsig.internal.dom.DOMTransform: java.lang.String getAlgorithm()>()];	$r5 = virtualinvoke r4.<org.jcp.xml.dsig.internal.dom.DOMTransform: java.lang.String getAlgorithm()>();	staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: void setAttribute(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, "Algorithm", $r5);	$r7 = r4.<org.jcp.xml.dsig.internal.dom.DOMTransform: javax.xml.crypto.dsig.TransformService spi>;	$r6 = new javax.xml.crypto.dom.DOMStructure;	specialinvoke $r6.<javax.xml.crypto.dom.DOMStructure: void <init>(org.w3c.dom.Node)>(r9);	virtualinvoke $r7.<javax.xml.crypto.dsig.TransformService: void marshalParams(javax.xml.crypto.XMLStructure,javax.xml.crypto.XMLCryptoContext)>($r6, r8);	interfaceinvoke r0.<org.w3c.dom.Node: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r9);	return
;block_num 3