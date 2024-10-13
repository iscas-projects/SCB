(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var744 0)
(declare-sort var2591 0)
(declare-sort var810 0)
(declare-sort var205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var810-init () var810)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/791492760 (var810 String) void)
(declare-fun cast-from-var810-to-var205 (var810) var205)
(declare-const null-var744 var744)
(declare-const null-String String)
(declare-const var2443 var744) ; Statement: r1 := @this: org.apache.poi.poifs.crypt.dsig.SignatureConfig 
(assert (not (= var2443 null-var744)))
(declare-const var3287 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3287 null-String)))
(define-const var3864 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2618 Int (hashCode/-467973558 var3287)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -871953275: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-ripemd160");     case -699582165: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-sha224");     case -699582070: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-sha256");     case -699581018: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-sha384");     case -699579315: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-sha512");     case 670108474: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2000/09/xmldsig#rsa-sha1");     default: goto tableswitch(b1) {     case 0: goto $r7 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha1>;     case 1: goto $r6 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha224>;     case 2: goto $r5 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha256>;     case 3: goto $r4 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha384>;     case 4: goto $r3 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha512>;     case 5: goto $r2 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm ripemd160>;     default: goto $r15 = new org.apache.poi.EncryptedDocumentException; }; } 
(assert (and (not (= var2618 670108474)) (and (not (= var2618 (- 699579315))) (and (not (= var2618 (- 699581018))) (and (not (= var2618 (- 699582070))) (and (not (= var2618 (- 699582165))) (and (not (= var2618 (- 871953275))) true))))))) ; Intersect: Negate: Cond: $i0 == 670108474   and Intersect: Negate: Cond: $i0 == -699579315   and Intersect: Negate: Cond: $i0 == -699581018   and Intersect: Negate: Cond: $i0 == -699582070   and Intersect: Negate: Cond: $i0 == -699582165   and Intersect: Negate: Cond: $i0 == -871953275   and Non Conditional      
 ; Statement: tableswitch(b1) {     case 0: goto $r7 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha1>;     case 1: goto $r6 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha224>;     case 2: goto $r5 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha256>;     case 3: goto $r4 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha384>;     case 4: goto $r3 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha512>;     case 5: goto $r2 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm ripemd160>;     default: goto $r15 = new org.apache.poi.EncryptedDocumentException; } 
(assert (and (not (= var3864 5)) (and (not (= var3864 4)) (and (not (= var3864 3)) (and (not (= var3864 2)) (and (not (= var3864 1)) (and (not (= var3864 0)) true))))))) ; Intersect: Negate: Cond: b1 == 5   and Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional      
(define-const var3548 var810 var810-init) ; Statement: $r15 = new org.apache.poi.EncryptedDocumentException 
(define-const var1044 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1044)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1044!1 String)
(assert (= var1044!1 ""))
(assert true)
(define-const var3439 String (append/672562846 var1044!1 "Hash algorithm ")) ; Statement: $r10 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hash algorithm ") 
(declare-const var1044!2 String)
(assert (= var1044!2 (str.++ var1044!1 "Hash algorithm ")))
(assert true)
(define-const var274 String (append/672562846 var3439 var3287)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3439!1 String)
(assert (= var3439!1 (str.++ var3439 var3287)))
(assert true)
(define-const var2933 String (append/672562846 var274 " not supported.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not supported.") 
(declare-const var274!1 String)
(assert (= var274!1 (str.++ var274 " not supported.")))
(assert true)
(define-const var2936 String (toString/-2075883882 var2933)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/791492760 var3548 var2936)) ; Statement: specialinvoke $r15.<org.apache.poi.EncryptedDocumentException: void <init>(java.lang.String)>($r13) 

(declare-const var3548!1 var810)
(declare-const var2936!1 String)
(define-const var2962 var205 (cast-from-var810-to-var205 var3548!1)) ; Statement: $r16 = (java.lang.Throwable) $r15 
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var810-init=([], org.apache.poi.EncryptedDocumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/791492760=([org.apache.poi.EncryptedDocumentException, java.lang.String], void), cast-from-var810-to-var205=([org.apache.poi.EncryptedDocumentException], java.lang.Throwable)}
; {var744=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var2443=r1, var3287=r0, var2591=null_type, var3864=b1, var2618=$i0, var810=org.apache.poi.EncryptedDocumentException, var3548=$r15, var1044=$r14, var3439=$r10, var274=$r11, var2933=$r12, var2936=$r13, var205=java.lang.Throwable, var2962=$r16}
; {org.apache.poi.poifs.crypt.dsig.SignatureConfig=var744, r1=var2443, r0=var3287, null_type=var2591, b1=var3864, $i0=var2618, org.apache.poi.EncryptedDocumentException=var810, $r15=var3548, $r14=var1044, $r10=var3439, $r11=var274, $r12=var2933, $r13=var2936, java.lang.Throwable=var205, $r16=var2962}
;seq <java.lang.String: int hashCode()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int hashCode()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.poi.poifs.crypt.dsig.SignatureConfig;	r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -871953275: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-ripemd160");     case -699582165: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-sha224");     case -699582070: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-sha256");     case -699581018: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-sha384");     case -699579315: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2001/04/xmldsig-more#rsa-sha512");     case 670108474: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("http://www.w3.org/2000/09/xmldsig#rsa-sha1");     default: goto tableswitch(b1) {     case 0: goto $r7 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha1>;     case 1: goto $r6 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha224>;     case 2: goto $r5 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha256>;     case 3: goto $r4 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha384>;     case 4: goto $r3 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha512>;     case 5: goto $r2 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm ripemd160>;     default: goto $r15 = new org.apache.poi.EncryptedDocumentException; }; };	tableswitch(b1) {     case 0: goto $r7 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha1>;     case 1: goto $r6 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha224>;     case 2: goto $r5 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha256>;     case 3: goto $r4 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha384>;     case 4: goto $r3 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm sha512>;     case 5: goto $r2 = <org.apache.poi.poifs.crypt.HashAlgorithm: org.apache.poi.poifs.crypt.HashAlgorithm ripemd160>;     default: goto $r15 = new org.apache.poi.EncryptedDocumentException; };	$r15 = new org.apache.poi.EncryptedDocumentException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hash algorithm ");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not supported.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r15.<org.apache.poi.EncryptedDocumentException: void <init>(java.lang.String)>($r13);	$r16 = (java.lang.Throwable) $r15;	throw $r16
;block_num 3