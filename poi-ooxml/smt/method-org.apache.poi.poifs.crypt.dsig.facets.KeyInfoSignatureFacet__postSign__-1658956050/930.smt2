(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var231 0)
(declare-sort var3382 0)
(declare-sort var3242 0)
(declare-sort var859 0)
(declare-sort var350 0)
(declare-sort var864 0)
(declare-sort var2128 0)
(declare-sort var397 0)
(declare-sort var2268 0)
(declare-sort var933 0)
(declare-sort var2584 0)
(declare-sort var1993 0)
(declare-sort var138 0)
(declare-sort var1035 0)
(declare-sort var3746 0)
(declare-sort var3477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var859_atDebug/-1653529376 (var859) var350)
(declare-fun var350_log/1618568336 (var350 String) void)
(declare-fun var3242_getElementsByTagNameNS/-2042688984 (var3242 String String) var864)
(declare-fun var864_getLength/224812497 (var864) Int)
(declare-fun getKeyInfoFactory/607463465 (var3382) var397)
(declare-fun var2268-init () var2268)
(declare-fun <init>/-325640736 (var2268) void)
(declare-fun getSignatureConfig/-1274643453 (var3382) var933)
(declare-fun getSigningCertificateChain/157364726 (var933) var2584)
(declare-fun var2584_get/-1216255739 (var2584 Int) var1993)
(declare-fun cast-from-var1993-to-var138 (var1993) var138)
(declare-fun isIncludeKeyValue/732437401 (var933) Bool)
(declare-fun var3746-init () var3746)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3477) String)
(declare-fun cast-from-var1035-to-var3477 (var1035) var3477)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var3746 String var3477) void)
(declare-const null-var231 var231)
(declare-const null-var3382 var3382)
(declare-const null-var3242 var3242)
(declare-const var231-LOG var859)
(declare-const null-var2128 var2128)
(declare-const null-var1035 var1035)
(declare-const var1029 var231) ; Statement: r11 := @this: org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet 
(assert (not (= var1029 null-var231)))
(declare-const var2157 var3382) ; Statement: r5 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo 
(assert (not (= var2157 null-var3382)))
(declare-const var3028 var3242) ; Statement: r2 := @parameter1: org.w3c.dom.Document 
(assert (not (= var3028 null-var3242)))
(define-const var3333 var859 var231-LOG) ; Statement: $r0 = <org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet: org.apache.logging.log4j.Logger LOG> 
(define-const var1500 var350 (var859_atDebug/-1653529376 var3333)) ; Statement: $r1 = interfaceinvoke $r0.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atDebug()>() 
;(assert (var350_log/1618568336 var1500 "postSign")) ; Statement: interfaceinvoke $r1.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("postSign") 

(declare-const var1500!1 var350)
(declare-const var3349 String)
(define-const var3283 var864 (var3242_getElementsByTagNameNS/-2042688984 var3028 "http://www.w3.org/2000/09/xmldsig#" "Object")) ; Statement: r3 = interfaceinvoke r2.<org.w3c.dom.Document: org.w3c.dom.NodeList getElementsByTagNameNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/09/xmldsig#", "Object") 
(define-const var1736 Int (var864_getLength/224812497 var3283)) ; Statement: $i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>() 
 ; Statement: if $i0 != 0 goto $r38 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(0) 
(assert (not (not (= var1736 0)))) ; Negate: Cond: $i0 != 0  
(define-const var921 var2128 null-var2128) ; Statement: $r38 = null 
 ; Statement: goto [?= r4 = $r38] 
(assert true) ; Non Conditional
(define-const var43 var2128 var921) ; Statement: r4 = $r38 
(assert true)
(define-const var3464 var397 (getKeyInfoFactory/607463465 var2157)) ; Statement: $r28 = virtualinvoke r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: javax.xml.crypto.dsig.keyinfo.KeyInfoFactory getKeyInfoFactory()>() 
(define-const var1768 var2268 var2268-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1768)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var1768!1 var2268)
(assert true)
(define-const var3330 var933 (getSignatureConfig/-1274643453 var2157)) ; Statement: $r29 = virtualinvoke r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>() 
(assert true)
(define-const var3839 var2584 (getSigningCertificateChain/157364726 var3330)) ; Statement: $r7 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.util.List getSigningCertificateChain()>() 
(define-const var3069 var1993 (var2584_get/-1216255739 var3839 0)) ; Statement: $r8 = interfaceinvoke $r7.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var3086 var138 (cast-from-var1993-to-var138 var3069)) ; Statement: $r30 = (java.security.cert.X509Certificate) $r8 
(define-const var1007 var2268 var2268-init) ; Statement: $r9 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1007)) ; Statement: specialinvoke $r9.<java.util.ArrayList: void <init>()>() 

(declare-const var1007!1 var2268)
(assert true)
(define-const var314 Bool (isIncludeKeyValue/732437401 var3330)) ; Statement: $z0 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: boolean isIncludeKeyValue()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: boolean isIncludeIssuerSerial()>() 
(assert (not (= (ite var314 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1210 var1035) ; Statement: $r31 := @caughtexception 
(assert (not (= var1210 null-var1035)))
(define-const var858 var3746 var3746-init) ; Statement: $r32 = new java.lang.IllegalStateException 
(define-const var492 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var492)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var492!1 String)
(assert (= var492!1 ""))
(assert true)
(define-const var3919 String (append/672562846 var492!1 "key exception: ")) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key exception: ") 
(declare-const var492!2 String)
(assert (= var492!2 (str.++ var492!1 "key exception: ")))
(assert true)
(define-const var1568 String (getMessage/849299655 (cast-from-var1035-to-var3477 var1210))) ; Statement: $r34 = virtualinvoke $r31.<java.security.KeyException: java.lang.String getMessage()>() 
(assert true)
(define-const var2938 String (append/672562846 var3919 var1568)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var3919!1 String)
(assert (= var3919!1 (str.++ var3919 var1568)))
(assert true)
(define-const var3764 String (toString/-2075883882 var2938)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var858 var3764 (cast-from-var1035-to-var3477 var1210))) ; Statement: specialinvoke $r32.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r37, $r31) 

