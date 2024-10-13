(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1949 0)
(declare-sort var1082 0)
(declare-sort var789 0)
(declare-sort var343 0)
(declare-sort var569 0)
(declare-sort var1996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDigestAlgo/1455519436 (var1949) var789)
(declare-fun ordinal/1990918415 (var789) Int)
(declare-fun var343-init () var343)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var569) String)
(declare-fun cast-from-var789-to-var569 (var789) var569)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/791492760 (var343 String) void)
(declare-fun cast-from-var343-to-var1996 (var343) var1996)
(declare-const null-var1949 var1949)
(declare-const var1082-$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm (Array Int Int))
(declare-const var2408 var1949) ; Statement: r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureConfig 
(assert (not (= var2408 null-var1949)))
(define-const var3170 (Array Int Int) var1082-$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm) ; Statement: $r1 = <org.apache.poi.poifs.crypt.dsig.SignatureConfig$1: int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm> 
(assert true)
(define-const var783 var789 (getDigestAlgo/1455519436 var2408)) ; Statement: $r2 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: org.apache.poi.poifs.crypt.HashAlgorithm getDigestAlgo()>() 
(assert true)
(define-const var1832 Int (ordinal/1990918415 var783)) ; Statement: $i0 = virtualinvoke $r2.<org.apache.poi.poifs.crypt.HashAlgorithm: int ordinal()>() 
(define-const var3268 Int (select var3170 var1832)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "http://www.w3.org/2000/09/xmldsig#rsa-sha1";     case 2: goto return "http://www.w3.org/2001/04/xmldsig-more#rsa-sha224";     case 3: goto return "http://www.w3.org/2001/04/xmldsig-more#rsa-sha256";     case 4: goto return "http://www.w3.org/2001/04/xmldsig-more#rsa-sha384";     case 5: goto return "http://www.w3.org/2001/04/xmldsig-more#rsa-sha512";     case 6: goto return "http://www.w3.org/2001/04/xmldsig-more#rsa-ripemd160";     default: goto $r11 = new org.apache.poi.EncryptedDocumentException; } 
(assert (and (not (= var3268 6)) (and (not (= var3268 5)) (and (not (= var3268 4)) (and (not (= var3268 3)) (and (not (= var3268 2)) (and (not (= var3268 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var3907 var343 var343-init) ; Statement: $r11 = new org.apache.poi.EncryptedDocumentException 
(define-const var1561 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1561)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1561!1 String)
(assert (= var1561!1 ""))
(assert true)
(define-const var470 String (append/672562846 var1561!1 "Hash algorithm ")) ; Statement: $r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hash algorithm ") 
(declare-const var1561!2 String)
(assert (= var1561!2 (str.++ var1561!1 "Hash algorithm ")))
(assert true)
(define-const var1744 var789 (getDigestAlgo/1455519436 var2408)) ; Statement: $r5 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: org.apache.poi.poifs.crypt.HashAlgorithm getDigestAlgo()>() 
(assert true)
(define-const var1619 String (append/-1031950772 var470 (cast-from-var789-to-var569 var1744))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var470!1 String)
(assert (str.prefixof var470 var470!1))
(assert true)
(define-const var3974 String (append/672562846 var1619 " not supported for signing.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not supported for signing.") 
(declare-const var1619!1 String)
(assert (= var1619!1 (str.++ var1619 " not supported for signing.")))
(assert true)
(define-const var3081 String (toString/-2075883882 var3974)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/791492760 var3907 var3081)) ; Statement: specialinvoke $r11.<org.apache.poi.EncryptedDocumentException: void <init>(java.lang.String)>($r9) 

(declare-const var3907!1 var343)
(declare-const var3081!1 String)
(define-const var3656 var1996 (cast-from-var343-to-var1996 var3907!1)) ; Statement: $r12 = (java.lang.Throwable) $r11 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getDigestAlgo/1455519436=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], org.apache.poi.poifs.crypt.HashAlgorithm), ordinal/1990918415=([org.apache.poi.poifs.crypt.HashAlgorithm], int), var343-init=([], org.apache.poi.EncryptedDocumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var789-to-var569=([org.apache.poi.poifs.crypt.HashAlgorithm], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/791492760=([org.apache.poi.EncryptedDocumentException, java.lang.String], void), cast-from-var343-to-var1996=([org.apache.poi.EncryptedDocumentException], java.lang.Throwable)}
; {var1949=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var2408=r0, var1082=org.apache.poi.poifs.crypt.dsig.SignatureConfig$1, var3170=$r1, var789=org.apache.poi.poifs.crypt.HashAlgorithm, var783=$r2, var1832=$i0, var3268=$i1, var343=org.apache.poi.EncryptedDocumentException, var3907=$r11, var1561=$r10, var470=$r6, var1744=$r5, var569=java.lang.Object, var1619=$r7, var3974=$r8, var3081=$r9, var1996=java.lang.Throwable, var3656=$r12}
; {org.apache.poi.poifs.crypt.dsig.SignatureConfig=var1949, r0=var2408, org.apache.poi.poifs.crypt.dsig.SignatureConfig$1=var1082, $r1=var3170, org.apache.poi.poifs.crypt.HashAlgorithm=var789, $r2=var783, $i0=var1832, $i1=var3268, org.apache.poi.EncryptedDocumentException=var343, $r11=var3907, $r10=var1561, $r6=var470, $r5=var1744, java.lang.Object=var569, $r7=var1619, $r8=var3974, $r9=var3081, java.lang.Throwable=var1996, $r12=var3656}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.poifs.crypt.dsig.SignatureConfig;	$r1 = <org.apache.poi.poifs.crypt.dsig.SignatureConfig$1: int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm>;	$r2 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: org.apache.poi.poifs.crypt.HashAlgorithm getDigestAlgo()>();	$i0 = virtualinvoke $r2.<org.apache.poi.poifs.crypt.HashAlgorithm: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "http://www.w3.org/2000/09/xmldsig#rsa-sha1";     case 2: goto return "http://www.w3.org/2001/04/xmldsig-more#rsa-sha224";     case 3: goto return "http://www.w3.org/2001/04/xmldsig-more#rsa-sha256";     case 4: goto return "http://www.w3.org/2001/04/xmldsig-more#rsa-sha384";     case 5: goto return "http://www.w3.org/2001/04/xmldsig-more#rsa-sha512";     case 6: goto return "http://www.w3.org/2001/04/xmldsig-more#rsa-ripemd160";     default: goto $r11 = new org.apache.poi.EncryptedDocumentException; };	$r11 = new org.apache.poi.EncryptedDocumentException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hash algorithm ");	$r5 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: org.apache.poi.poifs.crypt.HashAlgorithm getDigestAlgo()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not supported for signing.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<org.apache.poi.EncryptedDocumentException: void <init>(java.lang.String)>($r9);	$r12 = (java.lang.Throwable) $r11;	throw $r12
;block_num 2