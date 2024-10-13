(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3084 0)
(declare-sort var3859 0)
(declare-sort var2397 0)
(declare-sort var8 0)
(declare-sort var45 0)
(declare-sort var62 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2397_checkNotNullParameter/-2060636419 (var8 String) void)
(declare-fun cast-from-var3859-to-var8 (var3859) var8)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var3859-to-var45 (var3859) var45)
(declare-fun sha256Hash/-1844059290 (var3084 var45) var62)
(declare-fun base64/-54072094 (var62) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3084 var3084)
(declare-const null-var3859 var3859)
(declare-const var503 var3084) ; Statement: r2 := @this: okhttp3.CertificatePinner$Companion 
(assert (not (= var503 null-var3084)))
(declare-const var1785 var3859) ; Statement: r0 := @parameter0: java.security.cert.Certificate 
(assert (not (= var1785 null-var3859)))
;(assert (var2397_checkNotNullParameter/-2060636419 (cast-from-var3859-to-var8 var1785) "certificate")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "certificate") 

(declare-const var1785!1 var3859)
(declare-const var322 String)
(define-const var1457 Bool false) ; Statement: $z0 = r0 instanceof java.security.cert.X509Certificate 
 ; Statement: if $z0 != 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var1457 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2297 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2297)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2297!1 String)
(assert (= var2297!1 ""))
(assert true)
(define-const var1342 String (append/672562846 var2297!1 "sha256/")) ; Statement: $r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("sha256/") 
(declare-const var2297!2 String)
(assert (= var2297!2 (str.++ var2297!1 "sha256/")))
(define-const var1778 var45 (cast-from-var3859-to-var45 var1785!1)) ; Statement: $r3 = (java.security.cert.X509Certificate) r0 
(assert true)
(define-const var71 var62 (sha256Hash/-1844059290 var503 var1778)) ; Statement: $r4 = virtualinvoke r2.<okhttp3.CertificatePinner$Companion: okio.ByteString sha256Hash(java.security.cert.X509Certificate)>($r3) 
(assert true)
(define-const var1578 String (base64/-54072094 var71)) ; Statement: $r5 = virtualinvoke $r4.<okio.ByteString: java.lang.String base64()>() 
(assert true)
(define-const var581 String (append/672562846 var1342 var1578)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1342!1 String)
(assert (= var1342!1 (str.++ var1342 var1578)))
(assert true)
(define-const var3991 String (toString/-2075883882 var581)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2397_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var3859-to-var8=([java.security.cert.Certificate], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var3859-to-var45=([java.security.cert.Certificate], java.security.cert.X509Certificate), sha256Hash/-1844059290=([okhttp3.CertificatePinner$Companion, java.security.cert.X509Certificate], okio.ByteString), base64/-54072094=([okio.ByteString], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3084=okhttp3.CertificatePinner$Companion, var503=r2, var3859=java.security.cert.Certificate, var1785=r0, var2397=kotlin.jvm.internal.Intrinsics, var8=java.lang.Object, var322="certificate", var1457=$z0, var2297=$r1, var1342=$r6, var45=java.security.cert.X509Certificate, var1778=$r3, var62=okio.ByteString, var71=$r4, var1578=$r5, var581=$r7, var3991=$r8}
; {okhttp3.CertificatePinner$Companion=var3084, r2=var503, java.security.cert.Certificate=var3859, r0=var1785, kotlin.jvm.internal.Intrinsics=var2397, java.lang.Object=var8, "certificate"=var322, $z0=var1457, $r1=var2297, $r6=var1342, java.security.cert.X509Certificate=var45, $r3=var1778, okio.ByteString=var62, $r4=var71, $r5=var1578, $r7=var581, $r8=var3991}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.CertificatePinner$Companion;	r0 := @parameter0: java.security.cert.Certificate;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "certificate");	$z0 = r0 instanceof java.security.cert.X509Certificate;	if $z0 != 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("sha256/");	$r3 = (java.security.cert.X509Certificate) r0;	$r4 = virtualinvoke r2.<okhttp3.CertificatePinner$Companion: okio.ByteString sha256Hash(java.security.cert.X509Certificate)>($r3);	$r5 = virtualinvoke $r4.<okio.ByteString: java.lang.String base64()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2