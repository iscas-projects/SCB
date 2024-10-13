(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2127 0)
(declare-sort var3910 0)
(declare-sort var140 0)
(declare-sort var461 0)
(declare-sort var3870 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/1990918415 (var3910) Int)
(declare-fun var461-init () var461)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3870) String)
(declare-fun cast-from-var3910-to-var3870 (var3910) var3870)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var461 String) void)
(declare-const null-var2127 var2127)
(declare-const null-var3910 var3910)
(declare-const var140-$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm (Array Int Int))
(declare-const var1813 var2127) ; Statement: r11 := @this: org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService 
(assert (not (= var1813 null-var2127)))
(declare-const var3704 var3910) ; Statement: r0 := @parameter0: org.apache.poi.poifs.crypt.HashAlgorithm 
(assert (not (= var3704 null-var3910)))
(define-const var197 (Array Int Int) var140-$SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm) ; Statement: $r1 = <org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService$1: int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm> 
(assert true)
(define-const var757 Int (ordinal/1990918415 var3704)) ; Statement: $i0 = virtualinvoke r0.<org.apache.poi.poifs.crypt.HashAlgorithm: int ordinal()>() 
(define-const var2649 Int (select var197 var757)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r5 = <org.bouncycastle.asn1.x509.X509ObjectIdentifiers: org.bouncycastle.asn1.ASN1ObjectIdentifier id_SHA1>;     case 2: goto $r4 = <org.bouncycastle.asn1.nist.NISTObjectIdentifiers: org.bouncycastle.asn1.ASN1ObjectIdentifier id_sha256>;     case 3: goto $r3 = <org.bouncycastle.asn1.nist.NISTObjectIdentifiers: org.bouncycastle.asn1.ASN1ObjectIdentifier id_sha384>;     case 4: goto $r2 = <org.bouncycastle.asn1.nist.NISTObjectIdentifiers: org.bouncycastle.asn1.ASN1ObjectIdentifier id_sha512>;     default: goto $r6 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var2649 4)) (and (not (= var2649 3)) (and (not (= var2649 2)) (and (not (= var2649 1)) true))))) ; Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var2373 var461 var461-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(define-const var971 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var971)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var971!1 String)
(assert (= var971!1 ""))
(assert true)
(define-const var3420 String (append/672562846 var971!1 "unsupported digest algo: ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unsupported digest algo: ") 
(declare-const var971!2 String)
(assert (= var971!2 (str.++ var971!1 "unsupported digest algo: ")))
(assert true)
(define-const var3586 String (append/-1031950772 var3420 (cast-from-var3910-to-var3870 var3704))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3420!1 String)
(assert (str.prefixof var3420 var3420!1))
(assert true)
(define-const var1545 String (toString/-2075883882 var3586)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2373 var1545)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2373!1 var461)
(declare-const var1545!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/1990918415=([org.apache.poi.poifs.crypt.HashAlgorithm], int), var461-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3910-to-var3870=([org.apache.poi.poifs.crypt.HashAlgorithm], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2127=org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService, var1813=r11, var3910=org.apache.poi.poifs.crypt.HashAlgorithm, var3704=r0, var140=org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService$1, var197=$r1, var757=$i0, var2649=$i1, var461=java.lang.IllegalArgumentException, var2373=$r6, var971=$r7, var3420=$r8, var3870=java.lang.Object, var3586=$r9, var1545=$r10}
; {org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService=var2127, r11=var1813, org.apache.poi.poifs.crypt.HashAlgorithm=var3910, r0=var3704, org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService$1=var140, $r1=var197, $i0=var757, $i1=var2649, java.lang.IllegalArgumentException=var461, $r6=var2373, $r7=var971, $r8=var3420, java.lang.Object=var3870, $r9=var3586, $r10=var1545}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService;	r0 := @parameter0: org.apache.poi.poifs.crypt.HashAlgorithm;	$r1 = <org.apache.poi.poifs.crypt.dsig.services.TSPTimeStampService$1: int[] $SwitchMap$org$apache$poi$poifs$crypt$HashAlgorithm>;	$i0 = virtualinvoke r0.<org.apache.poi.poifs.crypt.HashAlgorithm: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r5 = <org.bouncycastle.asn1.x509.X509ObjectIdentifiers: org.bouncycastle.asn1.ASN1ObjectIdentifier id_SHA1>;     case 2: goto $r4 = <org.bouncycastle.asn1.nist.NISTObjectIdentifiers: org.bouncycastle.asn1.ASN1ObjectIdentifier id_sha256>;     case 3: goto $r3 = <org.bouncycastle.asn1.nist.NISTObjectIdentifiers: org.bouncycastle.asn1.ASN1ObjectIdentifier id_sha384>;     case 4: goto $r2 = <org.bouncycastle.asn1.nist.NISTObjectIdentifiers: org.bouncycastle.asn1.ASN1ObjectIdentifier id_sha512>;     default: goto $r6 = new java.lang.IllegalArgumentException; };	$r6 = new java.lang.IllegalArgumentException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unsupported digest algo: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r6
;block_num 2