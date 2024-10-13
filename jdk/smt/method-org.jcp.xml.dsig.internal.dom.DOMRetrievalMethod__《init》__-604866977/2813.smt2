(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3421 0)
(declare-sort var1332 0)
(declare-sort var3921 0)
(declare-sort var1986 0)
(declare-sort var1058 0)
(declare-sort var3666 0)
(declare-sort var2590 0)
(declare-sort var2280 0)
(declare-sort var2390 0)
(declare-sort var3703 0)
(declare-sort var1606 0)
(declare-sort var2606 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1799710694 (var1058) void)
(declare-fun cast-from-var3421-to-var1058 (var3421) var1058)
(declare-fun var3666_getAttributeValue/-210720006 (var1332 String) String)
(declare-fun uri/143102503 (var3421) String)
(declare-fun type/143102503 (var3421) String)
(declare-fun var1332_getAttributeNodeNS/1816952815 (var1332 String String) var2590)
(declare-fun here/143102503 (var3421) var2590)
(declare-fun var2390_secureValidation/1111305649 (var3921) Bool)
(declare-fun var3703-init () var3703)
(declare-fun <init>/-325640736 (var3703) void)
(declare-fun var3666_getFirstChildElement/-1100343332 (var1606) var1332)
(declare-fun cast-from-var1332-to-var1606 (var1332) var1606)
(declare-fun var1606_getLocalName/-2072444605 (var1606) String)
(declare-fun var1606_getNamespaceURI/-1958997008 (var1606) String)
(declare-fun var2606-init () var2606)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1750215933 (var2606 String) void)
(declare-const null-var3421 var3421)
(declare-const null-var1332 var1332)
(declare-const null-var3921 var3921)
(declare-const null-var1986 var1986)
(declare-const null-String String)
(declare-const var3293 var3421) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod 
(assert (not (= var3293 null-var3421)))
(declare-const var1036 var1332) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1036 null-var1332)))
(declare-const var1869 var3921) ; Statement: r5 := @parameter1: javax.xml.crypto.XMLCryptoContext 
(assert (not (= var1869 null-var3921)))
(declare-const var2899 var1986) ; Statement: r31 := @parameter2: java.security.Provider 
(assert (not (= var2899 null-var1986)))
(assert true)
;(assert (<init>/1799710694 (cast-from-var3421-to-var1058 var3293))) ; Statement: specialinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMStructure: void <init>()>() 

(declare-const var3293!1 var3421)
(define-const var2111 String (var3666_getAttributeValue/-210720006 var1036 "URI")) ; Statement: $r2 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: java.lang.String getAttributeValue(org.w3c.dom.Element,java.lang.String)>(r1, "URI") 
(declare-const var3293!2 var3421)
(assert (not (= var3293!2 null-var3421)))
(assert (= (uri/143102503 var3293!2) var2111)) ; Statement: r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: java.lang.String uri> = $r2 
(define-const var2538 String (var3666_getAttributeValue/-210720006 var1036 "Type")) ; Statement: $r3 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: java.lang.String getAttributeValue(org.w3c.dom.Element,java.lang.String)>(r1, "Type") 
(declare-const var3293!3 var3421)
(assert (not (= var3293!3 null-var3421)))
(assert (= (type/143102503 var3293!3) var2538)) ; Statement: r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: java.lang.String type> = $r3 
(define-const var446 var2590 (var1332_getAttributeNodeNS/1816952815 var1036 null-String "URI")) ; Statement: $r4 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.Attr getAttributeNodeNS(java.lang.String,java.lang.String)>(null, "URI") 
(declare-const var3293!4 var3421)
(assert (not (= var3293!4 null-var3421)))
(assert (= (here/143102503 var3293!4) var446)) ; Statement: r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: org.w3c.dom.Attr here> = $r4 
(define-const var1481 Bool (var2390_secureValidation/1111305649 var1869)) ; Statement: z0 = staticinvoke <org.jcp.xml.dsig.internal.dom.Utils: boolean secureValidation(javax.xml.crypto.XMLCryptoContext)>(r5) 
(define-const var2345 var3703 var3703-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2345)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var2345!1 var3703)
(define-const var664 var1332 (var3666_getFirstChildElement/-1100343332 (cast-from-var1332-to-var1606 var1036))) ; Statement: r7 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node)>(r1) 
 ; Statement: if r7 == null goto $z1 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>() 
