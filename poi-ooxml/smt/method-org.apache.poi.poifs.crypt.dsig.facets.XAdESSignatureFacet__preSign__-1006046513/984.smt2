(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2542 0)
(declare-sort var2871 0)
(declare-sort var981 0)
(declare-sort var2815 0)
(declare-sort var602 0)
(declare-sort var2586 0)
(declare-sort var2915 0)
(declare-sort var927 0)
(declare-sort var204 0)
(declare-sort var3621 0)
(declare-sort var334 0)
(declare-sort var854 0)
(declare-sort var2640 0)
(declare-sort var424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var602_atDebug/-1653529376 (var602) var2586)
(declare-fun var2586_log/1618568336 (var2586 String) void)
(declare-fun getSignatureConfig/-1274643453 (var2871) var2915)
(declare-fun newInstance/532723879 (var927) var3621)
(declare-fun cast-from-var3621-to-var204 (var3621) var204)
(declare-fun var204_addNewQualifyingProperties/267518589 (var204) var334)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getPackageSignatureId/113804993 (var2915) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var334_setTarget/1406044631 (var334 String) void)
(declare-fun createSignedProperties/568276795 (var2542 var2871 var334) var424)
(declare-fun addXadesObject/79582857 (var2542 var2871 var981 var334) var854)
(declare-fun var2815_add/328494887 (var2815 var3621) Bool)
(declare-fun cast-from-var854-to-var3621 (var854) var3621)
(declare-fun addXadesReference/-645367194 (var2542 var2871) var2640)
(declare-fun cast-from-var2640-to-var3621 (var2640) var3621)
(declare-const null-var2542 var2542)
(declare-const null-var2871 var2871)
(declare-const null-var981 var981)
(declare-const null-var2815 var2815)
(declare-const var2542-LOG var602)
(declare-const var204-Factory var927)
(declare-const var1048 var2542) ; Statement: r13 := @this: org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet 
(assert (not (= var1048 null-var2542)))
(declare-const var716 var2871) ; Statement: r2 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo 
(assert (not (= var716 null-var2871)))
(declare-const var3929 var981) ; Statement: r15 := @parameter1: org.w3c.dom.Document 
(assert (not (= var3929 null-var981)))
(declare-const var930 var2815) ; Statement: r17 := @parameter2: java.util.List 
(assert (not (= var930 null-var2815)))
(declare-const var2937 var2815) ; Statement: r14 := @parameter3: java.util.List 
(assert (not (= var2937 null-var2815)))
(define-const var2062 var602 var2542-LOG) ; Statement: $r0 = <org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet: org.apache.logging.log4j.Logger LOG> 
(define-const var3566 var2586 (var602_atDebug/-1653529376 var2062)) ; Statement: $r1 = interfaceinvoke $r0.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atDebug()>() 
;(assert (var2586_log/1618568336 var3566 "preSign")) ; Statement: interfaceinvoke $r1.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("preSign") 

(declare-const var3566!1 var2586)
(declare-const var1170 String)
(assert true)
(define-const var2797 var2915 (getSignatureConfig/-1274643453 var716)) ; Statement: r3 = virtualinvoke r2.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>() 
(define-const var3043 var927 var204-Factory) ; Statement: $r4 = <org.etsi.uri.x01903.v13.QualifyingPropertiesDocument: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var2725 var3621 (newInstance/532723879 var3043)) ; Statement: $r5 = virtualinvoke $r4.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var1351 var204 (cast-from-var3621-to-var204 var2725)) ; Statement: r6 = (org.etsi.uri.x01903.v13.QualifyingPropertiesDocument) $r5 
(define-const var3428 var334 (var204_addNewQualifyingProperties/267518589 var1351)) ; Statement: r7 = interfaceinvoke r6.<org.etsi.uri.x01903.v13.QualifyingPropertiesDocument: org.etsi.uri.x01903.v13.QualifyingPropertiesType addNewQualifyingProperties()>() 
(define-const var2795 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2795)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2795!1 String)
(assert (= var2795!1 ""))
(assert true)
(define-const var1305 String (append/672562846 var2795!1 "#")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var2795!2 String)
(assert (= var2795!2 (str.++ var2795!1 "#")))
(assert true)
(define-const var3795 String (getPackageSignatureId/113804993 var2797)) ; Statement: $r9 = virtualinvoke r3.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getPackageSignatureId()>() 
(assert true)
(define-const var746 String (append/672562846 var1305 var3795)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1305!1 String)
(assert (= var1305!1 (str.++ var1305 var3795)))
(assert true)
(define-const var3786 String (toString/-2075883882 var746)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var334_setTarget/1406044631 var3428 var3786)) ; Statement: interfaceinvoke r7.<org.etsi.uri.x01903.v13.QualifyingPropertiesType: void setTarget(java.lang.String)>($r12) 

