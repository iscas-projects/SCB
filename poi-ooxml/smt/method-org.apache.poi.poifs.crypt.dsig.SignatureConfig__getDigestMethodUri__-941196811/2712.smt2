(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1910 0)
(declare-sort var1640 0)
(declare-sort var3898 0)
(declare-sort var1391 0)
(declare-sort var1516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/1990918415 (var1910) Int)
(declare-fun var3898-init () var3898)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1391) String)
(declare-fun cast-from-var1910-to-var1391 (var1910) var1391)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/791492760 (var3898 String) void)
(declare-fun cast-from-var3898-to-var1516 (var3898) var1516)
(declare-const null-var1910 var1910)
(declare-const var1640-$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm (Array Int Int))
(declare-const var3112 var1910) ; Statement: r0 := @parameter0: org.apache.poi.poifs.crypt.HashAlgorithm 
(assert (not (= var3112 null-var1910)))
(define-const var655 (Array Int Int) var1640-$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm) ; Statement: $r1 = <org.apache.poi.poifs.crypt.dsig.SignatureConfig$1: int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm> 
(assert true)
(define-const var323 Int (ordinal/1990918415 var3112)) ; Statement: $i0 = virtualinvoke r0.<org.apache.poi.poifs.crypt.HashAlgorithm: int ordinal()>() 
(define-const var2128 Int (select var655 var323)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "http://www.w3.org/2000/09/xmldsig#sha1";     case 2: goto return "http://www.w3.org/2001/04/xmldsig-more#sha224";     case 3: goto return "http://www.w3.org/2001/04/xmlenc#sha256";     case 4: goto return "http://www.w3.org/2001/04/xmldsig-more#sha384";     case 5: goto return "http://www.w3.org/2001/04/xmlenc#sha512";     case 6: goto return "http://www.w3.org/2001/04/xmlenc#ripemd160";     default: goto $r9 = new org.apache.poi.EncryptedDocumentException; } 
(assert (and (not (= var2128 6)) (and (not (= var2128 5)) (and (not (= var2128 4)) (and (not (= var2128 3)) (and (not (= var2128 2)) (and (not (= var2128 1)) true))))))) ; Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var1854 var3898 var3898-init) ; Statement: $r9 = new org.apache.poi.EncryptedDocumentException 
(define-const var2301 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2301)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2301!1 String)
(assert (= var2301!1 ""))
(assert true)
(define-const var3999 String (append/672562846 var2301!1 "Hash algorithm ")) ; Statement: $r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hash algorithm ") 
(declare-const var2301!2 String)
(assert (= var2301!2 (str.++ var2301!1 "Hash algorithm ")))
(assert true)
(define-const var3079 String (append/-1031950772 var3999 (cast-from-var1910-to-var1391 var3112))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3999!1 String)
(assert (str.prefixof var3999 var3999!1))
(assert true)
(define-const var280 String (append/672562846 var3079 " not supported for signing.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not supported for signing.") 
(declare-const var3079!1 String)
(assert (= var3079!1 (str.++ var3079 " not supported for signing.")))
(assert true)
(define-const var1421 String (toString/-2075883882 var280)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/791492760 var1854 var1421)) ; Statement: specialinvoke $r9.<org.apache.poi.EncryptedDocumentException: void <init>(java.lang.String)>($r7) 

(declare-const var1854!1 var3898)
(declare-const var1421!1 String)
(define-const var2511 var1516 (cast-from-var3898-to-var1516 var1854!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/1990918415=([org.apache.poi.poifs.crypt.HashAlgorithm], int), var3898-init=([], org.apache.poi.EncryptedDocumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1910-to-var1391=([org.apache.poi.poifs.crypt.HashAlgorithm], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/791492760=([org.apache.poi.EncryptedDocumentException, java.lang.String], void), cast-from-var3898-to-var1516=([org.apache.poi.EncryptedDocumentException], java.lang.Throwable)}
; {var1910=org.apache.poi.poifs.crypt.HashAlgorithm, var3112=r0, var1640=org.apache.poi.poifs.crypt.dsig.SignatureConfig$1, var655=$r1, var323=$i0, var2128=$i1, var3898=org.apache.poi.EncryptedDocumentException, var1854=$r9, var2301=$r8, var3999=$r4, var1391=java.lang.Object, var3079=$r5, var280=$r6, var1421=$r7, var1516=java.lang.Throwable, var2511=$r10}
; {org.apache.poi.poifs.crypt.HashAlgorithm=var1910, r0=var3112, org.apache.poi.poifs.crypt.dsig.SignatureConfig$1=var1640, $r1=var655, $i0=var323, $i1=var2128, org.apache.poi.EncryptedDocumentException=var3898, $r9=var1854, $r8=var2301, $r4=var3999, java.lang.Object=var1391, $r5=var3079, $r6=var280, $r7=var1421, java.lang.Throwable=var1516, $r10=var2511}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.apache.poi.poifs.crypt.HashAlgorithm;	$r1 = <org.apache.poi.poifs.crypt.dsig.SignatureConfig$1: int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm>;	$i0 = virtualinvoke r0.<org.apache.poi.poifs.crypt.HashAlgorithm: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "http://www.w3.org/2000/09/xmldsig#sha1";     case 2: goto return "http://www.w3.org/2001/04/xmldsig-more#sha224";     case 3: goto return "http://www.w3.org/2001/04/xmlenc#sha256";     case 4: goto return "http://www.w3.org/2001/04/xmldsig-more#sha384";     case 5: goto return "http://www.w3.org/2001/04/xmlenc#sha512";     case 6: goto return "http://www.w3.org/2001/04/xmlenc#ripemd160";     default: goto $r9 = new org.apache.poi.EncryptedDocumentException; };	$r9 = new org.apache.poi.EncryptedDocumentException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hash algorithm ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" not supported for signing.");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.apache.poi.EncryptedDocumentException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 2