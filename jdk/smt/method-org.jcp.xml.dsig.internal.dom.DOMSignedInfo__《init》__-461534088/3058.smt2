(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3123 0)
(declare-sort var3625 0)
(declare-sort var972 0)
(declare-sort var2434 0)
(declare-sort var1097 0)
(declare-sort var3583 0)
(declare-sort var122 0)
(declare-sort var2186 0)
(declare-sort var230 0)
(declare-sort var457 0)
(declare-sort var2418 0)
(declare-sort var1140 0)
(declare-sort var1005 0)
(declare-sort var903 0)
(declare-sort var607 0)
(declare-sort var2466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/1799710694 (var1097) void)
(declare-fun cast-from-var3123-to-var1097 (var3123) var1097)
(declare-fun localSiElem/-928168520 (var3123) var3625)
(declare-fun var122_getOwnerDocument/618770686 (var122) var3583)
(declare-fun cast-from-var3625-to-var122 (var3625) var122)
(declare-fun ownerDoc/-928168520 (var3123) var3583)
(declare-fun var2186_getAttributeValue/-210720006 (var3625 String) String)
(declare-fun id/-928168520 (var3123) String)
(declare-fun var2186_getFirstChildElement/-2020672964 (var122 String String) var3625)
(declare-fun var230-init () var230)
(declare-fun <init>/-870032129 (var230 var3625 var972 var2434) void)
(declare-fun cast-from-var230-to-var457 (var230) var457)
(declare-fun canonicalizationMethod/-928168520 (var3123) var457)
(declare-fun var2186_getNextSiblingElement/-1353806625 (var122 String String) var3625)
(declare-fun var1140_unmarshal/-1168941542 (var3625) var2418)
(declare-fun signatureMethod/-928168520 (var3123) var2418)
(declare-fun var1005_secureValidation/1111305649 (var972) Bool)
(declare-fun var903_getAlgorithm/-1357366243 (var903) String)
(declare-fun cast-from-var2418-to-var903 (var2418) var903)
(declare-fun var607_restrictAlg/703516386 (String) Bool)
(declare-fun var2466-init () var2466)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1750215933 (var2466 String) void)
(declare-const null-var3123 var3123)
(declare-const null-var3625 var3625)
(declare-const null-var972 var972)
(declare-const null-var2434 var2434)
(declare-const var2502 var3123) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMSignedInfo 
(assert (not (= var2502 null-var3123)))
(declare-const var3756 var3625) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3756 null-var3625)))
(declare-const var3064 var972) ; Statement: r6 := @parameter1: javax.xml.crypto.XMLCryptoContext 
(assert (not (= var3064 null-var972)))
(declare-const var2206 var2434) ; Statement: r7 := @parameter2: java.security.Provider 
(assert (not (= var2206 null-var2434)))
(assert true)
;(assert (<init>/1799710694 (cast-from-var3123-to-var1097 var2502))) ; Statement: specialinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMStructure: void <init>()>() 

(declare-const var2502!1 var3123)
(declare-const var2502!2 var3123)
(assert (not (= var2502!2 null-var3123)))
(assert (= (localSiElem/-928168520 var2502!2) var3756)) ; Statement: r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: org.w3c.dom.Element localSiElem> = r1 
(define-const var2556 var3583 (var122_getOwnerDocument/618770686 (cast-from-var3625-to-var122 var3756))) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.Document getOwnerDocument()>() 
(declare-const var2502!3 var3123)
(assert (not (= var2502!3 null-var3123)))
(assert (= (ownerDoc/-928168520 var2502!3) var2556)) ; Statement: r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: org.w3c.dom.Document ownerDoc> = $r2 
(define-const var3183 String (var2186_getAttributeValue/-210720006 var3756 "Id")) ; Statement: $r3 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: java.lang.String getAttributeValue(org.w3c.dom.Element,java.lang.String)>(r1, "Id") 
(declare-const var2502!4 var3123)
(assert (not (= var2502!4 null-var3123)))
(assert (= (id/-928168520 var2502!4) var3183)) ; Statement: r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: java.lang.String id> = $r3 
(define-const var646 var3625 (var2186_getFirstChildElement/-2020672964 (cast-from-var3625-to-var122 var3756) "CanonicalizationMethod" "http://www.w3.org/2000/09/xmldsig#")) ; Statement: r4 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node,java.lang.String,java.lang.String)>(r1, "CanonicalizationMethod", "http://www.w3.org/2000/09/xmldsig#") 
(define-const var306 var230 var230-init) ; Statement: $r5 = new org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod 
(assert true)
;(assert (<init>/-870032129 var306 var646 var3064 var2206)) ; Statement: specialinvoke $r5.<org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod: void <init>(org.w3c.dom.Element,javax.xml.crypto.XMLCryptoContext,java.security.Provider)>(r4, r6, r7) 

