(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var998 0)
(declare-sort var1173 0)
(declare-sort var3942 0)
(declare-sort var2110 0)
(declare-sort var3267 0)
(declare-sort var51 0)
(declare-sort var2746 0)
(declare-sort var2190 0)
(declare-sort var1973 0)
(declare-sort var1244 0)
(declare-sort var2162 0)
(declare-sort var3002 0)
(declare-sort var323 0)
(declare-sort var3348 0)
(declare-sort var1987 0)
(declare-sort var792 0)
(declare-sort var2874 0)
(declare-sort var172 0)
(declare-sort var3954 0)
(declare-sort var1317 0)
(declare-sort var404 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSignatureConfig/-1274643453 (var1173) var3267)
(declare-fun getSignatureFactory/1859554095 (var1173) var51)
(declare-fun var2746-init () var2746)
(declare-fun <init>/-325640736 (var2746) void)
(declare-fun createSignatureInfoV1/-512923606 (var998 var1173) var2190)
(declare-fun var2190_getSignatureInfoV1/-1753587972 (var2190) var1973)
(declare-fun var1973_getDomNode/148654628 (var1973) var1244)
(declare-fun var3942_importNode/-1051342038 (var3942 var1244 Bool) var1244)
(declare-fun cast-from-var1244-to-var2162 (var1244) var2162)
(declare-fun var3002-init () var3002)
(declare-fun <init>/1926742051 (var3002 var1244) void)
(declare-fun cast-from-var2162-to-var1244 (var2162) var1244)
(declare-fun var2110_add/328494887 (var2110 var323) Bool)
(declare-fun cast-from-var2746-to-var2110 (var2746) var2110)
(declare-fun cast-from-var3002-to-var323 (var3002) var323)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPackageSignatureId/113804993 (var3267) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun newSignatureProperty/-52188344 (var51 var2110 String String) var3348)
(declare-fun cast-from-var3348-to-var323 (var3348) var323)
(declare-fun newSignatureProperties/1765930291 (var51 var2110 String) var1987)
(declare-fun cast-from-var1987-to-var323 (var1987) var323)
(declare-fun newXMLObject/1750476147 (var51 var2110 String String String) var2874)
(declare-fun cast-from-var2874-to-var323 (var2874) var323)
(declare-fun var3954_newReference/164847747 (var1173 String var2110 String) var172)
(declare-fun cast-from-var172-to-var323 (var172) var323)
(declare-fun var404_getEncoder/-814672977 () var1317)
(declare-fun getSignatureImageValid/1061031704 (var3267) (Array Int Int))
(declare-fun getSignatureImageInvalid/10794365 (var3267) (Array Int Int))
(declare-const null-var998 var998)
(declare-const null-var1173 var1173)
(declare-const null-var3942 var3942)
(declare-const null-var2110 var2110)
(declare-const null-NullType var792)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1248 var998) ; Statement: r4 := @this: org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet 
(assert (not (= var1248 null-var998)))
(declare-const var1315 var1173) ; Statement: r0 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo 
(assert (not (= var1315 null-var1173)))
(declare-const var2511 var3942) ; Statement: r6 := @parameter1: org.w3c.dom.Document 
(assert (not (= var2511 null-var3942)))
(declare-const var3317 var2110) ; Statement: r27 := @parameter2: java.util.List 
(assert (not (= var3317 null-var2110)))
(declare-const var2250 var2110) ; Statement: r21 := @parameter3: java.util.List 
(assert (not (= var2250 null-var2110)))
(assert true)
(define-const var2888 var3267 (getSignatureConfig/-1274643453 var1315)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>() 
(assert true)
(define-const var837 var51 (getSignatureFactory/1859554095 var1315)) ; Statement: r2 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: javax.xml.crypto.dsig.XMLSignatureFactory getSignatureFactory()>() 
(define-const var185 var2746 var2746-init) ; Statement: $r3 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var185)) ; Statement: specialinvoke $r3.<java.util.ArrayList: void <init>()>() 

