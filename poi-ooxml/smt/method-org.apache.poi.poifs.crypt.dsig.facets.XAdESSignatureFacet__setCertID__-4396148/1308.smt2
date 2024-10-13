(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3964 0)
(declare-sort var456 0)
(declare-sort var2267 0)
(declare-sort var3164 0)
(declare-sort var2428 0)
(declare-sort var1838 0)
(declare-sort var216 0)
(declare-sort var3294 0)
(declare-sort var2715 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3964_addNewIssuerSerial/51188890 (var3964) var3164)
(declare-fun getIssuerX500Principal/1749686998 (var2267) var2428)
(declare-fun toString/634135208 (var2428) String)
(declare-fun var3164_setX509IssuerName/-1690728844 (var3164 String) void)
(declare-fun getSerialNumber/1826336455 (var2267) var1838)
(declare-fun var3164_setX509SerialNumber/-1672340914 (var3164 var1838) void)
(declare-fun var3294-init () var3294)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2715) String)
(declare-fun cast-from-var216-to-var2715 (var216) var2715)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var3294 String var2715) void)
(declare-const null-var3964 var3964)
(declare-const null-var456 var456)
(declare-const null-Bool Bool)
(declare-const null-var2267 var2267)
(declare-const null-var216 var216)
(declare-const var1766 var3964) ; Statement: r0 := @parameter0: org.etsi.uri.x01903.v13.CertIDType 
(assert (not (= var1766 null-var3964)))
(declare-const var3213 var456) ; Statement: r5 := @parameter1: org.apache.poi.poifs.crypt.dsig.SignatureConfig 
(assert (not (= var3213 null-var456)))
(declare-const var3577 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3577 null-Bool)))
(declare-const var3495 var2267) ; Statement: r2 := @parameter3: java.security.cert.X509Certificate 
(assert (not (= var3495 null-var2267)))
(define-const var1511 var3164 (var3964_addNewIssuerSerial/51188890 var1766)) ; Statement: r1 = interfaceinvoke r0.<org.etsi.uri.x01903.v13.CertIDType: org.w3.x2000.x09.xmldsig.X509IssuerSerialType addNewIssuerSerial()>() 
(assert true)
(define-const var3845 var2428 (getIssuerX500Principal/1749686998 var3495)) ; Statement: r3 = virtualinvoke r2.<java.security.cert.X509Certificate: javax.security.auth.x500.X500Principal getIssuerX500Principal()>() 
 ; Statement: if z0 == 0 goto r16 = virtualinvoke r3.<javax.security.auth.x500.X500Principal: java.lang.String toString()>() 
(assert (= (ite var3577 1 0) 0)) ; Cond: z0 == 0 
(assert true)
(define-const var3793 String (toString/634135208 var3845)) ; Statement: r16 = virtualinvoke r3.<javax.security.auth.x500.X500Principal: java.lang.String toString()>() 
(assert true) ; Non Conditional
;(assert (var3164_setX509IssuerName/-1690728844 var1511 var3793)) ; Statement: interfaceinvoke r1.<org.w3.x2000.x09.xmldsig.X509IssuerSerialType: void setX509IssuerName(java.lang.String)>(r16) 

(declare-const var1511!1 var3164)
(declare-const var3793!1 String)
(assert true)
(define-const var1202 var1838 (getSerialNumber/1826336455 var3495)) ; Statement: $r4 = virtualinvoke r2.<java.security.cert.X509Certificate: java.math.BigInteger getSerialNumber()>() 
;(assert (var3164_setX509SerialNumber/-1672340914 var1511!1 var1202)) ; Statement: interfaceinvoke r1.<org.w3.x2000.x09.xmldsig.X509IssuerSerialType: void setX509SerialNumber(java.math.BigInteger)>($r4) 

(declare-const var1511!2 var3164)
(declare-const var1202!1 var1838)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3508 var216) ; Statement: $r9 := @caughtexception 
(assert (not (= var3508 null-var216)))
(define-const var1757 var3294 var3294-init) ; Statement: $r10 = new java.lang.IllegalStateException 
(define-const var1123 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1123)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1123!1 String)
(assert (= var1123!1 ""))
(assert true)
(define-const var1941 String (append/672562846 var1123!1 "certificate encoding error: ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("certificate encoding error: ") 
(declare-const var1123!2 String)
(assert (= var1123!2 (str.++ var1123!1 "certificate encoding error: ")))
(assert true)
(define-const var3426 String (getMessage/849299655 (cast-from-var216-to-var2715 var3508))) ; Statement: $r12 = virtualinvoke $r9.<java.security.cert.CertificateEncodingException: java.lang.String getMessage()>() 
(assert true)
(define-const var3832 String (append/672562846 var1941 var3426)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1941!1 String)
(assert (= var1941!1 (str.++ var1941 var3426)))
(assert true)
(define-const var3902 String (toString/-2075883882 var3832)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var1757 var3902 (cast-from-var216-to-var2715 var3508))) ; Statement: specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9) 