(declare-const var3428!1 var334)
(declare-const var3786!1 String)
(assert true)
;(assert (createSignedProperties/568276795 var1048 var716 var3428!1)) ; Statement: virtualinvoke r13.<org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet: org.etsi.uri.x01903.v13.SignedPropertiesType createSignedProperties(org.apache.poi.poifs.crypt.dsig.SignatureInfo,org.etsi.uri.x01903.v13.QualifyingPropertiesType)>(r2, r7) 

(declare-const var1048!1 var2542)
(declare-const var716!1 var2871)
(declare-const var3428!2 var334)
(assert true)
(define-const var441 var854 (addXadesObject/79582857 var1048!1 var716!1 var3929 var3428!2)) ; Statement: $r16 = virtualinvoke r13.<org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet: javax.xml.crypto.dsig.XMLObject addXadesObject(org.apache.poi.poifs.crypt.dsig.SignatureInfo,org.w3c.dom.Document,org.etsi.uri.x01903.v13.QualifyingPropertiesType)>(r2, r15, r7) 
;(assert (var2815_add/328494887 var2937 (cast-from-var854-to-var3621 var441))) ; Statement: interfaceinvoke r14.<java.util.List: boolean add(java.lang.Object)>($r16) 

(declare-const var2937!1 var2815)
(declare-const var441!1 var854)
(assert true)
(define-const var1312 var2640 (addXadesReference/-645367194 var1048!1 var716!1)) ; Statement: $r18 = virtualinvoke r13.<org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet: javax.xml.crypto.dsig.Reference addXadesReference(org.apache.poi.poifs.crypt.dsig.SignatureInfo)>(r2) 
;(assert (var2815_add/328494887 var930 (cast-from-var2640-to-var3621 var1312))) ; Statement: interfaceinvoke r17.<java.util.List: boolean add(java.lang.Object)>($r18) 

