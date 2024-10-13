(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1172 0)
(declare-sort var3364 0)
(declare-sort var2336 0)
(declare-sort var2988 0)
(declare-sort var690 0)
(declare-sort var745 0)
(declare-sort var1720 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/-1828462603 (var2336) var3364)
(declare-fun cast-from-var1172-to-var2336 (var1172) var2336)
(declare-fun var2336_isMSCapi/1706294117 (var3364) Bool)
(declare-fun var690_getProvider/-1266844316 (String) var2988)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun algo/-1828462603 (var2336) var745)
(declare-fun ecmaString/461157392 (var745) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1720_getInstance/-24670374 (String String) var1720)
(declare-fun signature/-2093214071 (var1172) var1720)
(declare-fun initSign/-1512861822 (var1720 var3364) void)
(declare-const null-var1172 var1172)
(declare-const null-var2988 var2988)
(declare-const var1722 var1172) ; Statement: r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureOutputStream 
(assert (not (= var1722 null-var1172)))
(define-const var3132 var3364 (key/-1828462603 (cast-from-var1172-to-var2336 var1722))) ; Statement: $r1 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key> 
(define-const var1665 Bool (var2336_isMSCapi/1706294117 var3132)) ; Statement: $z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1) 
 ; Statement: if $z0 == 0 goto $r21 = "SunRsaSign" 
(assert (not (= (ite var1665 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2605 String "SunMSCAPI") ; Statement: $r21 = "SunMSCAPI" 
(define-const var654 String "SunMSCAPI") ; Statement: $r20 = "SunMSCAPI" 
 ; Statement: goto [?= $r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(define-const var1752 var2988 (var690_getProvider/-1266844316 var2605)) ; Statement: $r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21) 
 ; Statement: if $r2 == null goto $r3 = new java.lang.StringBuilder 
(assert (not (= var1752 null-var2988))) ; Negate: Cond: $r2 == null  
(define-const var3906 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3906)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3906!1 String)
(assert (= var3906!1 ""))
(define-const var2225 var745 (algo/-1828462603 (cast-from-var1172-to-var2336 var1722))) ; Statement: $r13 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo> 
(define-const var3599 String (ecmaString/461157392 var2225)) ; Statement: $r14 = $r13.<org.apache.poi.poifs.crypt.HashAlgorithm: java.lang.String ecmaString> 
(assert true)
(define-const var964 String (append/672562846 var3906!1 var3599)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var3906!2 String)
(assert (= var3906!2 (str.++ var3906!1 var3599)))
(assert true)
(define-const var2966 String (append/672562846 var964 "withRSA")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("withRSA") 
(declare-const var964!1 String)
(assert (= var964!1 (str.++ var964 "withRSA")))
(assert true)
(define-const var2254 String (toString/-2075883882 var2966)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1107 var1720 (var1720_getInstance/-24670374 var2254 var654)) ; Statement: $r18 = staticinvoke <java.security.Signature: java.security.Signature getInstance(java.lang.String,java.lang.String)>($r17, $r20) 
(declare-const var1722!1 var1172)
(assert (not (= var1722!1 null-var1172)))
(assert (= (signature/-2093214071 var1722!1) var1107)) ; Statement: r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> = $r18 
 ; Statement: goto [?= $r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature>] 
(assert true) ; Non Conditional
(define-const var1007 var1720 (signature/-2093214071 var1722!1)) ; Statement: $r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> 
(define-const var2502 var3364 (key/-1828462603 (cast-from-var1172-to-var2336 var1722!1))) ; Statement: $r10 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key> 
(assert true)
;(assert (initSign/-1512861822 var1007 var2502)) ; Statement: virtualinvoke $r11.<java.security.Signature: void initSign(java.security.PrivateKey)>($r10) 

(declare-const var1007!1 var1720)
(declare-const var2502!1 var3364)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {key/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], java.security.PrivateKey), cast-from-var1172-to-var2336=([org.apache.poi.poifs.crypt.dsig.SignatureOutputStream], org.apache.poi.poifs.crypt.dsig.DigestOutputStream), var2336_isMSCapi/1706294117=([java.security.PrivateKey], boolean), var690_getProvider/-1266844316=([java.lang.String], java.security.Provider), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), algo/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], org.apache.poi.poifs.crypt.HashAlgorithm), ecmaString/461157392=([org.apache.poi.poifs.crypt.HashAlgorithm], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1720_getInstance/-24670374=([java.lang.String, java.lang.String], java.security.Signature), signature/-2093214071=([org.apache.poi.poifs.crypt.dsig.SignatureOutputStream], java.security.Signature), initSign/-1512861822=([java.security.Signature, java.security.PrivateKey], void)}
; {var1172=org.apache.poi.poifs.crypt.dsig.SignatureOutputStream, var1722=r0, var3364=java.security.PrivateKey, var2336=org.apache.poi.poifs.crypt.dsig.DigestOutputStream, var3132=$r1, var1665=$z0, var2605=$r21, var654=$r20, var2988=java.security.Provider, var690=java.security.Security, var1752=$r2, var3906=$r12, var745=org.apache.poi.poifs.crypt.HashAlgorithm, var2225=$r13, var3599=$r14, var964=$r15, var2966=$r16, var2254=$r17, var1720=java.security.Signature, var1107=$r18, var1007=$r11, var2502=$r10}
; {org.apache.poi.poifs.crypt.dsig.SignatureOutputStream=var1172, r0=var1722, java.security.PrivateKey=var3364, org.apache.poi.poifs.crypt.dsig.DigestOutputStream=var2336, $r1=var3132, $z0=var1665, $r21=var2605, $r20=var654, java.security.Provider=var2988, java.security.Security=var690, $r2=var1752, $r12=var3906, org.apache.poi.poifs.crypt.HashAlgorithm=var745, $r13=var2225, $r14=var3599, $r15=var964, $r16=var2966, $r17=var2254, java.security.Signature=var1720, $r18=var1107, $r11=var1007, $r10=var2502}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureOutputStream;	$r1 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key>;	$z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1);	if $z0 == 0 goto $r21 = "SunRsaSign";	$r21 = "SunMSCAPI";	$r20 = "SunMSCAPI";	goto [?= $r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21)];	$r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21);	if $r2 == null goto $r3 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo>;	$r14 = $r13.<org.apache.poi.poifs.crypt.HashAlgorithm: java.lang.String ecmaString>;	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("withRSA");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = staticinvoke <java.security.Signature: java.security.Signature getInstance(java.lang.String,java.lang.String)>($r17, $r20);	r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> = $r18;	goto [?= $r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature>];	$r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature>;	$r10 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key>;	virtualinvoke $r11.<java.security.Signature: void initSign(java.security.PrivateKey)>($r10);	return
;block_num 5