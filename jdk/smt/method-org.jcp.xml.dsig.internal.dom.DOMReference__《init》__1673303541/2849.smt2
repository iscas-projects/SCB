(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3091 0)
(declare-sort var263 0)
(declare-sort var3403 0)
(declare-sort var2593 0)
(declare-sort var2070 0)
(declare-sort var3957 0)
(declare-sort var3279 0)
(declare-sort var1584 0)
(declare-sort var1994 0)
(declare-sort var3161 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1799710694 (var2070) void)
(declare-fun cast-from-var3091-to-var2070 (var3091) var2070)
(declare-fun digested/739090877 (var3091) Bool)
(declare-fun validated/739090877 (var3091) Bool)
(declare-fun var3957_secureValidation/1111305649 (var3403) Bool)
(declare-fun var3279_getFirstChildElement/-1100343332 (var1584) var263)
(declare-fun cast-from-var263-to-var1584 (var263) var1584)
(declare-fun var1994-init () var1994)
(declare-fun <init>/1228603609 (var1994 Int) void)
(declare-fun var1584_getLocalName/-2072444605 (var1584) String)
(declare-fun var1584_getNamespaceURI/-1958997008 (var1584) String)
(declare-fun var3161-init () var3161)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1750215933 (var3161 String) void)
(declare-const null-var3091 var3091)
(declare-const null-var263 var263)
(declare-const null-var3403 var3403)
(declare-const null-var2593 var2593)
(declare-const var1956 var3091) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMReference 
(assert (not (= var1956 null-var3091)))
(declare-const var3732 var263) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3732 null-var263)))
(declare-const var3806 var3403) ; Statement: r1 := @parameter1: javax.xml.crypto.XMLCryptoContext 
(assert (not (= var3806 null-var3403)))
(declare-const var3858 var2593) ; Statement: r14 := @parameter2: java.security.Provider 
(assert (not (= var3858 null-var2593)))
(assert true)
;(assert (<init>/1799710694 (cast-from-var3091-to-var2070 var1956))) ; Statement: specialinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMStructure: void <init>()>() 

(declare-const var1956!1 var3091)
(declare-const var1956!2 var3091)
(assert (not (= var1956!2 null-var3091)))
(assert (= (digested/739090877 var1956!2) (ite (= 1 0) true false))) ; Statement: r0.<org.jcp.xml.dsig.internal.dom.DOMReference: boolean digested> = 0 
(declare-const var1956!3 var3091)
(assert (not (= var1956!3 null-var3091)))
(assert (= (validated/739090877 var1956!3) (ite (= 1 0) true false))) ; Statement: r0.<org.jcp.xml.dsig.internal.dom.DOMReference: boolean validated> = 0 
(define-const var137 Bool (var3957_secureValidation/1111305649 var3806)) ; Statement: z0 = staticinvoke <org.jcp.xml.dsig.internal.dom.Utils: boolean secureValidation(javax.xml.crypto.XMLCryptoContext)>(r1) 
(define-const var2354 var263 (var3279_getFirstChildElement/-1100343332 (cast-from-var263-to-var1584 var3732))) ; Statement: r52 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node)>(r2) 
(define-const var1997 var1994 var1994-init) ; Statement: $r3 = new java.util.ArrayList 
(assert true)
;(assert (<init>/1228603609 var1997 5)) ; Statement: specialinvoke $r3.<java.util.ArrayList: void <init>(int)>(5) 

(declare-const var1997!1 var1994)
(declare-const var2330 Int)
(define-const var1706 String (var1584_getLocalName/-2072444605 (cast-from-var263-to-var1584 var2354))) ; Statement: $r4 = interfaceinvoke r52.<org.w3c.dom.Element: java.lang.String getLocalName()>() 
(assert true)
(define-const var2501 Bool (= var1706 "Transforms")) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>("Transforms") 
 ; Statement: if $z1 == 0 goto $r58 = interfaceinvoke r52.<org.w3c.dom.Element: java.lang.String getLocalName()>() 
