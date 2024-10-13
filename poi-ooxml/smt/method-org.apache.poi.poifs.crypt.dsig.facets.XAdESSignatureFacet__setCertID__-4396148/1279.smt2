(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3886 0)
(declare-sort var3061 0)
(declare-sort var2821 0)
(declare-sort var3425 0)
(declare-sort var1458 0)
(declare-sort var1604 0)
(declare-sort var1963 0)
(declare-sort var3345 0)
(declare-sort var2845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3886_addNewIssuerSerial/51188890 (var3886) var3425)
(declare-fun getIssuerX500Principal/1749686998 (var2821) var1458)
(declare-fun getName/-1628125019 (var1458) String)
(define-fun replace/2138489945 ((s String) (old String) (new String)) String (str.replace_all s old new))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var3425_setX509IssuerName/-1690728844 (var3425 String) void)
(declare-fun getSerialNumber/1826336455 (var2821) var1604)
(declare-fun var3425_setX509SerialNumber/-1672340914 (var3425 var1604) void)
(declare-fun var3345-init () var3345)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var2845) String)
(declare-fun cast-from-var1963-to-var2845 (var1963) var2845)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1447874194 (var3345 String var2845) void)
(declare-const null-var3886 var3886)
(declare-const null-var3061 var3061)
(declare-const null-Bool Bool)
(declare-const null-var2821 var2821)
(declare-const null-var1963 var1963)
(declare-const var1689 var3886) ; Statement: r0 := @parameter0: org.etsi.uri.x01903.v13.CertIDType 
(assert (not (= var1689 null-var3886)))
(declare-const var723 var3061) ; Statement: r5 := @parameter1: org.apache.poi.poifs.crypt.dsig.SignatureConfig 
(assert (not (= var723 null-var3061)))
(declare-const var2041 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var2041 null-Bool)))
(declare-const var3694 var2821) ; Statement: r2 := @parameter3: java.security.cert.X509Certificate 
(assert (not (= var3694 null-var2821)))
(define-const var1235 var3425 (var3886_addNewIssuerSerial/51188890 var1689)) ; Statement: r1 = interfaceinvoke r0.<org.etsi.uri.x01903.v13.CertIDType: org.w3.x2000.x09.xmldsig.X509IssuerSerialType addNewIssuerSerial()>() 
(assert true)
(define-const var3271 var1458 (getIssuerX500Principal/1749686998 var3694)) ; Statement: r3 = virtualinvoke r2.<java.security.cert.X509Certificate: javax.security.auth.x500.X500Principal getIssuerX500Principal()>() 
 ; Statement: if z0 == 0 goto r16 = virtualinvoke r3.<javax.security.auth.x500.X500Principal: java.lang.String toString()>() 
(assert (not (= (ite var2041 1 0) 0))) ; Negate: Cond: z0 == 0  
(assert true)
(define-const var2746 String (getName/-1628125019 var3271)) ; Statement: $r7 = virtualinvoke r3.<javax.security.auth.x500.X500Principal: java.lang.String getName()>() 
(assert true)
(define-const var945 String (replace/2138489945 var2746 (cast-from-String-to-String ",") (cast-from-String-to-String ", "))) ; Statement: r16 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(",", ", ") 
 ; Statement: goto [?= interfaceinvoke r1.<org.w3.x2000.x09.xmldsig.X509IssuerSerialType: void setX509IssuerName(java.lang.String)>(r16)] 
(assert true) ; Non Conditional
;(assert (var3425_setX509IssuerName/-1690728844 var1235 var945)) ; Statement: interfaceinvoke r1.<org.w3.x2000.x09.xmldsig.X509IssuerSerialType: void setX509IssuerName(java.lang.String)>(r16) 

(declare-const var1235!1 var3425)
(declare-const var945!1 String)
(assert true)
(define-const var3569 var1604 (getSerialNumber/1826336455 var3694)) ; Statement: $r4 = virtualinvoke r2.<java.security.cert.X509Certificate: java.math.BigInteger getSerialNumber()>() 
;(assert (var3425_setX509SerialNumber/-1672340914 var1235!1 var3569)) ; Statement: interfaceinvoke r1.<org.w3.x2000.x09.xmldsig.X509IssuerSerialType: void setX509SerialNumber(java.math.BigInteger)>($r4) 

(declare-const var1235!2 var3425)
(declare-const var3569!1 var1604)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var359 var1963) ; Statement: $r9 := @caughtexception 
(assert (not (= var359 null-var1963)))
(define-const var2007 var3345 var3345-init) ; Statement: $r10 = new java.lang.IllegalStateException 
(define-const var2075 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2075)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2075!1 String)
(assert (= var2075!1 ""))
(assert true)
(define-const var2254 String (append/672562846 var2075!1 "certificate encoding error: ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("certificate encoding error: ") 
(declare-const var2075!2 String)
(assert (= var2075!2 (str.++ var2075!1 "certificate encoding error: ")))
(assert true)
(define-const var3969 String (getMessage/849299655 (cast-from-var1963-to-var2845 var359))) ; Statement: $r12 = virtualinvoke $r9.<java.security.cert.CertificateEncodingException: java.lang.String getMessage()>() 
(assert true)
(define-const var3470 String (append/672562846 var2254 var3969)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2254!1 String)
(assert (= var2254!1 (str.++ var2254 var3969)))
(assert true)
(define-const var3965 String (toString/-2075883882 var3470)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1447874194 var2007 var3965 (cast-from-var1963-to-var2845 var359))) ; Statement: specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9) 