(declare-const var185!1 var2746)
(assert true)
(define-const var1880 var2190 (createSignatureInfoV1/-512923606 var1248 var1315)) ; Statement: r5 = virtualinvoke r4.<org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet: com.microsoft.schemas.office.x2006.digsig.SignatureInfoV1Document createSignatureInfoV1(org.apache.poi.poifs.crypt.dsig.SignatureInfo)>(r0) 
(define-const var3521 var1973 (var2190_getSignatureInfoV1/-1753587972 var1880)) ; Statement: $r7 = interfaceinvoke r5.<com.microsoft.schemas.office.x2006.digsig.SignatureInfoV1Document: com.microsoft.schemas.office.x2006.digsig.CTSignatureInfoV1 getSignatureInfoV1()>() 
(define-const var547 var1244 (var1973_getDomNode/148654628 var3521)) ; Statement: $r8 = interfaceinvoke $r7.<com.microsoft.schemas.office.x2006.digsig.CTSignatureInfoV1: org.w3c.dom.Node getDomNode()>() 
(define-const var2911 var1244 (var3942_importNode/-1051342038 var2511 var547 (ite (= 1 1) true false))) ; Statement: $r9 = interfaceinvoke r6.<org.w3c.dom.Document: org.w3c.dom.Node importNode(org.w3c.dom.Node,boolean)>($r8, 1) 
(define-const var3962 var2162 (cast-from-var1244-to-var2162 var2911)) ; Statement: r10 = (org.w3c.dom.Element) $r9 
(define-const var1050 var2746 var2746-init) ; Statement: $r11 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1050)) ; Statement: specialinvoke $r11.<java.util.ArrayList: void <init>()>() 

(declare-const var1050!1 var2746)
(define-const var1700 var3002 var3002-init) ; Statement: $r12 = new javax.xml.crypto.dom.DOMStructure 
(assert true)
;(assert (<init>/1926742051 var1700 (cast-from-var2162-to-var1244 var3962))) ; Statement: specialinvoke $r12.<javax.xml.crypto.dom.DOMStructure: void <init>(org.w3c.dom.Node)>(r10) 

(declare-const var1700!1 var3002)
(declare-const var3962!1 var2162)
;(assert (var2110_add/328494887 (cast-from-var2746-to-var2110 var1050!1) (cast-from-var3002-to-var323 var1700!1))) ; Statement: interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12) 

(declare-const var1050!2 var2746)
(declare-const var1700!2 var3002)
(define-const var1206 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1206)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1206!1 String)
(assert (= var1206!1 ""))
(assert true)
(define-const var1484 String (append/672562846 var1206!1 "#")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var1206!2 String)
(assert (= var1206!2 (str.++ var1206!1 "#")))
(assert true)
(define-const var2390 String (getPackageSignatureId/113804993 var2888)) ; Statement: $r14 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getPackageSignatureId()>() 
(assert true)
(define-const var3349 String (append/672562846 var1484 var2390)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1484!1 String)
(assert (= var1484!1 (str.++ var1484 var2390)))
(assert true)
(define-const var1570 String (toString/-2075883882 var3349)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1712 var3348 (newSignatureProperty/-52188344 var837 (cast-from-var2746-to-var2110 var1050!2) var1570 "idOfficeV1Details")) ; Statement: r18 = virtualinvoke r2.<javax.xml.crypto.dsig.XMLSignatureFactory: javax.xml.crypto.dsig.SignatureProperty newSignatureProperty(java.util.List,java.lang.String,java.lang.String)>($r11, $r17, "idOfficeV1Details") 
(define-const var515 var2746 var2746-init) ; Statement: $r19 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var515)) ; Statement: specialinvoke $r19.<java.util.ArrayList: void <init>()>() 

(declare-const var515!1 var2746)
;(assert (var2110_add/328494887 (cast-from-var2746-to-var2110 var515!1) (cast-from-var3348-to-var323 var1712))) ; Statement: interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>(r18) 

(declare-const var515!2 var2746)
(declare-const var1712!1 var3348)
(assert true)
(define-const var3645 var1987 (newSignatureProperties/1765930291 var837 (cast-from-var2746-to-var2110 var515!2) null-String)) ; Statement: r20 = virtualinvoke r2.<javax.xml.crypto.dsig.XMLSignatureFactory: javax.xml.crypto.dsig.SignatureProperties newSignatureProperties(java.util.List,java.lang.String)>($r19, null) 
;(assert (var2110_add/328494887 (cast-from-var2746-to-var2110 var185!1) (cast-from-var1987-to-var323 var3645))) ; Statement: interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>(r20) 