(declare-const var1757!1 var3294)
(declare-const var3902!1 String)
(declare-const var3508!1 var216)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3964_addNewIssuerSerial/51188890=([org.etsi.uri.x01903.v13.CertIDType], org.w3.x2000.x09.xmldsig.X509IssuerSerialType), getIssuerX500Principal/1749686998=([java.security.cert.X509Certificate], javax.security.auth.x500.X500Principal), toString/634135208=([javax.security.auth.x500.X500Principal], java.lang.String), var3164_setX509IssuerName/-1690728844=([org.w3.x2000.x09.xmldsig.X509IssuerSerialType, java.lang.String], void), getSerialNumber/1826336455=([java.security.cert.X509Certificate], java.math.BigInteger), var3164_setX509SerialNumber/-1672340914=([org.w3.x2000.x09.xmldsig.X509IssuerSerialType, java.math.BigInteger], void), var3294-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var216-to-var2715=([java.security.cert.CertificateEncodingException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void)}
; {var3964=org.etsi.uri.x01903.v13.CertIDType, var1766=r0, var456=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var3213=r5, var3577=z0, var2267=java.security.cert.X509Certificate, var3495=r2, var3164=org.w3.x2000.x09.xmldsig.X509IssuerSerialType, var1511=r1, var2428=javax.security.auth.x500.X500Principal, var3845=r3, var3793=r16, var1838=java.math.BigInteger, var1202=$r4, var216=java.security.cert.CertificateEncodingException, var3508=$r9, var3294=java.lang.IllegalStateException, var1757=$r10, var1123=$r11, var1941=$r13, var2715=java.lang.Throwable, var3426=$r12, var3832=$r14, var3902=$r15}
; {org.etsi.uri.x01903.v13.CertIDType=var3964, r0=var1766, org.apache.poi.poifs.crypt.dsig.SignatureConfig=var456, r5=var3213, z0=var3577, java.security.cert.X509Certificate=var2267, r2=var3495, org.w3.x2000.x09.xmldsig.X509IssuerSerialType=var3164, r1=var1511, javax.security.auth.x500.X500Principal=var2428, r3=var3845, r16=var3793, java.math.BigInteger=var1838, $r4=var1202, java.security.cert.CertificateEncodingException=var216, $r9=var3508, java.lang.IllegalStateException=var3294, $r10=var1757, $r11=var1123, $r13=var1941, java.lang.Throwable=var2715, $r12=var3426, $r14=var3832, $r15=var3902}
;seq <javax.security.auth.x500.X500Principal: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.etsi.uri.x01903.v13.CertIDType;	r5 := @parameter1: org.apache.poi.poifs.crypt.dsig.SignatureConfig;	z0 := @parameter2: boolean;	r2 := @parameter3: java.security.cert.X509Certificate;	r1 = interfaceinvoke r0.<org.etsi.uri.x01903.v13.CertIDType: org.w3.x2000.x09.xmldsig.X509IssuerSerialType addNewIssuerSerial()>();	r3 = virtualinvoke r2.<java.security.cert.X509Certificate: javax.security.auth.x500.X500Principal getIssuerX500Principal()>();	if z0 == 0 goto r16 = virtualinvoke r3.<javax.security.auth.x500.X500Principal: java.lang.String toString()>();	r16 = virtualinvoke r3.<javax.security.auth.x500.X500Principal: java.lang.String toString()>();	interfaceinvoke r1.<org.w3.x2000.x09.xmldsig.X509IssuerSerialType: void setX509IssuerName(java.lang.String)>(r16);	$r4 = virtualinvoke r2.<java.security.cert.X509Certificate: java.math.BigInteger getSerialNumber()>();	interfaceinvoke r1.<org.w3.x2000.x09.xmldsig.X509IssuerSerialType: void setX509SerialNumber(java.math.BigInteger)>($r4);	$r9 := @caughtexception;	$r10 = new java.lang.IllegalStateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("certificate encoding error: ");	$r12 = virtualinvoke $r9.<java.security.cert.CertificateEncodingException: java.lang.String getMessage()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9);	throw $r10
;block_num 4