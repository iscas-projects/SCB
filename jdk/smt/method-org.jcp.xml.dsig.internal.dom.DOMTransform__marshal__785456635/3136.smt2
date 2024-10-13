(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1050 0)
(declare-sort var2516 0)
(declare-sort var3539 0)
(declare-sort var1994 0)
(declare-sort var2776 0)
(declare-sort var2505 0)
(declare-sort var1926 0)
(declare-sort var1999 0)
(declare-sort var230 0)
(declare-sort var3905 0)
(declare-sort var2372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2505_getOwnerDocument/1459457377 (var2516) var2776)
(declare-fun var2516_getLocalName/-2072444605 (var2516) String)
(declare-fun var2505_createElement/58206752 (var2776 String String String) var1926)
(declare-fun getAlgorithm/14574345 (var1050) String)
(declare-fun var2505_setAttribute/1299441133 (var1926 String String) void)
(declare-fun spi/-1578054178 (var1050) var1999)
(declare-fun var230-init () var230)
(declare-fun <init>/1926742051 (var230 var2516) void)
(declare-fun cast-from-var1926-to-var2516 (var1926) var2516)
(declare-fun marshalParams/1377073590 (var1999 var3905 var2372) void)
(declare-fun cast-from-var230-to-var3905 (var230) var3905)
(declare-fun cast-from-var1994-to-var2372 (var1994) var2372)
(declare-fun var2516_appendChild/-892350246 (var2516 var2516) var2516)
(declare-const null-var1050 var1050)
(declare-const null-var2516 var2516)
(declare-const null-String String)
(declare-const null-var1994 var1994)
(declare-const var2229 var1050) ; Statement: r4 := @this: org.jcp.xml.dsig.internal.dom.DOMTransform 
(assert (not (= var2229 null-var1050)))
(declare-const var1301 var2516) ; Statement: r0 := @parameter0: org.w3c.dom.Node 
(assert (not (= var1301 null-var2516)))
(declare-const var1933 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1933 null-String)))
(declare-const var3162 var1994) ; Statement: r8 := @parameter2: javax.xml.crypto.dom.DOMCryptoContext 
(assert (not (= var3162 null-var1994)))
(define-const var3843 var2776 (var2505_getOwnerDocument/1459457377 var1301)) ; Statement: r1 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Document getOwnerDocument(org.w3c.dom.Node)>(r0) 
(define-const var239 String (var2516_getLocalName/-2072444605 var1301)) ; Statement: $r2 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getLocalName()>() 
(assert true)
(define-const var1755 Bool (= var239 "Transforms")) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("Transforms") 
 ; Statement: if $z0 == 0 goto r9 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element createElement(org.w3c.dom.Document,java.lang.String,java.lang.String,java.lang.String)>(r1, "CanonicalizationMethod", "http://www.w3.org/2000/09/xmldsig#", r3) 