(declare-const var858!1 var3746)
(declare-const var3764!1 String)
(declare-const var1210!1 var1035)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {var859_atDebug/-1653529376=([org.apache.logging.log4j.Logger], org.apache.logging.log4j.LogBuilder), var350_log/1618568336=([org.apache.logging.log4j.LogBuilder, java.lang.String], void), var3242_getElementsByTagNameNS/-2042688984=([org.w3c.dom.Document, java.lang.String, java.lang.String], org.w3c.dom.NodeList), var864_getLength/224812497=([org.w3c.dom.NodeList], int), getKeyInfoFactory/607463465=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], javax.xml.crypto.dsig.keyinfo.KeyInfoFactory), var2268-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), getSignatureConfig/-1274643453=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], org.apache.poi.poifs.crypt.dsig.SignatureConfig), getSigningCertificateChain/157364726=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], java.util.List), var2584_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1993-to-var138=([java.lang.Object], java.security.cert.X509Certificate), isIncludeKeyValue/732437401=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], boolean), var3746-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1035-to-var3477=([java.security.KeyException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void)}
; {var231=org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet, var1029=r11, var3382=org.apache.poi.poifs.crypt.dsig.SignatureInfo, var2157=r5, var3242=org.w3c.dom.Document, var3028=r2, var859=org.apache.logging.log4j.Logger, var3333=$r0, var350=org.apache.logging.log4j.LogBuilder, var1500=$r1, var3349="postSign", var864=org.w3c.dom.NodeList, var3283=r3, var1736=$i0, var2128=org.w3c.dom.Node, var921=$r38, var43=r4, var397=javax.xml.crypto.dsig.keyinfo.KeyInfoFactory, var3464=$r28, var2268=java.util.ArrayList, var1768=$r6, var933=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var3330=$r29, var2584=java.util.List, var3839=$r7, var1993=java.lang.Object, var3069=$r8, var138=java.security.cert.X509Certificate, var3086=$r30, var1007=$r9, var314=$z0, var1035=java.security.KeyException, var1210=$r31, var3746=java.lang.IllegalStateException, var858=$r32, var492=$r33, var3919=$r35, var3477=java.lang.Throwable, var1568=$r34, var2938=$r36, var3764=$r37}
; {org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet=var231, r11=var1029, org.apache.poi.poifs.crypt.dsig.SignatureInfo=var3382, r5=var2157, org.w3c.dom.Document=var3242, r2=var3028, org.apache.logging.log4j.Logger=var859, $r0=var3333, org.apache.logging.log4j.LogBuilder=var350, $r1=var1500, "postSign"=var3349, org.w3c.dom.NodeList=var864, r3=var3283, $i0=var1736, org.w3c.dom.Node=var2128, $r38=var921, r4=var43, javax.xml.crypto.dsig.keyinfo.KeyInfoFactory=var397, $r28=var3464, java.util.ArrayList=var2268, $r6=var1768, org.apache.poi.poifs.crypt.dsig.SignatureConfig=var933, $r29=var3330, java.util.List=var2584, $r7=var3839, java.lang.Object=var1993, $r8=var3069, java.security.cert.X509Certificate=var138, $r30=var3086, $r9=var1007, $z0=var314, java.security.KeyException=var1035, $r31=var1210, java.lang.IllegalStateException=var3746, $r32=var858, $r33=var492, $r35=var3919, java.lang.Throwable=var3477, $r34=var1568, $r36=var2938, $r37=var3764}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet;	r5 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo;	r2 := @parameter1: org.w3c.dom.Document;	$r0 = <org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet: org.apache.logging.log4j.Logger LOG>;	$r1 = interfaceinvoke $r0.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atDebug()>();	interfaceinvoke $r1.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("postSign");	r3 = interfaceinvoke r2.<org.w3c.dom.Document: org.w3c.dom.NodeList getElementsByTagNameNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/09/xmldsig#", "Object");	$i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>();	if $i0 != 0 goto $r38 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(0);	$r38 = null;	goto [?= r4 = $r38];	r4 = $r38;	$r28 = virtualinvoke r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: javax.xml.crypto.dsig.keyinfo.KeyInfoFactory getKeyInfoFactory()>();	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	$r29 = virtualinvoke r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>();	$r7 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.util.List getSigningCertificateChain()>();	$r8 = interfaceinvoke $r7.<java.util.List: java.lang.Object get(int)>(0);	$r30 = (java.security.cert.X509Certificate) $r8;	$r9 = new java.util.ArrayList;	specialinvoke $r9.<java.util.ArrayList: void <init>()>();	$z0 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: boolean isIncludeKeyValue()>();	if $z0 == 0 goto $z1 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: boolean isIncludeIssuerSerial()>();	$r31 := @caughtexception;	$r32 = new java.lang.IllegalStateException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key exception: ");	$r34 = virtualinvoke $r31.<java.security.KeyException: java.lang.String getMessage()>();	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r37, $r31);	throw $r32
;block_num 4