(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2227 0)
(declare-sort var204 0)
(declare-sort var3710 0)
(declare-sort var3673 0)
(declare-sort var629 0)
(declare-sort var2394 0)
(declare-sort var2491 0)
(declare-sort var332 0)
(declare-sort var1714 0)
(declare-sort var1988 0)
(declare-sort var191 0)
(declare-sort var3783 0)
(declare-sort var72 0)
(declare-sort var1445 0)
(declare-sort var839 0)
(declare-sort var3988 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3673_atDebug/-1653529376 (var3673) var629)
(declare-fun var629_log/1618568336 (var629 String) void)
(declare-fun var3710_getElementsByTagNameNS/-2042688984 (var3710 String String) var2394)
(declare-fun var2394_getLength/224812497 (var2394) Int)
(declare-fun var2394_item/-99689391 (var2394 Int) var2491)
(declare-fun getKeyInfoFactory/607463465 (var204) var332)
(declare-fun var1714-init () var1714)
(declare-fun <init>/-325640736 (var1714) void)
(declare-fun getSignatureConfig/-1274643453 (var204) var1988)
(declare-fun getSigningCertificateChain/157364726 (var1988) var191)
(declare-fun var191_get/-1216255739 (var191 Int) var3783)
(declare-fun cast-from-var3783-to-var72 (var3783) var72)
(declare-fun isIncludeKeyValue/732437401 (var1988) Bool)
(declare-fun var839-init () var839)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var3988) String)
(declare-fun cast-from-var1445-to-var3988 (var1445) var3988)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var839 String var3988) void)
(declare-const null-var2227 var2227)
(declare-const null-var204 var204)
(declare-const null-var3710 var3710)
(declare-const var2227-LOG var3673)
(declare-const null-var1445 var1445)
(declare-const var5 var2227) ; Statement: r11 := @this: org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet 
(assert (not (= var5 null-var2227)))
(declare-const var311 var204) ; Statement: r5 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo 
(assert (not (= var311 null-var204)))
(declare-const var1128 var3710) ; Statement: r2 := @parameter1: org.w3c.dom.Document 
(assert (not (= var1128 null-var3710)))
(define-const var30 var3673 var2227-LOG) ; Statement: $r0 = <org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet: org.apache.logging.log4j.Logger LOG> 
(define-const var3256 var629 (var3673_atDebug/-1653529376 var30)) ; Statement: $r1 = interfaceinvoke $r0.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atDebug()>() 
;(assert (var629_log/1618568336 var3256 "postSign")) ; Statement: interfaceinvoke $r1.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("postSign") 

(declare-const var3256!1 var629)
(declare-const var352 String)
(define-const var2372 var2394 (var3710_getElementsByTagNameNS/-2042688984 var1128 "http://www.w3.org/2000/09/xmldsig#" "Object")) ; Statement: r3 = interfaceinvoke r2.<org.w3c.dom.Document: org.w3c.dom.NodeList getElementsByTagNameNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/09/xmldsig#", "Object") 
(define-const var3489 Int (var2394_getLength/224812497 var2372)) ; Statement: $i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>() 
 ; Statement: if $i0 != 0 goto $r38 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(0) 
(assert (not (= var3489 0))) ; Cond: $i0 != 0 
(define-const var3507 var2491 (var2394_item/-99689391 var2372 0)) ; Statement: $r38 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(0) 
(assert true) ; Non Conditional
(define-const var2932 var2491 var3507) ; Statement: r4 = $r38 
(assert true)
(define-const var1415 var332 (getKeyInfoFactory/607463465 var311)) ; Statement: $r28 = virtualinvoke r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: javax.xml.crypto.dsig.keyinfo.KeyInfoFactory getKeyInfoFactory()>() 
(define-const var572 var1714 var1714-init) ; Statement: $r6 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var572)) ; Statement: specialinvoke $r6.<java.util.ArrayList: void <init>()>() 

