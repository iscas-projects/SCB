(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var984 0)
(declare-sort var718 0)
(declare-sort var138 0)
(declare-sort var3417 0)
(declare-sort var474 0)
(declare-sort var1375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3417_getAttributes/1383780881 (var3417) var138)
(declare-fun cast-from-var718-to-var3417 (var718) var3417)
(declare-fun var138_getLength/1076084690 (var138) Int)
(declare-fun var3417_getLocalName/-2072444605 (var3417) String)
(declare-fun var3417_getNamespaceURI/-1958997008 (var3417) String)
(declare-fun var718_getAttributeNodeNS/1816952815 (var718 String String) var474)
(declare-fun var1375-init () var1375)
(declare-fun <init>/-937058452 (var1375 String) void)
(declare-const null-var984 var984)
(declare-const null-var718 var718)
(declare-const null-var474 var474)
(declare-const var2145 var984) ; Statement: r6 := @this: org.apache.poi.openxml4j.opc.internal.unmarshallers.PackagePropertiesUnmarshaller 
(assert (not (= var2145 null-var984)))
(declare-const var3728 var718) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3728 null-var718)))
(define-const var403 var138 (var3417_getAttributes/1383780881 (cast-from-var718-to-var3417 var3728))) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NamedNodeMap getAttributes()>() 
(define-const var3336 Int (var138_getLength/1076084690 var403)) ; Statement: i0 = interfaceinvoke r1.<org.w3c.dom.NamedNodeMap: int getLength()>() 
(define-const var3920 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto r53 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getLocalName()>() 
(assert (>= var3920 var3336)) ; Cond: i2 >= i0 
(define-const var1574 String (var3417_getLocalName/-2072444605 (cast-from-var718-to-var3417 var3728))) ; Statement: r53 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getLocalName()>() 
(define-const var2937 String "http://purl.org/dc/terms/") ; Statement: $r3 = "http://purl.org/dc/terms/" 
(define-const var2698 String (var3417_getNamespaceURI/-1958997008 (cast-from-var718-to-var3417 var3728))) ; Statement: $r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getNamespaceURI()>() 
(assert true)
(define-const var2444 Bool (= var2937 var2698)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r54 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.Attr getAttributeNodeNS(java.lang.String,java.lang.String)>("http://www.w3.org/XML/1998/namespace", "lang") 
(assert (= (ite var2444 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1833 var474 (var718_getAttributeNodeNS/1816952815 var3728 "http://www.w3.org/XML/1998/namespace" "lang")) ; Statement: $r54 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.Attr getAttributeNodeNS(java.lang.String,java.lang.String)>("http://www.w3.org/XML/1998/namespace", "lang") 
 ; Statement: if $r54 == null goto $r5 = "http://purl.org/dc/terms/" 
(assert (not (= var1833 null-var474))) ; Negate: Cond: $r54 == null  
(define-const var1392 var1375 var1375-init) ; Statement: $r42 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException 
(assert true)
;(assert (<init>/-937058452 var1392 "OPC Compliance error [M4.4]: Producers shall not create a document element that contains the xml:lang attribute. Consumers shall consider a document element that violates this constraint to be an error.")) ; Statement: specialinvoke $r42.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>("OPC Compliance error [M4.4]: Producers shall not create a document element that contains the xml:lang attribute. Consumers shall consider a document element that violates this constraint to be an error.") 

(declare-const var1392!1 var1375)
(declare-const var622 String)
 ; Statement: throw $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {var3417_getAttributes/1383780881=([org.w3c.dom.Node], org.w3c.dom.NamedNodeMap), cast-from-var718-to-var3417=([org.w3c.dom.Element], org.w3c.dom.Node), var138_getLength/1076084690=([org.w3c.dom.NamedNodeMap], int), var3417_getLocalName/-2072444605=([org.w3c.dom.Node], java.lang.String), var3417_getNamespaceURI/-1958997008=([org.w3c.dom.Node], java.lang.String), var718_getAttributeNodeNS/1816952815=([org.w3c.dom.Element, java.lang.String, java.lang.String], org.w3c.dom.Attr), var1375-init=([], org.apache.poi.openxml4j.exceptions.InvalidFormatException), <init>/-937058452=([org.apache.poi.openxml4j.exceptions.InvalidFormatException, java.lang.String], void)}
; {var984=org.apache.poi.openxml4j.opc.internal.unmarshallers.PackagePropertiesUnmarshaller, var2145=r6, var718=org.w3c.dom.Element, var3728=r0, var138=org.w3c.dom.NamedNodeMap, var3417=org.w3c.dom.Node, var403=r1, var3336=i0, var3920=i2, var1574=r53, var2937=$r3, var2698=$r2, var2444=$z0, var474=org.w3c.dom.Attr, var1833=$r54, var1375=org.apache.poi.openxml4j.exceptions.InvalidFormatException, var1392=$r42, var622="OPC Compliance error [M4.4]: Producers shall not create a document element that contains the xml:lang attribute. Consumers shall consider a document element that violates this constraint to be an error."}
; {org.apache.poi.openxml4j.opc.internal.unmarshallers.PackagePropertiesUnmarshaller=var984, r6=var2145, org.w3c.dom.Element=var718, r0=var3728, org.w3c.dom.NamedNodeMap=var138, org.w3c.dom.Node=var3417, r1=var403, i0=var3336, i2=var3920, r53=var1574, $r3=var2937, $r2=var2698, $z0=var2444, org.w3c.dom.Attr=var474, $r54=var1833, org.apache.poi.openxml4j.exceptions.InvalidFormatException=var1375, $r42=var1392, "OPC Compliance error [M4.4]: Producers shall not create a document element that contains the xml:lang attribute. Consumers shall consider a document element that violates this constraint to be an error."=var622}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r6 := @this: org.apache.poi.openxml4j.opc.internal.unmarshallers.PackagePropertiesUnmarshaller;	r0 := @parameter0: org.w3c.dom.Element;	r1 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NamedNodeMap getAttributes()>();	i0 = interfaceinvoke r1.<org.w3c.dom.NamedNodeMap: int getLength()>();	i2 = 0;	if i2 >= i0 goto r53 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getLocalName()>();	r53 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getLocalName()>();	$r3 = "http://purl.org/dc/terms/";	$r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getNamespaceURI()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r54 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.Attr getAttributeNodeNS(java.lang.String,java.lang.String)>("http://www.w3.org/XML/1998/namespace", "lang");	$r54 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.Attr getAttributeNodeNS(java.lang.String,java.lang.String)>("http://www.w3.org/XML/1998/namespace", "lang");	if $r54 == null goto $r5 = "http://purl.org/dc/terms/";	$r42 = new org.apache.poi.openxml4j.exceptions.InvalidFormatException;	specialinvoke $r42.<org.apache.poi.openxml4j.exceptions.InvalidFormatException: void <init>(java.lang.String)>("OPC Compliance error [M4.4]: Producers shall not create a document element that contains the xml:lang attribute. Consumers shall consider a document element that violates this constraint to be an error.");	throw $r42
;block_num 5