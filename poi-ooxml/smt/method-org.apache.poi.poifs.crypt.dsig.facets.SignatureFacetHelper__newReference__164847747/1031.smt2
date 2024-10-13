(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1171 0)
(declare-sort var3620 0)
(declare-sort var750 0)
(declare-sort var2063 0)
(declare-sort var1894 0)
(declare-sort var1336 0)
(declare-sort var958 0)
(declare-sort var865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSignatureConfig/-1274643453 (var1171) var2063)
(declare-fun getDigestMethodUri/1571617253 (var2063) String)
(declare-fun getSignatureFactory/1859554095 (var1171) var1894)
(declare-fun var958-init () var958)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/767800921 (var958 String var865) void)
(declare-fun cast-from-var1336-to-var865 (var1336) var865)
(declare-const null-var1171 var1171)
(declare-const null-String String)
(declare-const null-var750 var750)
(declare-const null-var1336 var1336)
(declare-const var349 var1171) ; Statement: r0 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo 
(assert (not (= var349 null-var1171)))
(declare-const var1624 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1624 null-String)))
(declare-const var1101 var750) ; Statement: r6 := @parameter2: java.util.List 
(assert (not (= var1101 null-var750)))
(declare-const var1039 String) ; Statement: r7 := @parameter3: java.lang.String 
(assert (not (= var1039 null-String)))
(assert true)
(define-const var219 var2063 (getSignatureConfig/-1274643453 var349)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>() 
(assert true)
(define-const var1641 String (getDigestMethodUri/1571617253 var219)) ; Statement: r2 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getDigestMethodUri()>() 
(assert true)
(define-const var567 var1894 (getSignatureFactory/1859554095 var349)) ; Statement: r3 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: javax.xml.crypto.dsig.XMLSignatureFactory getSignatureFactory()>() 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1058 var1336) ; Statement: $r9 := @caughtexception 
(assert (not (= var1058 null-var1336)))
(define-const var251 var958 var958-init) ; Statement: $r10 = new javax.xml.crypto.dsig.XMLSignatureException 
(define-const var1951 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1951)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1951!1 String)
(assert (= var1951!1 ""))
(assert true)
(define-const var1476 String (append/672562846 var1951!1 "unknown digest method uri: ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown digest method uri: ") 
(declare-const var1951!2 String)
(assert (= var1951!2 (str.++ var1951!1 "unknown digest method uri: ")))
(assert true)
(define-const var9 String (append/672562846 var1476 var1641)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1476!1 String)
(assert (= var1476!1 (str.++ var1476 var1641)))
(assert true)
(define-const var2010 String (toString/-2075883882 var9)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/767800921 var251 var2010 (cast-from-var1336-to-var865 var1058))) ; Statement: specialinvoke $r10.<javax.xml.crypto.dsig.XMLSignatureException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r9) 

(declare-const var251!1 var958)
(declare-const var2010!1 String)
(declare-const var1058!1 var1336)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getSignatureConfig/-1274643453=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], org.apache.poi.poifs.crypt.dsig.SignatureConfig), getDigestMethodUri/1571617253=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], java.lang.String), getSignatureFactory/1859554095=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], javax.xml.crypto.dsig.XMLSignatureFactory), var958-init=([], javax.xml.crypto.dsig.XMLSignatureException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/767800921=([javax.xml.crypto.dsig.XMLSignatureException, java.lang.String, java.lang.Throwable], void), cast-from-var1336-to-var865=([java.security.GeneralSecurityException], java.lang.Throwable)}
; {var1171=org.apache.poi.poifs.crypt.dsig.SignatureInfo, var349=r0, var1624=r5, var3620=null_type, var750=java.util.List, var1101=r6, var1039=r7, var2063=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var219=r1, var1641=r2, var1894=javax.xml.crypto.dsig.XMLSignatureFactory, var567=r3, var1336=java.security.GeneralSecurityException, var1058=$r9, var958=javax.xml.crypto.dsig.XMLSignatureException, var251=$r10, var1951=$r11, var1476=$r12, var9=$r13, var2010=$r14, var865=java.lang.Throwable}
; {org.apache.poi.poifs.crypt.dsig.SignatureInfo=var1171, r0=var349, r5=var1624, null_type=var3620, java.util.List=var750, r6=var1101, r7=var1039, org.apache.poi.poifs.crypt.dsig.SignatureConfig=var2063, r1=var219, r2=var1641, javax.xml.crypto.dsig.XMLSignatureFactory=var1894, r3=var567, java.security.GeneralSecurityException=var1336, $r9=var1058, javax.xml.crypto.dsig.XMLSignatureException=var958, $r10=var251, $r11=var1951, $r12=var1476, $r13=var9, $r14=var2010, java.lang.Throwable=var865}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo;	r5 := @parameter1: java.lang.String;	r6 := @parameter2: java.util.List;	r7 := @parameter3: java.lang.String;	r1 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>();	r2 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getDigestMethodUri()>();	r3 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: javax.xml.crypto.dsig.XMLSignatureFactory getSignatureFactory()>();	$r9 := @caughtexception;	$r10 = new javax.xml.crypto.dsig.XMLSignatureException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unknown digest method uri: ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<javax.xml.crypto.dsig.XMLSignatureException: void <init>(java.lang.String,java.lang.Throwable)>($r14, $r9);	throw $r10
;block_num 2