(declare-const var306!1 var230)
(declare-const var646!1 var3625)
(declare-const var3064!1 var972)
(declare-const var2206!1 var2434)
(declare-const var2502!5 var3123)
(assert (not (= var2502!5 null-var3123)))
(assert (= (canonicalizationMethod/-928168520 var2502!5) (cast-from-var230-to-var457 var306!1))) ; Statement: r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: javax.xml.crypto.dsig.CanonicalizationMethod canonicalizationMethod> = $r5 
(define-const var2194 var3625 (var2186_getNextSiblingElement/-1353806625 (cast-from-var3625-to-var122 var646!1) "SignatureMethod" "http://www.w3.org/2000/09/xmldsig#")) ; Statement: r8 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getNextSiblingElement(org.w3c.dom.Node,java.lang.String,java.lang.String)>(r4, "SignatureMethod", "http://www.w3.org/2000/09/xmldsig#") 
(define-const var3344 var2418 (var1140_unmarshal/-1168941542 var2194)) ; Statement: $r9 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMSignatureMethod: javax.xml.crypto.dsig.SignatureMethod unmarshal(org.w3c.dom.Element)>(r8) 
(declare-const var2502!6 var3123)
(assert (not (= var2502!6 null-var3123)))
(assert (= (signatureMethod/-928168520 var2502!6) var3344)) ; Statement: r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: javax.xml.crypto.dsig.SignatureMethod signatureMethod> = $r9 
(define-const var3970 Bool (var1005_secureValidation/1111305649 var3064!1)) ; Statement: z0 = staticinvoke <org.jcp.xml.dsig.internal.dom.Utils: boolean secureValidation(javax.xml.crypto.XMLCryptoContext)>(r6) 
(define-const var3556 var2418 (signatureMethod/-928168520 var2502!6)) ; Statement: $r10 = r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: javax.xml.crypto.dsig.SignatureMethod signatureMethod> 
(define-const var3234 String (var903_getAlgorithm/-1357366243 (cast-from-var2418-to-var903 var3556))) ; Statement: r11 = interfaceinvoke $r10.<javax.xml.crypto.dsig.SignatureMethod: java.lang.String getAlgorithm()>() 
 ; Statement: if z0 == 0 goto $r12 = new java.util.ArrayList 
(assert (not (= (ite var3970 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var2751 Bool (var607_restrictAlg/703516386 var3234)) ; Statement: $z4 = staticinvoke <org.jcp.xml.dsig.internal.dom.Policy: boolean restrictAlg(java.lang.String)>(r11) 
 ; Statement: if $z4 == 0 goto $r12 = new java.util.ArrayList 
(assert (not (= (ite var2751 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var3777 var2466 var2466-init) ; Statement: $r35 = new javax.xml.crypto.MarshalException 
(define-const var421 String String-init) ; Statement: $r36 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var421)) ; Statement: specialinvoke $r36.<java.lang.StringBuilder: void <init>()>() 
(declare-const var421!1 String)
(assert (= var421!1 ""))
(assert true)
(define-const var2111 String (append/672562846 var421!1 "It is forbidden to use algorithm ")) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("It is forbidden to use algorithm ") 
(declare-const var421!2 String)
(assert (= var421!2 (str.++ var421!1 "It is forbidden to use algorithm ")))
(assert true)
(define-const var2896 String (append/672562846 var2111 var3234)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11) 
(declare-const var2111!1 String)
(assert (= var2111!1 (str.++ var2111 var3234)))
(assert true)
(define-const var1422 String (append/672562846 var2896 " when secure validation is enabled")) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" when secure validation is enabled") 
(declare-const var2896!1 String)
(assert (= var2896!1 (str.++ var2896 " when secure validation is enabled")))
(assert true)
(define-const var2752 String (toString/-2075883882 var1422)) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1750215933 var3777 var2752)) ; Statement: specialinvoke $r35.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r40) 

