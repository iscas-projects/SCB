(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var656 0)
(declare-sort var352 0)
(declare-sort var453 0)
(declare-sort var2190 0)
(declare-sort var1814 0)
(declare-sort var752 0)
(declare-sort var2506 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/-1828462603 (var453) var352)
(declare-fun cast-from-var656-to-var453 (var656) var453)
(declare-fun var453_isMSCapi/1706294117 (var352) Bool)
(declare-fun var1814_getProvider/-1266844316 (String) var2190)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun algo/-1828462603 (var453) var752)
(declare-fun ecmaString/461157392 (var752) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2506_getInstance/-832469279 (String) var2506)
(declare-fun signature/-2093214071 (var656) var2506)
(declare-fun initSign/-1512861822 (var2506 var352) void)
(declare-const null-var656 var656)
(declare-const null-var2190 var2190)
(declare-const var1267 var656) ; Statement: r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureOutputStream 
(assert (not (= var1267 null-var656)))
(define-const var243 var352 (key/-1828462603 (cast-from-var656-to-var453 var1267))) ; Statement: $r1 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key> 
(define-const var225 Bool (var453_isMSCapi/1706294117 var243)) ; Statement: $z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1) 
 ; Statement: if $z0 == 0 goto $r21 = "SunRsaSign" 
(assert (= (ite var225 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3137 String "SunRsaSign") ; Statement: $r21 = "SunRsaSign" 
(define-const var631 String "SunRsaSign") ; Statement: $r20 = "SunRsaSign" 
(assert true) ; Non Conditional
(define-const var1762 var2190 (var1814_getProvider/-1266844316 var3137)) ; Statement: $r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21) 
 ; Statement: if $r2 == null goto $r3 = new java.lang.StringBuilder 
(assert (= var1762 null-var2190)) ; Cond: $r2 == null 
(define-const var797 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var797)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var797!1 String)
(assert (= var797!1 ""))
(define-const var0 var752 (algo/-1828462603 (cast-from-var656-to-var453 var1267))) ; Statement: $r4 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo> 
(define-const var1602 String (ecmaString/461157392 var0)) ; Statement: $r5 = $r4.<org.apache.poi.poifs.crypt.HashAlgorithm: java.lang.String ecmaString> 
(assert true)
(define-const var44 String (append/672562846 var797!1 var1602)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var797!2 String)
(assert (= var797!2 (str.++ var797!1 var1602)))
(assert true)
(define-const var3278 String (append/672562846 var44 "withRSA")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("withRSA") 
(declare-const var44!1 String)
(assert (= var44!1 (str.++ var44 "withRSA")))
(assert true)
(define-const var1623 String (toString/-2075883882 var3278)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1541 var2506 (var2506_getInstance/-832469279 var1623)) ; Statement: $r9 = staticinvoke <java.security.Signature: java.security.Signature getInstance(java.lang.String)>($r8) 
(declare-const var1267!1 var656)
(assert (not (= var1267!1 null-var656)))
(assert (= (signature/-2093214071 var1267!1) var1541)) ; Statement: r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> = $r9 
(assert true) ; Non Conditional
(define-const var679 var2506 (signature/-2093214071 var1267!1)) ; Statement: $r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> 
(define-const var2660 var352 (key/-1828462603 (cast-from-var656-to-var453 var1267!1))) ; Statement: $r10 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key> 
(assert true)
;(assert (initSign/-1512861822 var679 var2660)) ; Statement: virtualinvoke $r11.<java.security.Signature: void initSign(java.security.PrivateKey)>($r10) 

(declare-const var679!1 var2506)
(declare-const var2660!1 var352)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {key/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], java.security.PrivateKey), cast-from-var656-to-var453=([org.apache.poi.poifs.crypt.dsig.SignatureOutputStream], org.apache.poi.poifs.crypt.dsig.DigestOutputStream), var453_isMSCapi/1706294117=([java.security.PrivateKey], boolean), var1814_getProvider/-1266844316=([java.lang.String], java.security.Provider), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), algo/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], org.apache.poi.poifs.crypt.HashAlgorithm), ecmaString/461157392=([org.apache.poi.poifs.crypt.HashAlgorithm], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2506_getInstance/-832469279=([java.lang.String], java.security.Signature), signature/-2093214071=([org.apache.poi.poifs.crypt.dsig.SignatureOutputStream], java.security.Signature), initSign/-1512861822=([java.security.Signature, java.security.PrivateKey], void)}
; {var656=org.apache.poi.poifs.crypt.dsig.SignatureOutputStream, var1267=r0, var352=java.security.PrivateKey, var453=org.apache.poi.poifs.crypt.dsig.DigestOutputStream, var243=$r1, var225=$z0, var3137=$r21, var631=$r20, var2190=java.security.Provider, var1814=java.security.Security, var1762=$r2, var797=$r3, var752=org.apache.poi.poifs.crypt.HashAlgorithm, var0=$r4, var1602=$r5, var44=$r6, var3278=$r7, var1623=$r8, var2506=java.security.Signature, var1541=$r9, var679=$r11, var2660=$r10}
; {org.apache.poi.poifs.crypt.dsig.SignatureOutputStream=var656, r0=var1267, java.security.PrivateKey=var352, org.apache.poi.poifs.crypt.dsig.DigestOutputStream=var453, $r1=var243, $z0=var225, $r21=var3137, $r20=var631, java.security.Provider=var2190, java.security.Security=var1814, $r2=var1762, $r3=var797, org.apache.poi.poifs.crypt.HashAlgorithm=var752, $r4=var0, $r5=var1602, $r6=var44, $r7=var3278, $r8=var1623, java.security.Signature=var2506, $r9=var1541, $r11=var679, $r10=var2660}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureOutputStream;	$r1 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key>;	$z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1);	if $z0 == 0 goto $r21 = "SunRsaSign";	$r21 = "SunRsaSign";	$r20 = "SunRsaSign";	$r2 = staticinvoke <java.security.Security: java.security.Provider getProvider(java.lang.String)>($r21);	if $r2 == null goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo>;	$r5 = $r4.<org.apache.poi.poifs.crypt.HashAlgorithm: java.lang.String ecmaString>;	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("withRSA");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = staticinvoke <java.security.Signature: java.security.Signature getInstance(java.lang.String)>($r8);	r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature> = $r9;	$r11 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.Signature signature>;	$r10 = r0.<org.apache.poi.poifs.crypt.dsig.SignatureOutputStream: java.security.PrivateKey key>;	virtualinvoke $r11.<java.security.Signature: void initSign(java.security.PrivateKey)>($r10);	return
;block_num 5