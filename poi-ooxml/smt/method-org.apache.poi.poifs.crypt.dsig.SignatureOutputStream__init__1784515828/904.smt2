(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2666 0)
(declare-sort var3203 0)
(declare-sort var3367 0)
(declare-sort var919 0)
(declare-sort var2170 0)
(declare-sort var3595 0)
(declare-sort var2516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/-1828462603 (var3367) var3203)
(declare-fun cast-from-var2666-to-var3367 (var2666) var3367)
(declare-fun var3367_isMSCapi/1706294117 (var3203) Bool)
(declare-fun var2170_getProvider/-1266844316 (String) var919)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun algo/-1828462603 (var3367) var3595)
(declare-fun ecmaString/461157392 (var3595) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2516_getInstance/-832469279 (String) var2516)
(declare-fun signature/-2093214071 (var2666) var2516)
(declare-fun initSign/-1512861822 (var2516 var3203) void)
(declare-const null-var2666 var2666)
(declare-const null-var919 var919)
(declare-const var867 var2666) ; Statement: r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureOutputStream 
(assert (not (= var867 null-var2666)))
(define-const var1127 var3203 (key/-1828462603 (cast-from-var2666-to-var3367 var867))) ; Statement: $r1 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key> 
(define-const var2894 Bool (var3367_isMSCapi/1706294117 var1127)) ; Statement: $z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1) 
 ; Statement: if $z0 == 0 goto $r21 = "SunRsaSign" 
(assert (not (= (ite var2894 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3330 String "SunMSCAPI") ; Statement: $r21 = "SunMSCAPI" 
(define-const var3811 String "SunMSCAPI") ; Statement: $r20 = "SunMSCAPI" 
 ; Statement: goto [?= $r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21)] 
(assert true) ; Non Conditional
(define-const var297 var919 (var2170_getProvider/-1266844316 var3330)) ; Statement: $r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21) 
 ; Statement: if $r2 == null goto $r3 = new java.lang.StringBuilder 
(assert (= var297 null-var919)) ; Cond: $r2 == null 
(define-const var980 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var980)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var980!1 String)
(assert (= var980!1 ""))
(define-const var3848 var3595 (algo/-1828462603 (cast-from-var2666-to-var3367 var867))) ; Statement: $r4 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo> 
(define-const var3732 String (ecmaString/461157392 var3848)) ; Statement: $r5 = $r4.<org.apache.poi.poifs.crypt.HashAlgorithm: java.lang.String ecmaString> 
(assert true)
(define-const var3487 String (append/672562846 var980!1 var3732)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var980!2 String)
(assert (= var980!2 (str.++ var980!1 var3732)))
(assert true)
(define-const var2813 String (append/672562846 var3487 "withRSA")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("withRSA") 
(declare-const var3487!1 String)
(assert (= var3487!1 (str.++ var3487 "withRSA")))
(assert true)
(define-const var259 String (toString/-2075883882 var2813)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1050 var2516 (var2516_getInstance/-832469279 var259)) ; Statement: $r9 = staticinvoke <java.security.Signature: java.security.Signature getInstance(java.lang.String)>($r8) 
(declare-const var867!1 var2666)
(assert (not (= var867!1 null-var2666)))
(assert (= (signature/-2093214071 var867!1) var1050)) ; Statement: r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> = $r9 
(assert true) ; Non Conditional
(define-const var3354 var2516 (signature/-2093214071 var867!1)) ; Statement: $r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> 
(define-const var2831 var3203 (key/-1828462603 (cast-from-var2666-to-var3367 var867!1))) ; Statement: $r10 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key> 
(assert true)
;(assert (initSign/-1512861822 var3354 var2831)) ; Statement: virtualinvoke $r11.<java.security.Signature: void initSign(java.security.PrivateKey)>($r10) 

(declare-const var3354!1 var2516)
(declare-const var2831!1 var3203)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {key/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], java.security.PrivateKey), cast-from-var2666-to-var3367=([org.apache.poi.poifs.crypt.dsig.SignatureOutputStream], org.apache.poi.poifs.crypt.dsig.DigestOutputStream), var3367_isMSCapi/1706294117=([java.security.PrivateKey], boolean), var2170_getProvider/-1266844316=([java.lang.String], java.security.Provider), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), algo/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], org.apache.poi.poifs.crypt.HashAlgorithm), ecmaString/461157392=([org.apache.poi.poifs.crypt.HashAlgorithm], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2516_getInstance/-832469279=([java.lang.String], java.security.Signature), signature/-2093214071=([org.apache.poi.poifs.crypt.dsig.SignatureOutputStream], java.security.Signature), initSign/-1512861822=([java.security.Signature, java.security.PrivateKey], void)}
; {var2666=org.apache.poi.poifs.crypt.dsig.SignatureOutputStream, var867=r0, var3203=java.security.PrivateKey, var3367=org.apache.poi.poifs.crypt.dsig.DigestOutputStream, var1127=$r1, var2894=$z0, var3330=$r21, var3811=$r20, var919=java.security.Provider, var2170=java.security.Security, var297=$r2, var980=$r3, var3595=org.apache.poi.poifs.crypt.HashAlgorithm, var3848=$r4, var3732=$r5, var3487=$r6, var2813=$r7, var259=$r8, var2516=java.security.Signature, var1050=$r9, var3354=$r11, var2831=$r10}
; {org.apache.poi.poifs.crypt.dsig.SignatureOutputStream=var2666, r0=var867, java.security.PrivateKey=var3203, org.apache.poi.poifs.crypt.dsig.DigestOutputStream=var3367, $r1=var1127, $z0=var2894, $r21=var3330, $r20=var3811, java.security.Provider=var919, java.security.Security=var2170, $r2=var297, $r3=var980, org.apache.poi.poifs.crypt.HashAlgorithm=var3595, $r4=var3848, $r5=var3732, $r6=var3487, $r7=var2813, $r8=var259, java.security.Signature=var2516, $r9=var1050, $r11=var3354, $r10=var2831}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureOutputStream;	$r1 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key>;	$z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1);	if $z0 == 0 goto $r21 = "SunRsaSign";	$r21 = "SunMSCAPI";	$r20 = "SunMSCAPI";	goto [?= $r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21)];	$r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21);	if $r2 == null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo>;	$r5 = $r4.<org.apache.poi.poifs.crypt.HashAlgorithm: java.lang.String ecmaString>;	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("withRSA");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = staticinvoke <java.security.Signature: java.security.Signature getInstance(java.lang.String)>($r8);	r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> = $r9;	$r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature>;	$r10 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key>;	virtualinvoke $r11.<java.security.Signature: void initSign(java.security.PrivateKey)>($r10);	return
;block_num 5