(assert (not (= var664 null-var1332))) ; Negate: Cond: r7 == null  
(define-const var574 String (var1606_getLocalName/-2072444605 (cast-from-var1332-to-var1606 var664))) ; Statement: r10 = interfaceinvoke r7.<org.w3c.dom.Element: java.lang.String getLocalName()>() 
(define-const var836 String (var1606_getNamespaceURI/-1958997008 (cast-from-var1332-to-var1606 var664))) ; Statement: r38 = interfaceinvoke r7.<org.w3c.dom.Element: java.lang.String getNamespaceURI()>() 
(define-const var3851 String "Transforms") ; Statement: $r11 = "Transforms" 
(assert true)
(define-const var680 Bool (= var3851 var574)) ; Statement: $z2 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r10) 
 ; Statement: if $z2 == 0 goto $r12 = new javax.xml.crypto.MarshalException 
(assert (= (ite var680 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2444 var2606 var2606-init) ; Statement: $r12 = new javax.xml.crypto.MarshalException 
(define-const var133 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var133)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var133!1 String)
(assert (= var133!1 ""))
(assert true)
(define-const var2412 String (append/672562846 var133!1 "Invalid element name: ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid element name: ") 
(declare-const var133!2 String)
(assert (= var133!2 (str.++ var133!1 "Invalid element name: ")))
(assert true)
(define-const var1449 String (append/672562846 var2412 var836)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r38) 
(declare-const var2412!1 String)
(assert (= var2412!1 (str.++ var2412 var836)))
(assert true)
(define-const var1634 String (append/672562846 var1449 ":")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1449!1 String)
(assert (= var1449!1 (str.++ var1449 ":")))
(assert true)
(define-const var422 String (append/672562846 var1634 var574)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10) 
(declare-const var1634!1 String)
(assert (= var1634!1 (str.++ var1634 var574)))
(assert true)
(define-const var2184 String (append/672562846 var422 ", expected Transforms")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", expected Transforms") 
(declare-const var422!1 String)
(assert (= var422!1 (str.++ var422 ", expected Transforms")))
(assert true)
(define-const var2253 String (toString/-2075883882 var2184)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1750215933 var2444 var2253)) ; Statement: specialinvoke $r12.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r19) 