(declare-const var930!1 var2815)
(declare-const var1312!1 var2640)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var602_atDebug/-1653529376=([org.apache.logging.log4j.Logger], org.apache.logging.log4j.LogBuilder), var2586_log/1618568336=([org.apache.logging.log4j.LogBuilder, java.lang.String], void), getSignatureConfig/-1274643453=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], org.apache.poi.poifs.crypt.dsig.SignatureConfig), newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var3621-to-var204=([java.lang.Object], org.etsi.uri.x01903.v13.QualifyingPropertiesDocument), var204_addNewQualifyingProperties/267518589=([org.etsi.uri.x01903.v13.QualifyingPropertiesDocument], org.etsi.uri.x01903.v13.QualifyingPropertiesType), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getPackageSignatureId/113804993=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var334_setTarget/1406044631=([org.etsi.uri.x01903.v13.QualifyingPropertiesType, java.lang.String], void), createSignedProperties/568276795=([org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet, org.apache.poi.poifs.crypt.dsig.SignatureInfo, org.etsi.uri.x01903.v13.QualifyingPropertiesType], org.etsi.uri.x01903.v13.SignedPropertiesType), addXadesObject/79582857=([org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet, org.apache.poi.poifs.crypt.dsig.SignatureInfo, org.w3c.dom.Document, org.etsi.uri.x01903.v13.QualifyingPropertiesType], javax.xml.crypto.dsig.XMLObject), var2815_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var854-to-var3621=([javax.xml.crypto.dsig.XMLObject], java.lang.Object), addXadesReference/-645367194=([org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet, org.apache.poi.poifs.crypt.dsig.SignatureInfo], javax.xml.crypto.dsig.Reference), cast-from-var2640-to-var3621=([javax.xml.crypto.dsig.Reference], java.lang.Object)}
; {var2542=org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet, var1048=r13, var2871=org.apache.poi.poifs.crypt.dsig.SignatureInfo, var716=r2, var981=org.w3c.dom.Document, var3929=r15, var2815=java.util.List, var930=r17, var2937=r14, var602=org.apache.logging.log4j.Logger, var2062=$r0, var2586=org.apache.logging.log4j.LogBuilder, var3566=$r1, var1170="preSign", var2915=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var2797=r3, var927=org.apache.xmlbeans.impl.schema.DocumentFactory, var204=org.etsi.uri.x01903.v13.QualifyingPropertiesDocument, var3043=$r4, var3621=java.lang.Object, var2725=$r5, var1351=r6, var334=org.etsi.uri.x01903.v13.QualifyingPropertiesType, var3428=r7, var2795=$r8, var1305=$r10, var3795=$r9, var746=$r11, var3786=$r12, var854=javax.xml.crypto.dsig.XMLObject, var441=$r16, var2640=javax.xml.crypto.dsig.Reference, var1312=$r18, var424=org.etsi.uri.x01903.v13.SignedPropertiesType}
; {org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet=var2542, r13=var1048, org.apache.poi.poifs.crypt.dsig.SignatureInfo=var2871, r2=var716, org.w3c.dom.Document=var981, r15=var3929, java.util.List=var2815, r17=var930, r14=var2937, org.apache.logging.log4j.Logger=var602, $r0=var2062, org.apache.logging.log4j.LogBuilder=var2586, $r1=var3566, "preSign"=var1170, org.apache.poi.poifs.crypt.dsig.SignatureConfig=var2915, r3=var2797, org.apache.xmlbeans.impl.schema.DocumentFactory=var927, org.etsi.uri.x01903.v13.QualifyingPropertiesDocument=var204, $r4=var3043, java.lang.Object=var3621, $r5=var2725, r6=var1351, org.etsi.uri.x01903.v13.QualifyingPropertiesType=var334, r7=var3428, $r8=var2795, $r10=var1305, $r9=var3795, $r11=var746, $r12=var3786, javax.xml.crypto.dsig.XMLObject=var854, $r16=var441, javax.xml.crypto.dsig.Reference=var2640, $r18=var1312, org.etsi.uri.x01903.v13.SignedPropertiesType=var424}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet;	r2 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo;	r15 := @parameter1: org.w3c.dom.Document;	r17 := @parameter2: java.util.List;	r14 := @parameter3: java.util.List;	$r0 = <org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet: org.apache.logging.log4j.Logger LOG>;	$r1 = interfaceinvoke $r0.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atDebug()>();	interfaceinvoke $r1.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("preSign");	r3 = virtualinvoke r2.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>();	$r4 = <org.etsi.uri.x01903.v13.QualifyingPropertiesDocument: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r5 = virtualinvoke $r4.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r6 = (org.etsi.uri.x01903.v13.QualifyingPropertiesDocument) $r5;	r7 = interfaceinvoke r6.<org.etsi.uri.x01903.v13.QualifyingPropertiesDocument: org.etsi.uri.x01903.v13.QualifyingPropertiesType addNewQualifyingProperties()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r9 = virtualinvoke r3.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getPackageSignatureId()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r7.<org.etsi.uri.x01903.v13.QualifyingPropertiesType: void setTarget(java.lang.String)>($r12);	virtualinvoke r13.<org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet: org.etsi.uri.x01903.v13.SignedPropertiesType createSignedProperties(org.apache.poi.poifs.crypt.dsig.SignatureInfo,org.etsi.uri.x01903.v13.QualifyingPropertiesType)>(r2, r7);	$r16 = virtualinvoke r13.<org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet: javax.xml.crypto.dsig.XMLObject addXadesObject(org.apache.poi.poifs.crypt.dsig.SignatureInfo,org.w3c.dom.Document,org.etsi.uri.x01903.v13.QualifyingPropertiesType)>(r2, r15, r7);	interfaceinvoke r14.<java.util.List: boolean add(java.lang.Object)>($r16);	$r18 = virtualinvoke r13.<org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet: javax.xml.crypto.dsig.Reference addXadesReference(org.apache.poi.poifs.crypt.dsig.SignatureInfo)>(r2);	interfaceinvoke r17.<java.util.List: boolean add(java.lang.Object)>($r18);	return
;block_num 1