(declare-const var3777!1 var2466)
(declare-const var2752!1 String)
 ; Statement: throw $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1799710694=([org.jcp.xml.dsig.internal.dom.DOMStructure], void), cast-from-var3123-to-var1097=([org.jcp.xml.dsig.internal.dom.DOMSignedInfo], org.jcp.xml.dsig.internal.dom.DOMStructure), localSiElem/-928168520=([org.jcp.xml.dsig.internal.dom.DOMSignedInfo], org.w3c.dom.Element), var122_getOwnerDocument/618770686=([org.w3c.dom.Node], org.w3c.dom.Document), cast-from-var3625-to-var122=([org.w3c.dom.Element], org.w3c.dom.Node), ownerDoc/-928168520=([org.jcp.xml.dsig.internal.dom.DOMSignedInfo], org.w3c.dom.Document), var2186_getAttributeValue/-210720006=([org.w3c.dom.Element, java.lang.String], java.lang.String), id/-928168520=([org.jcp.xml.dsig.internal.dom.DOMSignedInfo], java.lang.String), var2186_getFirstChildElement/-2020672964=([org.w3c.dom.Node, java.lang.String, java.lang.String], org.w3c.dom.Element), var230-init=([], org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod), <init>/-870032129=([org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod, org.w3c.dom.Element, javax.xml.crypto.XMLCryptoContext, java.security.Provider], void), cast-from-var230-to-var457=([org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod], javax.xml.crypto.dsig.CanonicalizationMethod), canonicalizationMethod/-928168520=([org.jcp.xml.dsig.internal.dom.DOMSignedInfo], javax.xml.crypto.dsig.CanonicalizationMethod), var2186_getNextSiblingElement/-1353806625=([org.w3c.dom.Node, java.lang.String, java.lang.String], org.w3c.dom.Element), var1140_unmarshal/-1168941542=([org.w3c.dom.Element], javax.xml.crypto.dsig.SignatureMethod), signatureMethod/-928168520=([org.jcp.xml.dsig.internal.dom.DOMSignedInfo], javax.xml.crypto.dsig.SignatureMethod), var1005_secureValidation/1111305649=([javax.xml.crypto.XMLCryptoContext], boolean), var903_getAlgorithm/-1357366243=([javax.xml.crypto.AlgorithmMethod], java.lang.String), cast-from-var2418-to-var903=([javax.xml.crypto.dsig.SignatureMethod], javax.xml.crypto.AlgorithmMethod), var607_restrictAlg/703516386=([java.lang.String], boolean), var2466-init=([], javax.xml.crypto.MarshalException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1750215933=([javax.xml.crypto.MarshalException, java.lang.String], void)}