(declare-const var572!1 var1714)
(assert true)
(define-const var2327 var1988 (getSignatureConfig/-1274643453 var311)) ; Statement: $r29 = virtualinvoke r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>() 
(assert true)
(define-const var932 var191 (getSigningCertificateChain/157364726 var2327)) ; Statement: $r7 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.util.List getSigningCertificateChain()>() 
(define-const var1257 var3783 (var191_get/-1216255739 var932 0)) ; Statement: $r8 = interfaceinvoke $r7.<java.util.List: java.lang.Object get(int)>(0) 
(define-const var805 var72 (cast-from-var3783-to-var72 var1257)) ; Statement: $r30 = (java.security.cert.X509Certificate) $r8 
(define-const var1244 var1714 var1714-init) ; Statement: $r9 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var1244)) ; Statement: specialinvoke $r9.<java.util.ArrayList: void <init>()>() 

(declare-const var1244!1 var1714)
(assert true)
(define-const var2547 Bool (isIncludeKeyValue/732437401 var2327)) ; Statement: $z0 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: boolean isIncludeKeyValue()>() 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: boolean isIncludeIssuerSerial()>() 
(assert (not (= (ite var2547 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1992 var1445) ; Statement: $r31 := @caughtexception 
(assert (not (= var1992 null-var1445)))
(define-const var1958 var839 var839-init) ; Statement: $r32 = new java.lang.IllegalStateException 
(define-const var938 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var938)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var938!1 String)
(assert (= var938!1 ""))
(assert true)
(define-const var2287 String (append/672562846 var938!1 "key exception: ")) ; Statement: $r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key exception: ") 
(declare-const var938!2 String)
(assert (= var938!2 (str.++ var938!1 "key exception: ")))
(assert true)
(define-const var563 String (getMessage/849299655 (cast-from-var1445-to-var3988 var1992))) ; Statement: $r34 = virtualinvoke $r31.<java.security.KeyException: java.lang.String getMessage()>() 
(assert true)
(define-const var2411 String (append/672562846 var2287 var563)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var2287!1 String)
(assert (= var2287!1 (str.++ var2287 var563)))
(assert true)
(define-const var1677 String (toString/-2075883882 var2411)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var1958 var1677 (cast-from-var1445-to-var3988 var1992))) ; Statement: specialinvoke $r32.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r37, $r31) 