(assert (= (ite var2501 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3949 String (var1584_getLocalName/-2072444605 (cast-from-var263-to-var1584 var2354))) ; Statement: $r58 = interfaceinvoke r52.<org.w3c.dom.Element: java.lang.String getLocalName()>() 
(assert true)
(define-const var3092 Bool (= var3949 "DigestMethod")) ; Statement: $z8 = virtualinvoke $r58.<java.lang.String: boolean equals(java.lang.Object)>("DigestMethod") 
 ; Statement: if $z8 != 0 goto r59 = r52 
(assert (not (not (= (ite var3092 1 0) 0)))) ; Negate: Cond: $z8 != 0  
(define-const var2661 String "http://www.w3.org/2000/09/xmldsig#") ; Statement: $r26 = "http://www.w3.org/2000/09/xmldsig#" 
(define-const var2368 String (var1584_getNamespaceURI/-1958997008 (cast-from-var263-to-var1584 var2354))) ; Statement: $r25 = interfaceinvoke r52.<org.w3c.dom.Element: java.lang.String getNamespaceURI()>() 
(assert true)
(define-const var762 Bool (= var2661 var2368)) ; Statement: $z3 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r25) 
 ; Statement: if $z3 == 0 goto r59 = r52 
(assert (not (= (ite var762 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var768 var3161 var3161-init) ; Statement: $r28 = new javax.xml.crypto.MarshalException 
(define-const var3571 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3571)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3571!1 String)
(assert (= var3571!1 ""))
(assert true)
(define-const var3306 String (append/672562846 var3571!1 "Invalid element name: ")) ; Statement: $r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid element name: ") 
(declare-const var3571!2 String)
(assert (= var3571!2 (str.++ var3571!1 "Invalid element name: ")))
(define-const var1895 String (var1584_getLocalName/-2072444605 (cast-from-var263-to-var1584 var2354))) ; Statement: $r30 = interfaceinvoke r52.<org.w3c.dom.Element: java.lang.String getLocalName()>() 
(assert true)
(define-const var2639 String (append/672562846 var3306 var1895)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var3306!1 String)
(assert (= var3306!1 (str.++ var3306 var1895)))
(assert true)
(define-const var1219 String (append/672562846 var2639 ", expected DigestMethod")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", expected DigestMethod") 
(declare-const var2639!1 String)
(assert (= var2639!1 (str.++ var2639 ", expected DigestMethod")))
(assert true)
(define-const var1130 String (toString/-2075883882 var1219)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1750215933 var768 var1130)) ; Statement: specialinvoke $r28.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r34) 

(declare-const var768!1 var3161)
(declare-const var1130!1 String)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1799710694=([org.jcp.xml.dsig.internal.dom.DOMStructure], void), cast-from-var3091-to-var2070=([org.jcp.xml.dsig.internal.dom.DOMReference], org.jcp.xml.dsig.internal.dom.DOMStructure), digested/739090877=([org.jcp.xml.dsig.internal.dom.DOMReference], boolean), validated/739090877=([org.jcp.xml.dsig.internal.dom.DOMReference], boolean), var3957_secureValidation/1111305649=([javax.xml.crypto.XMLCryptoContext], boolean), var3279_getFirstChildElement/-1100343332=([org.w3c.dom.Node], org.w3c.dom.Element), cast-from-var263-to-var1584=([org.w3c.dom.Element], org.w3c.dom.Node), var1994-init=([], java.util.ArrayList), <init>/1228603609=([java.util.ArrayList, int], void), var1584_getLocalName/-2072444605=([org.w3c.dom.Node], java.lang.String), var1584_getNamespaceURI/-1958997008=([org.w3c.dom.Node], java.lang.String), var3161-init=([], javax.xml.crypto.MarshalException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1750215933=([javax.xml.crypto.MarshalException, java.lang.String], void)}
; {var3091=org.jcp.xml.dsig.internal.dom.DOMReference, var1956=r0, var263=org.w3c.dom.Element, var3732=r2, var3403=javax.xml.crypto.XMLCryptoContext, var3806=r1, var2593=java.security.Provider, var3858=r14, var2070=org.jcp.xml.dsig.internal.dom.DOMStructure, var3957=org.jcp.xml.dsig.internal.dom.Utils, var137=z0, var3279=org.jcp.xml.dsig.internal.dom.DOMUtils, var1584=org.w3c.dom.Node, var2354=r52, var1994=java.util.ArrayList, var1997=$r3, var2330=5, var1706=$r4, var2501=$z1, var3949=$r58, var3092=$z8, var2661=$r26, var2368=$r25, var762=$z3, var3161=javax.xml.crypto.MarshalException, var768=$r28, var3571=$r29, var3306=$r31, var1895=$r30, var2639=$r32, var1219=$r33, var1130=$r34}
; {org.jcp.xml.dsig.internal.dom.DOMReference=var3091, r0=var1956, org.w3c.dom.Element=var263, r2=var3732, javax.xml.crypto.XMLCryptoContext=var3403, r1=var3806, java.security.Provider=var2593, r14=var3858, org.jcp.xml.dsig.internal.dom.DOMStructure=var2070, org.jcp.xml.dsig.internal.dom.Utils=var3957, z0=var137, org.jcp.xml.dsig.internal.dom.DOMUtils=var3279, org.w3c.dom.Node=var1584, r52=var2354, java.util.ArrayList=var1994, $r3=var1997, 5=var2330, $r4=var1706, $z1=var2501, $r58=var3949, $z8=var3092, $r26=var2661, $r25=var2368, $z3=var762, javax.xml.crypto.MarshalException=var3161, $r28=var768, $r29=var3571, $r31=var3306, $r30=var1895, $r32=var2639, $r33=var1219, $r34=var1130}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMReference;	r2 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: javax.xml.crypto.XMLCryptoContext;	r14 := @parameter2: java.security.Provider;	specialinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMStructure: void <init>()>();	r0.<org.jcp.xml.dsig.internal.dom.DOMReference: boolean digested> = 0;	r0.<org.jcp.xml.dsig.internal.dom.DOMReference: boolean validated> = 0;	z0 = staticinvoke <org.jcp.xml.dsig.internal.dom.Utils: boolean secureValidation(javax.xml.crypto.XMLCryptoContext)>(r1);	r52 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node)>(r2);	$r3 = new java.util.ArrayList;	specialinvoke $r3.<java.util.ArrayList: void <init>(int)>(5);	$r4 = interfaceinvoke r52.<org.w3c.dom.Element: java.lang.String getLocalName()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>("Transforms");	if $z1 == 0 goto $r58 = interfaceinvoke r52.<org.w3c.dom.Element: java.lang.String getLocalName()>();	$r58 = interfaceinvoke r52.<org.w3c.dom.Element: java.lang.String getLocalName()>();	$z8 = virtualinvoke $r58.<java.lang.String: boolean equals(java.lang.Object)>("DigestMethod");	if $z8 != 0 goto r59 = r52;	$r26 = "http://www.w3.org/2000/09/xmldsig#";	$r25 = interfaceinvoke r52.<org.w3c.dom.Element: java.lang.String getNamespaceURI()>();	$z3 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r25);	if $z3 == 0 goto r59 = r52;	$r28 = new javax.xml.crypto.MarshalException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invalid element name: ");	$r30 = interfaceinvoke r52.<org.w3c.dom.Element: java.lang.String getLocalName()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", expected DigestMethod");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r34);	throw $r28
;block_num 4