(assert (= (ite var1755 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2007 var1926 (var2505_createElement/58206752 var3843 "CanonicalizationMethod" "http://www.w3.org/2000/09/xmldsig#" var1933)) ; Statement: r9 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element createElement(org.w3c.dom.Document,java.lang.String,java.lang.String,java.lang.String)>(r1, "CanonicalizationMethod", "http://www.w3.org/2000/09/xmldsig#", r3) 
(assert true) ; Non Conditional
(assert true)
(define-const var1767 String (getAlgorithm/14574345 var2229)) ; Statement: $r5 = virtualinvoke r4.<org.jcp.xml.dsig.internal.dom.DOMTransform: java.lang.String getAlgorithm()>() 
;(assert (var2505_setAttribute/1299441133 var2007 "Algorithm" var1767)) ; Statement: staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: void setAttribute(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, "Algorithm", $r5) 

(declare-const var2007!1 var1926)
(declare-const var543 String)
(declare-const var1767!1 String)
(define-const var1044 var1999 (spi/-1578054178 var2229)) ; Statement: $r7 = r4.<org.jcp.xml.dsig.internal.dom.DOMTransform: javax.xml.crypto.dsig.TransformService spi> 
(define-const var3335 var230 var230-init) ; Statement: $r6 = new javax.xml.crypto.dom.DOMStructure 
(assert true)
;(assert (<init>/1926742051 var3335 (cast-from-var1926-to-var2516 var2007!1))) ; Statement: specialinvoke $r6.<javax.xml.crypto.dom.DOMStructure: void <init>(org.w3c.dom.Node)>(r9) 

(declare-const var3335!1 var230)
(declare-const var2007!2 var1926)
(assert true)
;(assert (marshalParams/1377073590 var1044 (cast-from-var230-to-var3905 var3335!1) (cast-from-var1994-to-var2372 var3162))) ; Statement: virtualinvoke $r7.<javax.xml.crypto.dsig.TransformService: void marshalParams(javax.xml.crypto.XMLStructure,javax.xml.crypto.XMLCryptoContext)>($r6, r8) 

(declare-const var1044!1 var1999)
(declare-const var3335!2 var230)
(declare-const var3162!1 var1994)
;(assert (var2516_appendChild/-892350246 var1301 (cast-from-var1926-to-var2516 var2007!2))) ; Statement: interfaceinvoke r0.<org.w3c.dom.Node: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r9) 

(declare-const var1301!1 var2516)
(declare-const var2007!3 var1926)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2505_getOwnerDocument/1459457377=([org.w3c.dom.Node], org.w3c.dom.Document), var2516_getLocalName/-2072444605=([org.w3c.dom.Node], java.lang.String), var2505_createElement/58206752=([org.w3c.dom.Document, java.lang.String, java.lang.String, java.lang.String], org.w3c.dom.Element), getAlgorithm/14574345=([org.jcp.xml.dsig.internal.dom.DOMTransform], java.lang.String), var2505_setAttribute/1299441133=([org.w3c.dom.Element, java.lang.String, java.lang.String], void), spi/-1578054178=([org.jcp.xml.dsig.internal.dom.DOMTransform], javax.xml.crypto.dsig.TransformService), var230-init=([], javax.xml.crypto.dom.DOMStructure), <init>/1926742051=([javax.xml.crypto.dom.DOMStructure, org.w3c.dom.Node], void), cast-from-var1926-to-var2516=([org.w3c.dom.Element], org.w3c.dom.Node), marshalParams/1377073590=([javax.xml.crypto.dsig.TransformService, javax.xml.crypto.XMLStructure, javax.xml.crypto.XMLCryptoContext], void), cast-from-var230-to-var3905=([javax.xml.crypto.dom.DOMStructure], javax.xml.crypto.XMLStructure), cast-from-var1994-to-var2372=([javax.xml.crypto.dom.DOMCryptoContext], javax.xml.crypto.XMLCryptoContext), var2516_appendChild/-892350246=([org.w3c.dom.Node, org.w3c.dom.Node], org.w3c.dom.Node)}
; {var1050=org.jcp.xml.dsig.internal.dom.DOMTransform, var2229=r4, var2516=org.w3c.dom.Node, var1301=r0, var1933=r3, var3539=null_type, var1994=javax.xml.crypto.dom.DOMCryptoContext, var3162=r8, var2776=org.w3c.dom.Document, var2505=org.jcp.xml.dsig.internal.dom.DOMUtils, var3843=r1, var239=$r2, var1755=$z0, var1926=org.w3c.dom.Element, var2007=r9, var1767=$r5, var543="Algorithm", var1999=javax.xml.crypto.dsig.TransformService, var1044=$r7, var230=javax.xml.crypto.dom.DOMStructure, var3335=$r6, var3905=javax.xml.crypto.XMLStructure, var2372=javax.xml.crypto.XMLCryptoContext}
; {org.jcp.xml.dsig.internal.dom.DOMTransform=var1050, r4=var2229, org.w3c.dom.Node=var2516, r0=var1301, r3=var1933, null_type=var3539, javax.xml.crypto.dom.DOMCryptoContext=var1994, r8=var3162, org.w3c.dom.Document=var2776, org.jcp.xml.dsig.internal.dom.DOMUtils=var2505, r1=var3843, $r2=var239, $z0=var1755, org.w3c.dom.Element=var1926, r9=var2007, $r5=var1767, "Algorithm"=var543, javax.xml.crypto.dsig.TransformService=var1999, $r7=var1044, javax.xml.crypto.dom.DOMStructure=var230, $r6=var3335, javax.xml.crypto.XMLStructure=var3905, javax.xml.crypto.XMLCryptoContext=var2372}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: org.jcp.xml.dsig.internal.dom.DOMTransform;	r0 := @parameter0: org.w3c.dom.Node;	r3 := @parameter1: java.lang.String;	r8 := @parameter2: javax.xml.crypto.dom.DOMCryptoContext;	r1 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Document getOwnerDocument(org.w3c.dom.Node)>(r0);	$r2 = interfaceinvoke r0.<org.w3c.dom.Node: java.lang.String getLocalName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>("Transforms");	if $z0 == 0 goto r9 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element createElement(org.w3c.dom.Document,java.lang.String,java.lang.String,java.lang.String)>(r1, "CanonicalizationMethod", "http://www.w3.org/2000/09/xmldsig#", r3);	r9 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element createElement(org.w3c.dom.Document,java.lang.String,java.lang.String,java.lang.String)>(r1, "CanonicalizationMethod", "http://www.w3.org/2000/09/xmldsig#", r3);	$r5 = virtualinvoke r4.<org.jcp.xml.dsig.internal.dom.DOMTransform: java.lang.String getAlgorithm()>();	staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: void setAttribute(org.w3c.dom.Element,java.lang.String,java.lang.String)>(r9, "Algorithm", $r5);	$r7 = r4.<org.jcp.xml.dsig.internal.dom.DOMTransform: javax.xml.crypto.dsig.TransformService spi>;	$r6 = new javax.xml.crypto.dom.DOMStructure;	specialinvoke $r6.<javax.xml.crypto.dom.DOMStructure: void <init>(org.w3c.dom.Node)>(r9);	virtualinvoke $r7.<javax.xml.crypto.dsig.TransformService: void marshalParams(javax.xml.crypto.XMLStructure,javax.xml.crypto.XMLCryptoContext)>($r6, r8);	interfaceinvoke r0.<org.w3c.dom.Node: org.w3c.dom.Node appendChild(org.w3c.dom.Node)>(r9);	return
;block_num 3