(declare-const var1958!1 var839)
(declare-const var1677!1 String)
(declare-const var1992!1 var1445)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {var3673_atDebug/-1653529376=([org.apache.logging.log4j.Logger], org.apache.logging.log4j.LogBuilder), var629_log/1618568336=([org.apache.logging.log4j.LogBuilder, java.lang.String], void), var3710_getElementsByTagNameNS/-2042688984=([org.w3c.dom.Document, java.lang.String, java.lang.String], org.w3c.dom.NodeList), var2394_getLength/224812497=([org.w3c.dom.NodeList], int), var2394_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), getKeyInfoFactory/607463465=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], javax.xml.crypto.dsig.keyinfo.KeyInfoFactory), var1714-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), getSignatureConfig/-1274643453=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], org.apache.poi.poifs.crypt.dsig.SignatureConfig), getSigningCertificateChain/157364726=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], java.util.List), var191_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3783-to-var72=([java.lang.Object], java.security.cert.X509Certificate), isIncludeKeyValue/732437401=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], boolean), var839-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1445-to-var3988=([java.security.KeyException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void)}
; {var2227=org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet, var5=r11, var204=org.apache.poi.poifs.crypt.dsig.SignatureInfo, var311=r5, var3710=org.w3c.dom.Document, var1128=r2, var3673=org.apache.logging.log4j.Logger, var30=$r0, var629=org.apache.logging.log4j.LogBuilder, var3256=$r1, var352="postSign", var2394=org.w3c.dom.NodeList, var2372=r3, var3489=$i0, var2491=org.w3c.dom.Node, var3507=$r38, var2932=r4, var332=javax.xml.crypto.dsig.keyinfo.KeyInfoFactory, var1415=$r28, var1714=java.util.ArrayList, var572=$r6, var1988=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var2327=$r29, var191=java.util.List, var932=$r7, var3783=java.lang.Object, var1257=$r8, var72=java.security.cert.X509Certificate, var805=$r30, var1244=$r9, var2547=$z0, var1445=java.security.KeyException, var1992=$r31, var839=java.lang.IllegalStateException, var1958=$r32, var938=$r33, var2287=$r35, var3988=java.lang.Throwable, var563=$r34, var2411=$r36, var1677=$r37}
; {org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet=var2227, r11=var5, org.apache.poi.poifs.crypt.dsig.SignatureInfo=var204, r5=var311, org.w3c.dom.Document=var3710, r2=var1128, org.apache.logging.log4j.Logger=var3673, $r0=var30, org.apache.logging.log4j.LogBuilder=var629, $r1=var3256, "postSign"=var352, org.w3c.dom.NodeList=var2394, r3=var2372, $i0=var3489, org.w3c.dom.Node=var2491, $r38=var3507, r4=var2932, javax.xml.crypto.dsig.keyinfo.KeyInfoFactory=var332, $r28=var1415, java.util.ArrayList=var1714, $r6=var572, org.apache.poi.poifs.crypt.dsig.SignatureConfig=var1988, $r29=var2327, java.util.List=var191, $r7=var932, java.lang.Object=var3783, $r8=var1257, java.security.cert.X509Certificate=var72, $r30=var805, $r9=var1244, $z0=var2547, java.security.KeyException=var1445, $r31=var1992, java.lang.IllegalStateException=var839, $r32=var1958, $r33=var938, $r35=var2287, java.lang.Throwable=var3988, $r34=var563, $r36=var2411, $r37=var1677}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet;	r5 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo;	r2 := @parameter1: org.w3c.dom.Document;	$r0 = <org.apache.poi.poifs.crypt.dsig.facets.KeyInfoSignatureFacet: org.apache.logging.log4j.Logger LOG>;	$r1 = interfaceinvoke $r0.<org.apache.logging.log4j.Logger: org.apache.logging.log4j.LogBuilder atDebug()>();	interfaceinvoke $r1.<org.apache.logging.log4j.LogBuilder: void log(java.lang.String)>("postSign");	r3 = interfaceinvoke r2.<org.w3c.dom.Document: org.w3c.dom.NodeList getElementsByTagNameNS(java.lang.String,java.lang.String)>("http://www.w3.org/2000/09/xmldsig#", "Object");	$i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>();	if $i0 != 0 goto $r38 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(0);	$r38 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(0);	r4 = $r38;	$r28 = virtualinvoke r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: javax.xml.crypto.dsig.keyinfo.KeyInfoFactory getKeyInfoFactory()>();	$r6 = new java.util.ArrayList;	specialinvoke $r6.<java.util.ArrayList: void <init>()>();	$r29 = virtualinvoke r5.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>();	$r7 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.util.List getSigningCertificateChain()>();	$r8 = interfaceinvoke $r7.<java.util.List: java.lang.Object get(int)>(0);	$r30 = (java.security.cert.X509Certificate) $r8;	$r9 = new java.util.ArrayList;	specialinvoke $r9.<java.util.ArrayList: void <init>()>();	$z0 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: boolean isIncludeKeyValue()>();	if $z0 == 0 goto $z1 = virtualinvoke $r29.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: boolean isIncludeIssuerSerial()>();	$r31 := @caughtexception;	$r32 = new java.lang.IllegalStateException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r35 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("key exception: ");	$r34 = virtualinvoke $r31.<java.security.KeyException: java.lang.String getMessage()>();	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r37, $r31);	throw $r32
;block_num 4