(declare-const var2007!1 var3345)
(declare-const var3965!1 String)
(declare-const var359!1 var1963)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3886_addNewIssuerSerial/51188890=([org.etsi.uri.x01903.v13.CertIDType], org.w3.x2000.x09.xmldsig.X509IssuerSerialType), getIssuerX500Principal/1749686998=([java.security.cert.X509Certificate], javax.security.auth.x500.X500Principal), getName/-1628125019=([javax.security.auth.x500.X500Principal], java.lang.String), replace/2138489945=([java.lang.String, java.lang.CharSequence, java.lang.CharSequence], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var3425_setX509IssuerName/-1690728844=([org.w3.x2000.x09.xmldsig.X509IssuerSerialType, java.lang.String], void), getSerialNumber/1826336455=([java.security.cert.X509Certificate], java.math.BigInteger), var3425_setX509SerialNumber/-1672340914=([org.w3.x2000.x09.xmldsig.X509IssuerSerialType, java.math.BigInteger], void), var3345-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var1963-to-var2845=([java.security.cert.CertificateEncodingException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1447874194=([java.lang.IllegalStateException, java.lang.String, java.lang.Throwable], void)}
; {var3886=org.etsi.uri.x01903.v13.CertIDType, var1689=r0, var3061=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var723=r5, var2041=z0, var2821=java.security.cert.X509Certificate, var3694=r2, var3425=org.w3.x2000.x09.xmldsig.X509IssuerSerialType, var1235=r1, var1458=javax.security.auth.x500.X500Principal, var3271=r3, var2746=$r7, var945=r16, var1604=java.math.BigInteger, var3569=$r4, var1963=java.security.cert.CertificateEncodingException, var359=$r9, var3345=java.lang.IllegalStateException, var2007=$r10, var2075=$r11, var2254=$r13, var2845=java.lang.Throwable, var3969=$r12, var3470=$r14, var3965=$r15}
; {org.etsi.uri.x01903.v13.CertIDType=var3886, r0=var1689, org.apache.poi.poifs.crypt.dsig.SignatureConfig=var3061, r5=var723, z0=var2041, java.security.cert.X509Certificate=var2821, r2=var3694, org.w3.x2000.x09.xmldsig.X509IssuerSerialType=var3425, r1=var1235, javax.security.auth.x500.X500Principal=var1458, r3=var3271, $r7=var2746, r16=var945, java.math.BigInteger=var1604, $r4=var3569, java.security.cert.CertificateEncodingException=var1963, $r9=var359, java.lang.IllegalStateException=var3345, $r10=var2007, $r11=var2075, $r13=var2254, java.lang.Throwable=var2845, $r12=var3969, $r14=var3470, $r15=var3965}
;seq <java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.etsi.uri.x01903.v13.CertIDType;	r5 := @parameter1: org.apache.poi.poifs.crypt.dsig.SignatureConfig;	z0 := @parameter2: boolean;	r2 := @parameter3: java.security.cert.X509Certificate;	r1 = interfaceinvoke r0.<org.etsi.uri.x01903.v13.CertIDType: org.w3.x2000.x09.xmldsig.X509IssuerSerialType addNewIssuerSerial()>();	r3 = virtualinvoke r2.<java.security.cert.X509Certificate: javax.security.auth.x500.X500Principal getIssuerX500Principal()>();	if z0 == 0 goto r16 = virtualinvoke r3.<javax.security.auth.x500.X500Principal: java.lang.String toString()>();	$r7 = virtualinvoke r3.<javax.security.auth.x500.X500Principal: java.lang.String getName()>();	r16 = virtualinvoke $r7.<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>(",", ", ");	goto [?= interfaceinvoke r1.<org.w3.x2000.x09.xmldsig.X509IssuerSerialType: void setX509IssuerName(java.lang.String)>(r16)];	interfaceinvoke r1.<org.w3.x2000.x09.xmldsig.X509IssuerSerialType: void setX509IssuerName(java.lang.String)>(r16);	$r4 = virtualinvoke r2.<java.security.cert.X509Certificate: java.math.BigInteger getSerialNumber()>();	interfaceinvoke r1.<org.w3.x2000.x09.xmldsig.X509IssuerSerialType: void setX509SerialNumber(java.math.BigInteger)>($r4);	$r9 := @caughtexception;	$r10 = new java.lang.IllegalStateException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("certificate encoding error: ");	$r12 = virtualinvoke $r9.<java.security.cert.CertificateEncodingException: java.lang.String getMessage()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9);	throw $r10
;block_num 4