(declare-const var2444!1 var2606)
(declare-const var2253!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1799710694=([org.jcp.xml.dsig.internal.dom.DOMStructure], void), cast-from-var3421-to-var1058=([org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod], org.jcp.xml.dsig.internal.dom.DOMStructure), var3666_getAttributeValue/-210720006=([org.w3c.dom.Element, java.lang.String], java.lang.String), uri/143102503=([org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod], java.lang.String), type/143102503=([org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod], java.lang.String), var1332_getAttributeNodeNS/1816952815=([org.w3c.dom.Element, java.lang.String, java.lang.String], org.w3c.dom.Attr), here/143102503=([org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod], org.w3c.dom.Attr), var2390_secureValidation/1111305649=([javax.xml.crypto.XMLCryptoContext], boolean), var3703-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), var3666_getFirstChildElement/-1100343332=([org.w3c.dom.Node], org.w3c.dom.Element), cast-from-var1332-to-var1606=([org.w3c.dom.Element], org.w3c.dom.Node), var1606_getLocalName/-2072444605=([org.w3c.dom.Node], java.lang.String), var1606_getNamespaceURI/-1958997008=([org.w3c.dom.Node], java.lang.String), var2606-init=([], javax.xml.crypto.MarshalException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1750215933=([javax.xml.crypto.MarshalException, java.lang.String], void)}
; {var3421=org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod, var3293=r0, var1332=org.w3c.dom.Element, var1036=r1, var3921=javax.xml.crypto.XMLCryptoContext, var1869=r5, var1986=java.security.Provider, var2899=r31, var1058=org.jcp.xml.dsig.internal.dom.DOMStructure, var3666=org.jcp.xml.dsig.internal.dom.DOMUtils, var2111=$r2, var2538=$r3, var2590=org.w3c.dom.Attr, var2280=null_type, var446=$r4, var2390=org.jcp.xml.dsig.internal.dom.Utils, var1481=z0, var3703=java.util.ArrayList, var2345=$r6, var1606=org.w3c.dom.Node, var664=r7, var574=r10, var836=r38, var3851=$r11, var680=$z2, var2606=javax.xml.crypto.MarshalException, var2444=$r12, var133=$r13, var2412=$r14, var1449=$r15, var1634=$r16, var422=$r17, var2184=$r18, var2253=$r19}
; {org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod=var3421, r0=var3293, org.w3c.dom.Element=var1332, r1=var1036, javax.xml.crypto.XMLCryptoContext=var3921, r5=var1869, java.security.Provider=var1986, r31=var2899, org.jcp.xml.dsig.internal.dom.DOMStructure=var1058, org.jcp.xml.dsig.internal.dom.DOMUtils=var3666, $r2=var2111, $r3=var2538, org.w3c.dom.Attr=var2590, null_type=var2280, $r4=var446, org.jcp.xml.dsig.internal.dom.Utils=var2390, z0=var1481, java.util.ArrayList=var3703, $r6=var2345, org.w3c.dom.Node=var1606, r7=var664, r10=var574, r38=var836, $r11=var3851, $z2=var680, javax.xml.crypto.MarshalException=var2606, $r12=var2444, $r13=var133, $r14=var2412, $r15=var1449, $r16=var1634, $r17=var422, $r18=var2184, $r19=var2253}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod;	r1 := @parameter0: org.w3c.dom.Element;	r5 := @parameter1: javax.xml.crypto.XMLCryptoContext;	r31 := @parameter2: java.security.Provider;	specialinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMStructure: void <init>()>();	$r2 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: java.lang.String getAttributeValue(org.w3c.dom.Element,java.lang.String)>(r1, "URI");	r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: java.lang.String uri> = $r2;	$r3 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: java.lang.String getAttributeValue(org.w3c.dom.Element,java.lang.String)>(r1, "Type");	r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: java.lang.String type> = $r3;	$r4 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.Attr getAttributeNodeNS(java.lang.String,java.lang.String)>(null, "URI");	r0.<org.jcp.xml.dsig.internal.dom.DOMRetrievalMethod: org.w3c.dom.Attr here> = $r4;	z0 = staticinvoke <org.jcp.xml.dsig.internal.dom.Utils: boolean secureValidation(javax.xml.crypto.XMLCryptoContext)>(r5);	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	r7 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node)>(r1);	if r7 == null goto $z1 = interfaceinvoke $r6.<java.util.List: boolean isEmpty()>();	r10 = interfaceinvoke r7.<org.w3c.dom.Element: java.lang.String getLocalName()>();	r38 = interfaceinvoke r7.<org.w3c.dom.Element: java.lang.String getNamespaceURI()>();	$r11 = "Transforms";	$z2 = virtualinvoke $r11.<java.lang.String: boolean equals(java.lang.Object)>(r10);	if $z2 == 0 goto $r12 = new javax.xml.crypto.MarshalException;	$r12 = new javax.xml.crypto.MarshalException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid element name: ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r38);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r10);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", expected Transforms");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r19);	throw $r12
;block_num 3