; {var3123=org.jcp.xml.dsig.internal.dom.DOMSignedInfo, var2502=r0, var3625=org.w3c.dom.Element, var3756=r1, var972=javax.xml.crypto.XMLCryptoContext, var3064=r6, var2434=java.security.Provider, var2206=r7, var1097=org.jcp.xml.dsig.internal.dom.DOMStructure, var3583=org.w3c.dom.Document, var122=org.w3c.dom.Node, var2556=$r2, var2186=org.jcp.xml.dsig.internal.dom.DOMUtils, var3183=$r3, var646=r4, var230=org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod, var306=$r5, var457=javax.xml.crypto.dsig.CanonicalizationMethod, var2194=r8, var2418=javax.xml.crypto.dsig.SignatureMethod, var1140=org.jcp.xml.dsig.internal.dom.DOMSignatureMethod, var3344=$r9, var1005=org.jcp.xml.dsig.internal.dom.Utils, var3970=z0, var3556=$r10, var903=javax.xml.crypto.AlgorithmMethod, var3234=r11, var607=org.jcp.xml.dsig.internal.dom.Policy, var2751=$z4, var2466=javax.xml.crypto.MarshalException, var3777=$r35, var421=$r36, var2111=$r37, var2896=$r38, var1422=$r39, var2752=$r40}
; {org.jcp.xml.dsig.internal.dom.DOMSignedInfo=var3123, r0=var2502, org.w3c.dom.Element=var3625, r1=var3756, javax.xml.crypto.XMLCryptoContext=var972, r6=var3064, java.security.Provider=var2434, r7=var2206, org.jcp.xml.dsig.internal.dom.DOMStructure=var1097, org.w3c.dom.Document=var3583, org.w3c.dom.Node=var122, $r2=var2556, org.jcp.xml.dsig.internal.dom.DOMUtils=var2186, $r3=var3183, r4=var646, org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod=var230, $r5=var306, javax.xml.crypto.dsig.CanonicalizationMethod=var457, r8=var2194, javax.xml.crypto.dsig.SignatureMethod=var2418, org.jcp.xml.dsig.internal.dom.DOMSignatureMethod=var1140, $r9=var3344, org.jcp.xml.dsig.internal.dom.Utils=var1005, z0=var3970, $r10=var3556, javax.xml.crypto.AlgorithmMethod=var903, r11=var3234, org.jcp.xml.dsig.internal.dom.Policy=var607, $z4=var2751, javax.xml.crypto.MarshalException=var2466, $r35=var3777, $r36=var421, $r37=var2111, $r38=var2896, $r39=var1422, $r40=var2752}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMSignedInfo;	r1 := @parameter0: org.w3c.dom.Element;	r6 := @parameter1: javax.xml.crypto.XMLCryptoContext;	r7 := @parameter2: java.security.Provider;	specialinvoke r0.<org.jcp.xml.dsig.internal.dom.DOMStructure: void <init>()>();	r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: org.w3c.dom.Element localSiElem> = r1;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.Document getOwnerDocument()>();	r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: org.w3c.dom.Document ownerDoc> = $r2;	$r3 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: java.lang.String getAttributeValue(org.w3c.dom.Element,java.lang.String)>(r1, "Id");	r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: java.lang.String id> = $r3;	r4 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node,java.lang.String,java.lang.String)>(r1, "CanonicalizationMethod", "http://www.w3.org/2000/09/xmldsig#");	$r5 = new org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod;	specialinvoke $r5.<org.jcp.xml.dsig.internal.dom.DOMCanonicalizationMethod: void <init>(org.w3c.dom.Element,javax.xml.crypto.XMLCryptoContext,java.security.Provider)>(r4, r6, r7);	r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: javax.xml.crypto.dsig.CanonicalizationMethod canonicalizationMethod> = $r5;	r8 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getNextSiblingElement(org.w3c.dom.Node,java.lang.String,java.lang.String)>(r4, "SignatureMethod", "http://www.w3.org/2000/09/xmldsig#");	$r9 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMSignatureMethod: javax.xml.crypto.dsig.SignatureMethod unmarshal(org.w3c.dom.Element)>(r8);	r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: javax.xml.crypto.dsig.SignatureMethod signatureMethod> = $r9;	z0 = staticinvoke <org.jcp.xml.dsig.internal.dom.Utils: boolean secureValidation(javax.xml.crypto.XMLCryptoContext)>(r6);	$r10 = r0.<org.jcp.xml.dsig.internal.dom.DOMSignedInfo: javax.xml.crypto.dsig.SignatureMethod signatureMethod>;	r11 = interfaceinvoke $r10.<javax.xml.crypto.dsig.SignatureMethod: java.lang.String getAlgorithm()>();	if z0 == 0 goto $r12 = new java.util.ArrayList;	$z4 = staticinvoke <org.jcp.xml.dsig.internal.dom.Policy: boolean restrictAlg(java.lang.String)>(r11);	if $z4 == 0 goto $r12 = new java.util.ArrayList;	$r35 = new javax.xml.crypto.MarshalException;	$r36 = new java.lang.StringBuilder;	specialinvoke $r36.<java.lang.StringBuilder: void <init>()>();	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("It is forbidden to use algorithm ");	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r11);	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" when secure validation is enabled");	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r35.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r40);	throw $r35
;block_num 3