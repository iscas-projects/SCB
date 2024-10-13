(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1462 0)
(declare-sort var2801 0)
(declare-sort var400 0)
(declare-sort var1582 0)
(declare-sort var2693 0)
(declare-sort var1275 0)
(declare-sort var1997 0)
(declare-sort var3009 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var400_checkNotNullParameter/-2060636419 (var1582 String) void)
(declare-fun cast-from-var2801-to-var1582 (var2801) var1582)
(define-fun cast-from-var1462-to-var1462 ((arg var1462)) var1462 arg)
(declare-fun sslSocketFactoryOrNull/1595524517 (var1462) var2801)
(declare-fun var400_areEqual/-886455880 (var1582 var1582) Bool)
(declare-fun get/-1167454587 (var2693) var1275)
(declare-fun trustManager/-593780574 (var1275 var2801) var1997)
(declare-fun x509TrustManagerOrNull/1595524517 (var1462) var1997)
(declare-fun var400_checkNotNull/185761657 (var1582) void)
(declare-fun cast-from-var1997-to-var1582 (var1997) var1582)
(declare-fun buildCertificateChainCleaner/1807638858 (var1275 var1997) var3009)
(declare-fun certificateChainCleaner/1595524517 (var1462) var3009)
(declare-const null-var1462 var1462)
(declare-const null-var2801 var2801)
(declare-const var1275-Companion var2693)
(declare-const null-var1997 var1997)
(declare-const var1531 var1462) ; Statement: r1 := @this: okhttp3.OkHttpClient$Builder 
(assert (not (= var1531 null-var1462)))
(declare-const var1426 var2801) ; Statement: r0 := @parameter0: javax.net.ssl.SSLSocketFactory 
(assert (not (= var1426 null-var2801)))
;(assert (var400_checkNotNullParameter/-2060636419 (cast-from-var2801-to-var1582 var1426) "sslSocketFactory")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sslSocketFactory") 

(declare-const var1426!1 var2801)
(declare-const var1074 String)
(define-const var2385 var1462 (cast-from-var1462-to-var1462 var1531)) ; Statement: $r2 = (okhttp3.OkHttpClient$Builder) r1 
(define-const var1528 var2801 (sslSocketFactoryOrNull/1595524517 var2385)) ; Statement: $r3 = $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull> 
(define-const var3739 Bool (var400_areEqual/-886455880 (cast-from-var2801-to-var1582 var1426!1) (cast-from-var2801-to-var1582 var1528))) ; Statement: $z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>(r0, $r3) 
 ; Statement: if $z0 != 0 goto $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull> = r0 
(assert (not (= (ite var3739 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2385!1 var1462)
(assert (not (= var2385!1 null-var1462)))
(assert (= (sslSocketFactoryOrNull/1595524517 var2385!1) var1426!1)) ; Statement: $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull> = r0 
(define-const var2719 var2693 var1275-Companion) ; Statement: $r4 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion> 
(assert true)
(define-const var1714 var1275 (get/-1167454587 var2719)) ; Statement: $r5 = virtualinvoke $r4.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>() 
(assert true)
(define-const var3742 var1997 (trustManager/-593780574 var1714 var1426!1)) ; Statement: $r6 = virtualinvoke $r5.<okhttp3.internal.platform.Platform: javax.net.ssl.X509TrustManager trustManager(javax.net.ssl.SSLSocketFactory)>(r0) 
 ; Statement: if $r6 != null goto $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.X509TrustManager x509TrustManagerOrNull> = $r6 
(assert (not (= var3742 null-var1997))) ; Cond: $r6 != null 
(declare-const var2385!2 var1462)
(assert (not (= var2385!2 null-var1462)))
(assert (= (x509TrustManagerOrNull/1595524517 var2385!2) var3742)) ; Statement: $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.X509TrustManager x509TrustManagerOrNull> = $r6 
(define-const var2105 var2693 var1275-Companion) ; Statement: $r7 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion> 
(assert true)
(define-const var3212 var1275 (get/-1167454587 var2105)) ; Statement: $r9 = virtualinvoke $r7.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>() 
(define-const var826 var1997 (x509TrustManagerOrNull/1595524517 var2385!2)) ; Statement: $r8 = $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.X509TrustManager x509TrustManagerOrNull> 
;(assert (var400_checkNotNull/185761657 (cast-from-var1997-to-var1582 var826))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r8) 

(declare-const var826!1 var1997)
(assert true)
(define-const var1794 var3009 (buildCertificateChainCleaner/1807638858 var3212 var826!1)) ; Statement: $r10 = virtualinvoke $r9.<okhttp3.internal.platform.Platform: okhttp3.internal.tls.CertificateChainCleaner buildCertificateChainCleaner(javax.net.ssl.X509TrustManager)>($r8) 
(declare-const var2385!3 var1462)
(assert (not (= var2385!3 null-var1462)))
(assert (= (certificateChainCleaner/1595524517 var2385!3) var1794)) ; Statement: $r2.<okhttp3.OkHttpClient$Builder: okhttp3.internal.tls.CertificateChainCleaner certificateChainCleaner> = $r10 
(define-const var2071 var1462 (cast-from-var1462-to-var1462 var1531)) ; Statement: $r11 = (okhttp3.OkHttpClient$Builder) r1 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var400_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2801-to-var1582=([javax.net.ssl.SSLSocketFactory], java.lang.Object), cast-from-var1462-to-var1462=([okhttp3.OkHttpClient$Builder], okhttp3.OkHttpClient$Builder), sslSocketFactoryOrNull/1595524517=([okhttp3.OkHttpClient$Builder], javax.net.ssl.SSLSocketFactory), var400_areEqual/-886455880=([java.lang.Object, java.lang.Object], boolean), get/-1167454587=([okhttp3.internal.platform.Platform$Companion], okhttp3.internal.platform.Platform), trustManager/-593780574=([okhttp3.internal.platform.Platform, javax.net.ssl.SSLSocketFactory], javax.net.ssl.X509TrustManager), x509TrustManagerOrNull/1595524517=([okhttp3.OkHttpClient$Builder], javax.net.ssl.X509TrustManager), var400_checkNotNull/185761657=([java.lang.Object], void), cast-from-var1997-to-var1582=([javax.net.ssl.X509TrustManager], java.lang.Object), buildCertificateChainCleaner/1807638858=([okhttp3.internal.platform.Platform, javax.net.ssl.X509TrustManager], okhttp3.internal.tls.CertificateChainCleaner), certificateChainCleaner/1595524517=([okhttp3.OkHttpClient$Builder], okhttp3.internal.tls.CertificateChainCleaner)}
; {var1462=okhttp3.OkHttpClient$Builder, var1531=r1, var2801=javax.net.ssl.SSLSocketFactory, var1426=r0, var400=kotlin.jvm.internal.Intrinsics, var1582=java.lang.Object, var1074="sslSocketFactory", var2385=$r2, var1528=$r3, var3739=$z0, var2693=okhttp3.internal.platform.Platform$Companion, var1275=okhttp3.internal.platform.Platform, var2719=$r4, var1714=$r5, var1997=javax.net.ssl.X509TrustManager, var3742=$r6, var2105=$r7, var3212=$r9, var826=$r8, var3009=okhttp3.internal.tls.CertificateChainCleaner, var1794=$r10, var2071=$r11}
; {okhttp3.OkHttpClient$Builder=var1462, r1=var1531, javax.net.ssl.SSLSocketFactory=var2801, r0=var1426, kotlin.jvm.internal.Intrinsics=var400, java.lang.Object=var1582, "sslSocketFactory"=var1074, $r2=var2385, $r3=var1528, $z0=var3739, okhttp3.internal.platform.Platform$Companion=var2693, okhttp3.internal.platform.Platform=var1275, $r4=var2719, $r5=var1714, javax.net.ssl.X509TrustManager=var1997, $r6=var3742, $r7=var2105, $r9=var3212, $r8=var826, okhttp3.internal.tls.CertificateChainCleaner=var3009, $r10=var1794, $r11=var2071}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.OkHttpClient$Builder;	r0 := @parameter0: javax.net.ssl.SSLSocketFactory;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sslSocketFactory");	$r2 = (okhttp3.OkHttpClient$Builder) r1;	$r3 = $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull>;	$z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>(r0, $r3);	if $z0 != 0 goto $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull> = r0;	$r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull> = r0;	$r4 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion>;	$r5 = virtualinvoke $r4.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>();	$r6 = virtualinvoke $r5.<okhttp3.internal.platform.Platform: javax.net.ssl.X509TrustManager trustManager(javax.net.ssl.SSLSocketFactory)>(r0);	if $r6 != null goto $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.X509TrustManager x509TrustManagerOrNull> = $r6;	$r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.X509TrustManager x509TrustManagerOrNull> = $r6;	$r7 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion>;	$r9 = virtualinvoke $r7.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>();	$r8 = $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.X509TrustManager x509TrustManagerOrNull>;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r8);	$r10 = virtualinvoke $r9.<okhttp3.internal.platform.Platform: okhttp3.internal.tls.CertificateChainCleaner buildCertificateChainCleaner(javax.net.ssl.X509TrustManager)>($r8);	$r2.<okhttp3.OkHttpClient$Builder: okhttp3.internal.tls.CertificateChainCleaner certificateChainCleaner> = $r10;	$r11 = (okhttp3.OkHttpClient$Builder) r1;	return $r11
;block_num 3