(declare-const var185!2 var2746)
(declare-const var3645!1 var1987)
(assert true)
(define-const var2491 var2874 (newXMLObject/1750476147 var837 (cast-from-var2746-to-var2110 var185!2) "idOfficeObject" null-String null-String)) ; Statement: $r22 = virtualinvoke r2.<javax.xml.crypto.dsig.XMLSignatureFactory: javax.xml.crypto.dsig.XMLObject newXMLObject(java.util.List,java.lang.String,java.lang.String,java.lang.String)>($r3, "idOfficeObject", null, null) 
;(assert (var2110_add/328494887 var2250 (cast-from-var2874-to-var323 var2491))) ; Statement: interfaceinvoke r21.<java.util.List: boolean add(java.lang.Object)>($r22) 

(declare-const var2250!1 var2110)
(declare-const var2491!1 var2874)
(define-const var2818 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2818)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2818!1 String)
(assert (= var2818!1 ""))
(assert true)
(define-const var92 String (append/672562846 var2818!1 "#")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2818!2 String)
(assert (= var2818!2 (str.++ var2818!1 "#")))
(assert true)
(define-const var1605 String (append/672562846 var92 "idOfficeObject")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("idOfficeObject") 
(declare-const var92!1 String)
(assert (= var92!1 (str.++ var92 "idOfficeObject")))
(assert true)
(define-const var3113 String (toString/-2075883882 var1605)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1174 var172 (var3954_newReference/164847747 var1315 var3113 null-var2110 "http://www.w3.org/2000/09/xmldsig#Object")) ; Statement: r49 = staticinvoke <org.apache.poi.poifs.crypt.dsig.facets.SignatureFacetHelper: javax.xml.crypto.dsig.Reference newReference(org.apache.poi.poifs.crypt.dsig.SignatureInfo,java.lang.String,java.util.List,java.lang.String)>(r0, $r26, null, "http://www.w3.org/2000/09/xmldsig#Object") 
;(assert (var2110_add/328494887 var3317 (cast-from-var172-to-var323 var1174))) ; Statement: interfaceinvoke r27.<java.util.List: boolean add(java.lang.Object)>(r49) 

(declare-const var3317!1 var2110)
(declare-const var1174!1 var172)
(define-const var2550 var1317 var404_getEncoder/-814672977) ; Statement: r28 = staticinvoke <java.util.Base64: java.util.Base64$Encoder getEncoder()>() 
(assert true)
(define-const var1443 (Array Int Int) (getSignatureImageValid/1061031704 var2888)) ; Statement: r29 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: byte[] getSignatureImageValid()>() 
 ; Statement: if r29 == null goto $r48 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: byte[] getSignatureImageInvalid()>() 
(assert (= var1443 null-__Array__Int__Int__)) ; Cond: r29 == null 
(assert true)
(define-const var1008 (Array Int Int) (getSignatureImageInvalid/10794365 var2888)) ; Statement: $r48 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: byte[] getSignatureImageInvalid()>() 
 ; Statement: if $r48 == null goto return 
(assert (= var1008 null-__Array__Int__Int__)) ; Cond: $r48 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getSignatureConfig/-1274643453=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], org.apache.poi.poifs.crypt.dsig.SignatureConfig), getSignatureFactory/1859554095=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], javax.xml.crypto.dsig.XMLSignatureFactory), var2746-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), createSignatureInfoV1/-512923606=([org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet, org.apache.poi.poifs.crypt.dsig.SignatureInfo], com.microsoft.schemas.office.x2006.digsig.SignatureInfoV1Document), var2190_getSignatureInfoV1/-1753587972=([com.microsoft.schemas.office.x2006.digsig.SignatureInfoV1Document], com.microsoft.schemas.office.x2006.digsig.CTSignatureInfoV1), var1973_getDomNode/148654628=([com.microsoft.schemas.office.x2006.digsig.CTSignatureInfoV1], org.w3c.dom.Node), var3942_importNode/-1051342038=([org.w3c.dom.Document, org.w3c.dom.Node, boolean], org.w3c.dom.Node), cast-from-var1244-to-var2162=([org.w3c.dom.Node], org.w3c.dom.Element), var3002-init=([], javax.xml.crypto.dom.DOMStructure), <init>/1926742051=([javax.xml.crypto.dom.DOMStructure, org.w3c.dom.Node], void), cast-from-var2162-to-var1244=([org.w3c.dom.Element], org.w3c.dom.Node), var2110_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var2746-to-var2110=([java.util.ArrayList], java.util.List), cast-from-var3002-to-var323=([javax.xml.crypto.dom.DOMStructure], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPackageSignatureId/113804993=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), newSignatureProperty/-52188344=([javax.xml.crypto.dsig.XMLSignatureFactory, java.util.List, java.lang.String, java.lang.String], javax.xml.crypto.dsig.SignatureProperty), cast-from-var3348-to-var323=([javax.xml.crypto.dsig.SignatureProperty], java.lang.Object), newSignatureProperties/1765930291=([javax.xml.crypto.dsig.XMLSignatureFactory, java.util.List, java.lang.String], javax.xml.crypto.dsig.SignatureProperties), cast-from-var1987-to-var323=([javax.xml.crypto.dsig.SignatureProperties], java.lang.Object), newXMLObject/1750476147=([javax.xml.crypto.dsig.XMLSignatureFactory, java.util.List, java.lang.String, java.lang.String, java.lang.String], javax.xml.crypto.dsig.XMLObject), cast-from-var2874-to-var323=([javax.xml.crypto.dsig.XMLObject], java.lang.Object), var3954_newReference/164847747=([org.apache.poi.poifs.crypt.dsig.SignatureInfo, java.lang.String, java.util.List, java.lang.String], javax.xml.crypto.dsig.Reference), cast-from-var172-to-var323=([javax.xml.crypto.dsig.Reference], java.lang.Object), var404_getEncoder/-814672977=([], java.util.Base64$Encoder), getSignatureImageValid/1061031704=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], byte[]), getSignatureImageInvalid/10794365=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], byte[])}
; {var998=org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet, var1248=r4, var1173=org.apache.poi.poifs.crypt.dsig.SignatureInfo, var1315=r0, var3942=org.w3c.dom.Document, var2511=r6, var2110=java.util.List, var3317=r27, var2250=r21, var3267=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var2888=r1, var51=javax.xml.crypto.dsig.XMLSignatureFactory, var837=r2, var2746=java.util.ArrayList, var185=$r3, var2190=com.microsoft.schemas.office.x2006.digsig.SignatureInfoV1Document, var1880=r5, var1973=com.microsoft.schemas.office.x2006.digsig.CTSignatureInfoV1, var3521=$r7, var1244=org.w3c.dom.Node, var547=$r8, var2911=$r9, var2162=org.w3c.dom.Element, var3962=r10, var1050=$r11, var3002=javax.xml.crypto.dom.DOMStructure, var1700=$r12, var323=java.lang.Object, var1206=$r13, var1484=$r15, var2390=$r14, var3349=$r16, var1570=$r17, var3348=javax.xml.crypto.dsig.SignatureProperty, var1712=r18, var515=$r19, var1987=javax.xml.crypto.dsig.SignatureProperties, var792=null_type, var3645=r20, var2874=javax.xml.crypto.dsig.XMLObject, var2491=$r22, var2818=$r23, var92=$r24, var1605=$r25, var3113=$r26, var172=javax.xml.crypto.dsig.Reference, var3954=org.apache.poi.poifs.crypt.dsig.facets.SignatureFacetHelper, var1174=r49, var1317=java.util.Base64$Encoder, var404=java.util.Base64, var2550=r28, var1443=r29, var1008=$r48}
; {org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet=var998, r4=var1248, org.apache.poi.poifs.crypt.dsig.SignatureInfo=var1173, r0=var1315, org.w3c.dom.Document=var3942, r6=var2511, java.util.List=var2110, r27=var3317, r21=var2250, org.apache.poi.poifs.crypt.dsig.SignatureConfig=var3267, r1=var2888, javax.xml.crypto.dsig.XMLSignatureFactory=var51, r2=var837, java.util.ArrayList=var2746, $r3=var185, com.microsoft.schemas.office.x2006.digsig.SignatureInfoV1Document=var2190, r5=var1880, com.microsoft.schemas.office.x2006.digsig.CTSignatureInfoV1=var1973, $r7=var3521, org.w3c.dom.Node=var1244, $r8=var547, $r9=var2911, org.w3c.dom.Element=var2162, r10=var3962, $r11=var1050, javax.xml.crypto.dom.DOMStructure=var3002, $r12=var1700, java.lang.Object=var323, $r13=var1206, $r15=var1484, $r14=var2390, $r16=var3349, $r17=var1570, javax.xml.crypto.dsig.SignatureProperty=var3348, r18=var1712, $r19=var515, javax.xml.crypto.dsig.SignatureProperties=var1987, null_type=var792, r20=var3645, javax.xml.crypto.dsig.XMLObject=var2874, $r22=var2491, $r23=var2818, $r24=var92, $r25=var1605, $r26=var3113, javax.xml.crypto.dsig.Reference=var172, org.apache.poi.poifs.crypt.dsig.facets.SignatureFacetHelper=var3954, r49=var1174, java.util.Base64$Encoder=var1317, java.util.Base64=var404, r28=var2550, r29=var1443, $r48=var1008}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r4 := @this: org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet;	r0 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo;	r6 := @parameter1: org.w3c.dom.Document;	r27 := @parameter2: java.util.List;	r21 := @parameter3: java.util.List;	r1 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>();	r2 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: javax.xml.crypto.dsig.XMLSignatureFactory getSignatureFactory()>();	$r3 = new java.util.ArrayList;	specialinvoke $r3.<java.util.ArrayList: void <init>()>();	r5 = virtualinvoke r4.<org.apache.poi.poifs.crypt.dsig.facets.OOXMLSignatureFacet: com.microsoft.schemas.office.x2006.digsig.SignatureInfoV1Document createSignatureInfoV1(org.apache.poi.poifs.crypt.dsig.SignatureInfo)>(r0);	$r7 = interfaceinvoke r5.<com.microsoft.schemas.office.x2006.digsig.SignatureInfoV1Document: com.microsoft.schemas.office.x2006.digsig.CTSignatureInfoV1 getSignatureInfoV1()>();	$r8 = interfaceinvoke $r7.<com.microsoft.schemas.office.x2006.digsig.CTSignatureInfoV1: org.w3c.dom.Node getDomNode()>();	$r9 = interfaceinvoke r6.<org.w3c.dom.Document: org.w3c.dom.Node importNode(org.w3c.dom.Node,boolean)>($r8, 1);	r10 = (org.w3c.dom.Element) $r9;	$r11 = new java.util.ArrayList;	specialinvoke $r11.<java.util.ArrayList: void <init>()>();	$r12 = new javax.xml.crypto.dom.DOMStructure;	specialinvoke $r12.<javax.xml.crypto.dom.DOMStructure: void <init>(org.w3c.dom.Node)>(r10);	interfaceinvoke $r11.<java.util.List: boolean add(java.lang.Object)>($r12);	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r14 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getPackageSignatureId()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	r18 = virtualinvoke r2.<javax.xml.crypto.dsig.XMLSignatureFactory: javax.xml.crypto.dsig.SignatureProperty newSignatureProperty(java.util.List,java.lang.String,java.lang.String)>($r11, $r17, "idOfficeV1Details");	$r19 = new java.util.ArrayList;	specialinvoke $r19.<java.util.ArrayList: void <init>()>();	interfaceinvoke $r19.<java.util.List: boolean add(java.lang.Object)>(r18);	r20 = virtualinvoke r2.<javax.xml.crypto.dsig.XMLSignatureFactory: javax.xml.crypto.dsig.SignatureProperties newSignatureProperties(java.util.List,java.lang.String)>($r19, null);	interfaceinvoke $r3.<java.util.List: boolean add(java.lang.Object)>(r20);	$r22 = virtualinvoke r2.<javax.xml.crypto.dsig.XMLSignatureFactory: javax.xml.crypto.dsig.XMLObject newXMLObject(java.util.List,java.lang.String,java.lang.String,java.lang.String)>($r3, "idOfficeObject", null, null);	interfaceinvoke r21.<java.util.List: boolean add(java.lang.Object)>($r22);	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("idOfficeObject");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	r49 = staticinvoke <org.apache.poi.poifs.crypt.dsig.facets.SignatureFacetHelper: javax.xml.crypto.dsig.Reference newReference(org.apache.poi.poifs.crypt.dsig.SignatureInfo,java.lang.String,java.util.List,java.lang.String)>(r0, $r26, null, "http://www.w3.org/2000/09/xmldsig#Object");	interfaceinvoke r27.<java.util.List: boolean add(java.lang.Object)>(r49);	r28 = staticinvoke <java.util.Base64: java.util.Base64$Encoder getEncoder()>();	r29 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: byte[] getSignatureImageValid()>();	if r29 == null goto $r48 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: byte[] getSignatureImageInvalid()>();	$r48 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: byte[] getSignatureImageInvalid()>();	if $r48 == null goto return;	return
;block_num 3