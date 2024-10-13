(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1437 0)
(declare-sort var1758 0)
(declare-sort var2707 0)
(declare-sort var831 0)
(declare-sort var601 0)
(declare-sort var978 0)
(declare-sort var752 0)
(declare-sort var2108 0)
(declare-sort var2085 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSignatureConfig/-1274643453 (var1758) var2707)
(declare-fun var601_newTransform/-849370532 (var1758 String) var831)
(declare-fun var752_singletonList/684126186 (var2108) var978)
(declare-fun cast-from-var831-to-var2108 (var831) var2108)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getXadesSignatureId/-520084988 (var2707) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var601_newReference/164847747 (var1758 String var978 String) var2085)
(declare-const null-var1437 var1437)
(declare-const null-var1758 var1758)
(declare-const var2109 var1437) ; Statement: r10 := @this: org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet 
(assert (not (= var2109 null-var1437)))
(declare-const var2684 var1758) ; Statement: r0 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo 
(assert (not (= var2684 null-var1758)))
(assert true)
(define-const var1309 var2707 (getSignatureConfig/-1274643453 var2684)) ; Statement: r1 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>() 
(define-const var2319 var831 (var601_newTransform/-849370532 var2684 "http://www.w3.org/TR/2001/REC-xml-c14n-20010315")) ; Statement: $r2 = staticinvoke <org.apache.poi.poifs.crypt.dsig.facets.SignatureFacetHelper: javax.xml.crypto.dsig.Transform newTransform(org.apache.poi.poifs.crypt.dsig.SignatureInfo,java.lang.String)>(r0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315") 
(define-const var2915 var978 (var752_singletonList/684126186 (cast-from-var831-to-var2108 var2319))) ; Statement: r3 = staticinvoke <java.util.Collections: java.util.List singletonList(java.lang.Object)>($r2) 
(define-const var411 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var411)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var411!1 String)
(assert (= var411!1 ""))
(assert true)
(define-const var3796 String (append/672562846 var411!1 "#")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var411!2 String)
(assert (= var411!2 (str.++ var411!1 "#")))
(assert true)
(define-const var1080 String (getXadesSignatureId/-520084988 var1309)) ; Statement: $r5 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getXadesSignatureId()>() 
(assert true)
(define-const var1450 String (append/672562846 var3796 var1080)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3796!1 String)
(assert (= var3796!1 (str.++ var3796 var1080)))
(assert true)
(define-const var2240 String (toString/-2075883882 var1450)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1077 var2085 (var601_newReference/164847747 var2684 var2240 var2915 "http://uri.etsi.org/01903#SignedProperties")) ; Statement: $r9 = staticinvoke <org.apache.poi.poifs.crypt.dsig.facets.SignatureFacetHelper: javax.xml.crypto.dsig.Reference newReference(org.apache.poi.poifs.crypt.dsig.SignatureInfo,java.lang.String,java.util.List,java.lang.String)>(r0, $r8, r3, "http://uri.etsi.org/01903#SignedProperties") 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getSignatureConfig/-1274643453=([org.apache.poi.poifs.crypt.dsig.SignatureInfo], org.apache.poi.poifs.crypt.dsig.SignatureConfig), var601_newTransform/-849370532=([org.apache.poi.poifs.crypt.dsig.SignatureInfo, java.lang.String], javax.xml.crypto.dsig.Transform), var752_singletonList/684126186=([java.lang.Object], java.util.List), cast-from-var831-to-var2108=([javax.xml.crypto.dsig.Transform], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getXadesSignatureId/-520084988=([org.apache.poi.poifs.crypt.dsig.SignatureConfig], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var601_newReference/164847747=([org.apache.poi.poifs.crypt.dsig.SignatureInfo, java.lang.String, java.util.List, java.lang.String], javax.xml.crypto.dsig.Reference)}
; {var1437=org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet, var2109=r10, var1758=org.apache.poi.poifs.crypt.dsig.SignatureInfo, var2684=r0, var2707=org.apache.poi.poifs.crypt.dsig.SignatureConfig, var1309=r1, var831=javax.xml.crypto.dsig.Transform, var601=org.apache.poi.poifs.crypt.dsig.facets.SignatureFacetHelper, var2319=$r2, var978=java.util.List, var752=java.util.Collections, var2108=java.lang.Object, var2915=r3, var411=$r4, var3796=$r6, var1080=$r5, var1450=$r7, var2240=$r8, var2085=javax.xml.crypto.dsig.Reference, var1077=$r9}
; {org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet=var1437, r10=var2109, org.apache.poi.poifs.crypt.dsig.SignatureInfo=var1758, r0=var2684, org.apache.poi.poifs.crypt.dsig.SignatureConfig=var2707, r1=var1309, javax.xml.crypto.dsig.Transform=var831, org.apache.poi.poifs.crypt.dsig.facets.SignatureFacetHelper=var601, $r2=var2319, java.util.List=var978, java.util.Collections=var752, java.lang.Object=var2108, r3=var2915, $r4=var411, $r6=var3796, $r5=var1080, $r7=var1450, $r8=var2240, javax.xml.crypto.dsig.Reference=var2085, $r9=var1077}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r10 := @this: org.apache.poi.poifs.crypt.dsig.facets.XAdESSignatureFacet;	r0 := @parameter0: org.apache.poi.poifs.crypt.dsig.SignatureInfo;	r1 = virtualinvoke r0.<org.apache.poi.poifs.crypt.dsig.SignatureInfo: org.apache.poi.poifs.crypt.dsig.SignatureConfig getSignatureConfig()>();	$r2 = staticinvoke <org.apache.poi.poifs.crypt.dsig.facets.SignatureFacetHelper: javax.xml.crypto.dsig.Transform newTransform(org.apache.poi.poifs.crypt.dsig.SignatureInfo,java.lang.String)>(r0, "http://www.w3.org/TR/2001/REC-xml-c14n-20010315");	r3 = staticinvoke <java.util.Collections: java.util.List singletonList(java.lang.Object)>($r2);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r5 = virtualinvoke r1.<org.apache.poi.poifs.crypt.dsig.SignatureConfig: java.lang.String getXadesSignatureId()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = staticinvoke <org.apache.poi.poifs.crypt.dsig.facets.SignatureFacetHelper: javax.xml.crypto.dsig.Reference newReference(org.apache.poi.poifs.crypt.dsig.SignatureInfo,java.lang.String,java.util.List,java.lang.String)>(r0, $r8, r3, "http://uri.etsi.org/01903#SignedProperties");	return $r9
;block_num 1