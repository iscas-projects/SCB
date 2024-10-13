(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var302 0)
(declare-sort var1167 0)
(declare-sort var1622 0)
(declare-sort var1947 0)
(declare-sort var1126 0)
(declare-sort var431 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun key/-1828462603 (var302) var1167)
(declare-fun var302_isMSCapi/1706294117 (var1167) Bool)
(declare-fun var1622-init () var1622)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun algo/-1828462603 (var302) var1947)
(declare-fun append/-1031950772 (String var1126) String)
(declare-fun cast-from-var1947-to-var1126 (var1947) var1126)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/791492760 (var1622 String) void)
(declare-fun cast-from-var1622-to-var431 (var1622) var431)
(declare-const null-var302 var302)
(declare-const var1907 var302) ; Statement: r0 := @this: org.apache.poi.poifs.crypt.dsig.DigestOutputStream 
(assert (not (= var1907 null-var302)))
(define-const var3140 var1167 (key/-1828462603 var1907)) ; Statement: $r1 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: java.security.PrivateKey key> 
(define-const var109 Bool (var302_isMSCapi/1706294117 var3140)) ; Statement: $z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.DigestOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1) 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo> 
(assert (not (= (ite var109 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2557 var1622 var1622-init) ; Statement: $r12 = new org.apache.poi.EncryptedDocumentException 
(define-const var3035 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3035)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3035!1 String)
(assert (= var3035!1 ""))
(assert true)
(define-const var49 String (append/672562846 var3035!1 "Windows keystore entries can\u0027t be signed with the ")) ; Statement: $r7 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Windows keystore entries can\'t be signed with the ") 
(declare-const var3035!2 String)
(assert (= var3035!2 (str.++ var3035!1 "Windows keystore entries can\u0027t be signed with the ")))
(define-const var2806 var1947 (algo/-1828462603 var1907)) ; Statement: $r6 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo> 
(assert true)
(define-const var3032 String (append/-1031950772 var49 (cast-from-var1947-to-var1126 var2806))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var49!1 String)
(assert (str.prefixof var49 var49!1))
(assert true)
(define-const var2940 String (append/672562846 var3032 " hash. Please use one digest algorithm of sha1 / sha256 / sha384 / sha512.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" hash. Please use one digest algorithm of sha1 / sha256 / sha384 / sha512.") 
(declare-const var3032!1 String)
(assert (= var3032!1 (str.++ var3032 " hash. Please use one digest algorithm of sha1 / sha256 / sha384 / sha512.")))
(assert true)
(define-const var2026 String (toString/-2075883882 var2940)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/791492760 var2557 var2026)) ; Statement: specialinvoke $r12.<org.apache.poi.EncryptedDocumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2557!1 var1622)
(declare-const var2026!1 String)
(define-const var516 var431 (cast-from-var1622-to-var431 var2557!1)) ; Statement: $r13 = (java.lang.Throwable) $r12 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {key/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], java.security.PrivateKey), var302_isMSCapi/1706294117=([java.security.PrivateKey], boolean), var1622-init=([], org.apache.poi.EncryptedDocumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), algo/-1828462603=([org.apache.poi.poifs.crypt.dsig.DigestOutputStream], org.apache.poi.poifs.crypt.HashAlgorithm), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1947-to-var1126=([org.apache.poi.poifs.crypt.HashAlgorithm], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/791492760=([org.apache.poi.EncryptedDocumentException, java.lang.String], void), cast-from-var1622-to-var431=([org.apache.poi.EncryptedDocumentException], java.lang.Throwable)}
; {var302=org.apache.poi.poifs.crypt.dsig.DigestOutputStream, var1907=r0, var1167=java.security.PrivateKey, var3140=$r1, var109=$z0, var1622=org.apache.poi.EncryptedDocumentException, var2557=$r12, var3035=$r11, var49=$r7, var1947=org.apache.poi.poifs.crypt.HashAlgorithm, var2806=$r6, var1126=java.lang.Object, var3032=$r8, var2940=$r9, var2026=$r10, var431=java.lang.Throwable, var516=$r13}
; {org.apache.poi.poifs.crypt.dsig.DigestOutputStream=var302, r0=var1907, java.security.PrivateKey=var1167, $r1=var3140, $z0=var109, org.apache.poi.EncryptedDocumentException=var1622, $r12=var2557, $r11=var3035, $r7=var49, org.apache.poi.poifs.crypt.HashAlgorithm=var1947, $r6=var2806, java.lang.Object=var1126, $r8=var3032, $r9=var2940, $r10=var2026, java.lang.Throwable=var431, $r13=var516}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.poifs.crypt.dsig.DigestOutputStream;	$r1 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: java.security.PrivateKey key>;	$z0 = staticinvoke <org.apache.poi.poifs.crypt.dsig.DigestOutputStream: boolean isMSCapi(java.security.PrivateKey)>($r1);	if $z0 == 0 goto $r2 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo>;	$r12 = new org.apache.poi.EncryptedDocumentException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Windows keystore entries can\'t be signed with the ");	$r6 = r0.<org.apache.poi.poifs.crypt.dsig.DigestOutputStream: org.apache.poi.poifs.crypt.HashAlgorithm algo>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" hash. Please use one digest algorithm of sha1 / sha256 / sha384 / sha512.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<org.apache.poi.EncryptedDocumentException: void <init>(java.lang.String)>($r10);	$r13 = (java.lang.Throwable) $r12;	throw $r13
;block_num 2