(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2129 0)
(declare-sort var2466 0)
(declare-sort var456 0)
(declare-sort var2612 0)
(declare-sort var2879 0)
(declare-sort var2598 0)
(declare-sort var2663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/-1828462603 (var456) var2466)
(declare-fun cast-from-var2129-to-var456 (var2129) var456)
(declare-fun var456_isMSCapi/1706294117 (var2466) Bool)
(declare-fun var2879_getProvider/-1266844316 (String) var2612)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun algo/-1828462603 (var456) var2598)
(declare-fun ecmaString/461157392 (var2598) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2663_getInstance/-24670374 (String String) var2663)
(declare-fun signature/-2093214071 (var2129) var2663)
(declare-fun initSign/-1512861822 (var2663 var2466) void)
(declare-const null-var2129 var2129)
(declare-const null-var2612 var2612)
(declare-const var3785 var2129) ; Statement: r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureOutputStream 
(assert (not (= var3785 null-var2129)))
(define-const var2990 var2466 (key/-1828462603 (cast-from-var2129-to-var456 var3785))) ; Statement: $r1 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key> 
(define-const var3685 Bool (var456_isMSCapi/1706294117 var2990)) ; Statement: $z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1) 
 ; Statement: if $z0 == 0 goto $r21 = "SunRsaSign" 
(assert (= (ite var3685 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3614 String "SunRsaSign") ; Statement: $r21 = "SunRsaSign" 
(define-const var1850 String "SunRsaSign") ; Statement: $r20 = "SunRsaSign" 
(assert true) ; Non Conditional
(define-const var924 var2612 (var2879_getProvider/-1266844316 var3614)) ; Statement: $r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21) 
 ; Statement: if $r2 == null goto $r3 = new java.lang.StringBuilder 
(assert (not (= var924 null-var2612))) ; Negate: Cond: $r2 == null  
(define-const var1594 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1594)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1594!1 String)
(assert (= var1594!1 ""))
(define-const var3943 var2598 (algo/-1828462603 (cast-from-var2129-to-var456 var3785))) ; Statement: $r13 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo> 
(define-const var1933 String (ecmaString/461157392 var3943)) ; Statement: $r14 = $r13.<org.apache.poi.poifs.crypt.HashAlgorithm: java.lang.String ecmaString> 
(assert true)
(define-const var1718 String (append/672562846 var1594!1 var1933)) ; Statement: $r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var1594!2 String)
(assert (= var1594!2 (str.++ var1594!1 var1933)))
(assert true)
(define-const var2934 String (append/672562846 var1718 "withRSA")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("withRSA") 
(declare-const var1718!1 String)
(assert (= var1718!1 (str.++ var1718 "withRSA")))
(assert true)
(define-const var295 String (toString/-2075883882 var2934)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3085 var2663 (var2663_getInstance/-24670374 var295 var1850)) ; Statement: $r18 = staticinvoke <java.security.Signature: java.security.Signature getInstance(java.lang.String,java.lang.String)>($r17, $r20) 
(declare-const var3785!1 var2129)
(assert (not (= var3785!1 null-var2129)))
(assert (= (signature/-2093214071 var3785!1) var3085)) ; Statement: r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> = $r18 
 ; Statement: goto [?= $r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature>] 
(assert true) ; Non Conditional
(define-const var2498 var2663 (signature/-2093214071 var3785!1)) ; Statement: $r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> 
(define-const var3641 var2466 (key/-1828462603 (cast-from-var2129-to-var456 var3785!1))) ; Statement: $r10 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key> 
(assert true)
;(assert (initSign/-1512861822 var2498 var3641)) ; Statement: virtualinvoke $r11.<java.security.Signature: void initSign(java.security.PrivateKey)>($r10) 

(declare-const var2498!1 var2663)
(declare-const var3641!1 var2466)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {key/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], java.security.PrivateKey), cast-from-var2129-to-var456=([org.apache.poi.poifs.crypt.dsig.SignatureOutputStream], org.apache.poi.poifs.crypt.dsig.DigestOutputStream), var456_isMSCapi/1706294117=([java.security.PrivateKey], boolean), var2879_getProvider/-1266844316=([java.lang.String], java.security.Provider), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), algo/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], org.apache.poi.poifs.crypt.HashAlgorithm), ecmaString/461157392=([org.apache.poi.poifs.crypt.HashAlgorithm], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2663_getInstance/-24670374=([java.lang.String, java.lang.String], java.security.Signature), signature/-2093214071=([org.apache.poi.poifs.crypt.dsig.SignatureOutputStream], java.security.Signature), initSign/-1512861822=([java.security.Signature, java.security.PrivateKey], void)}
; {var2129=org.apache.poi.poifs.crypt.dsig.SignatureOutputStream, var3785=r0, var2466=java.security.PrivateKey, var456=org.apache.poi.poifs.crypt.dsig.DigestOutputStream, var2990=$r1, var3685=$z0, var3614=$r21, var1850=$r20, var2612=java.security.Provider, var2879=java.security.Security, var924=$r2, var1594=$r12, var2598=org.apache.poi.poifs.crypt.HashAlgorithm, var3943=$r13, var1933=$r14, var1718=$r15, var2934=$r16, var295=$r17, var2663=java.security.Signature, var3085=$r18, var2498=$r11, var3641=$r10}
; {org.apache.poi.poifs.crypt.dsig.SignatureOutputStream=var2129, r0=var3785, java.security.PrivateKey=var2466, org.apache.poi.poifs.crypt.dsig.DigestOutputStream=var456, $r1=var2990, $z0=var3685, $r21=var3614, $r20=var1850, java.security.Provider=var2612, java.security.Security=var2879, $r2=var924, $r12=var1594, org.apache.poi.poifs.crypt.HashAlgorithm=var2598, $r13=var3943, $r14=var1933, $r15=var1718, $r16=var2934, $r17=var295, java.security.Signature=var2663, $r18=var3085, $r11=var2498, $r10=var3641}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureOutputStream;	$r1 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key>;	$z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1);	if $z0 == 0 goto $r21 = "SunRsaSign";	$r21 = "SunRsaSign";	$r20 = "SunRsaSign";	$r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21);	if $r2 == null goto $r3 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo>;	$r14 = $r13.<org.apache.poi.poifs.crypt.HashAlgorithm: java.lang.String ecmaString>;	$r15 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("withRSA");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r18 = staticinvoke <java.security.Signature: java.security.Signature getInstance(java.lang.String,java.lang.String)>($r17, $r20);	r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> = $r18;	goto [?= $r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature>];	$r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature>;	$r10 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key>;	virtualinvoke $r11.<java.security.Signature: void initSign(java.security.PrivateKey)>($r10);	return
;block_num 5