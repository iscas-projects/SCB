(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1458 0)
(declare-sort var2030 0)
(declare-sort var1521 0)
(declare-sort var1483 0)
(declare-sort var1768 0)
(declare-sort var2379 0)
(declare-sort var2361 0)
(declare-sort var3446 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1521_checkNotNullParameter/-2060636419 (var1483 String) void)
(declare-fun cast-from-var2030-to-var1483 (var2030) var1483)
(define-fun cast-from-var1458-to-var1458 ((arg var1458)) var1458 arg)
(declare-fun sslSocketFactoryOrNull/1595524517 (var1458) var2030)
(declare-fun var1521_areEqual/-886455880 (var1483 var1483) Bool)
(declare-fun get/-1167454587 (var1768) var2379)
(declare-fun trustManager/-593780574 (var2379 var2030) var2361)
(declare-fun var3446-init () var3446)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1483) String)
(declare-fun cast-from-var2379-to-var1483 (var2379) var1483)
(declare-fun getClass/1258963082 (var1483) ClassObject)
(declare-fun cast-from-ClassObject-to-var1483 (ClassObject) var1483)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3446 String) void)
(declare-const null-var1458 var1458)
(declare-const null-var2030 var2030)
(declare-const var2379-Companion var1768)
(declare-const null-var2361 var2361)
(declare-const var2407 var1458) ; Statement: r1 := @this: okhttp3.OkHttpClient$Builder 
(assert (not (= var2407 null-var1458)))
(declare-const var2387 var2030) ; Statement: r0 := @parameter0: javax.net.ssl.SSLSocketFactory 
(assert (not (= var2387 null-var2030)))
;(assert (var1521_checkNotNullParameter/-2060636419 (cast-from-var2030-to-var1483 var2387) "sslSocketFactory")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sslSocketFactory") 

(declare-const var2387!1 var2030)
(declare-const var3220 String)
(define-const var150 var1458 (cast-from-var1458-to-var1458 var2407)) ; Statement: $r2 = (okhttp3.OkHttpClient$Builder) r1 
(define-const var1961 var2030 (sslSocketFactoryOrNull/1595524517 var150)) ; Statement: $r3 = $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull> 
(define-const var244 Bool (var1521_areEqual/-886455880 (cast-from-var2030-to-var1483 var2387!1) (cast-from-var2030-to-var1483 var1961))) ; Statement: $z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>(r0, $r3) 
 ; Statement: if $z0 != 0 goto $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull> = r0 
(assert (not (= (ite var244 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var150!1 var1458)
(assert (not (= var150!1 null-var1458)))
(assert (= (sslSocketFactoryOrNull/1595524517 var150!1) var2387!1)) ; Statement: $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull> = r0 
(define-const var1485 var1768 var2379-Companion) ; Statement: $r4 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion> 
(assert true)
(define-const var3803 var2379 (get/-1167454587 var1485)) ; Statement: $r5 = virtualinvoke $r4.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>() 
(assert true)
(define-const var3379 var2361 (trustManager/-593780574 var3803 var2387!1)) ; Statement: $r6 = virtualinvoke $r5.<okhttp3.internal.platform.Platform: javax.net.ssl.X509TrustManager trustManager(javax.net.ssl.SSLSocketFactory)>(r0) 
 ; Statement: if $r6 != null goto $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.X509TrustManager x509TrustManagerOrNull> = $r6 
(assert (not (not (= var3379 null-var2361)))) ; Negate: Cond: $r6 != null  
(define-const var1867 var3446 var3446-init) ; Statement: $r12 = new java.lang.IllegalStateException 
(define-const var338 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var338)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var338!1 String)
(assert (= var338!1 ""))
(assert true)
(define-const var3150 String (append/672562846 var338!1 "Unable to extract the trust manager on ")) ; Statement: $r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to extract the trust manager on ") 
(declare-const var338!2 String)
(assert (= var338!2 (str.++ var338!1 "Unable to extract the trust manager on ")))
(define-const var95 var1768 var2379-Companion) ; Statement: $r14 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion> 
(assert true)
(define-const var1305 var2379 (get/-1167454587 var95)) ; Statement: $r15 = virtualinvoke $r14.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>() 
(assert true)
(define-const var2716 String (append/-1031950772 var3150 (cast-from-var2379-to-var1483 var1305))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15) 
(declare-const var3150!1 String)
(assert (str.prefixof var3150 var3150!1))
(assert true)
(define-const var3344 String (append/672562846 var2716 ", sslSocketFactory is ")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sslSocketFactory is ") 
(declare-const var2716!1 String)
(assert (= var2716!1 (str.++ var2716 ", sslSocketFactory is ")))
(assert true)
(define-const var2497 ClassObject (getClass/1258963082 (cast-from-var2030-to-var1483 var2387!1))) ; Statement: $r18 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2244 String (append/-1031950772 var3344 (cast-from-ClassObject-to-var1483 var2497))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18) 
(declare-const var3344!1 String)
(assert (str.prefixof var3344 var3344!1))
(assert true)
(define-const var611 String (toString/-2075883882 var2244)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1867 var611)) ; Statement: specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21) 

(declare-const var1867!1 var3446)
(declare-const var611!1 String)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var1521_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2030-to-var1483=([javax.net.ssl.SSLSocketFactory], java.lang.Object), cast-from-var1458-to-var1458=([okhttp3.OkHttpClient$Builder], okhttp3.OkHttpClient$Builder), sslSocketFactoryOrNull/1595524517=([okhttp3.OkHttpClient$Builder], javax.net.ssl.SSLSocketFactory), var1521_areEqual/-886455880=([java.lang.Object, java.lang.Object], boolean), get/-1167454587=([okhttp3.internal.platform.Platform$Companion], okhttp3.internal.platform.Platform), trustManager/-593780574=([okhttp3.internal.platform.Platform, javax.net.ssl.SSLSocketFactory], javax.net.ssl.X509TrustManager), var3446-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2379-to-var1483=([okhttp3.internal.platform.Platform], java.lang.Object), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-ClassObject-to-var1483=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1458=okhttp3.OkHttpClient$Builder, var2407=r1, var2030=javax.net.ssl.SSLSocketFactory, var2387=r0, var1521=kotlin.jvm.internal.Intrinsics, var1483=java.lang.Object, var3220="sslSocketFactory", var150=$r2, var1961=$r3, var244=$z0, var1768=okhttp3.internal.platform.Platform$Companion, var2379=okhttp3.internal.platform.Platform, var1485=$r4, var3803=$r5, var2361=javax.net.ssl.X509TrustManager, var3379=$r6, var3446=java.lang.IllegalStateException, var1867=$r12, var338=$r13, var3150=$r16, var95=$r14, var1305=$r15, var2716=$r17, var3344=$r19, var2497=$r18, var2244=$r20, var611=$r21}
; {okhttp3.OkHttpClient$Builder=var1458, r1=var2407, javax.net.ssl.SSLSocketFactory=var2030, r0=var2387, kotlin.jvm.internal.Intrinsics=var1521, java.lang.Object=var1483, "sslSocketFactory"=var3220, $r2=var150, $r3=var1961, $z0=var244, okhttp3.internal.platform.Platform$Companion=var1768, okhttp3.internal.platform.Platform=var2379, $r4=var1485, $r5=var3803, javax.net.ssl.X509TrustManager=var2361, $r6=var3379, java.lang.IllegalStateException=var3446, $r12=var1867, $r13=var338, $r16=var3150, $r14=var95, $r15=var1305, $r17=var2716, $r19=var3344, $r18=var2497, $r20=var2244, $r21=var611}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.OkHttpClient$Builder;	r0 := @parameter0: javax.net.ssl.SSLSocketFactory;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sslSocketFactory");	$r2 = (okhttp3.OkHttpClient$Builder) r1;	$r3 = $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull>;	$z0 = staticinvoke <kotlin.jvm.internal.Intrinsics: boolean areEqual(java.lang.Object,java.lang.Object)>(r0, $r3);	if $z0 != 0 goto $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull> = r0;	$r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.SSLSocketFactory sslSocketFactoryOrNull> = r0;	$r4 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion>;	$r5 = virtualinvoke $r4.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>();	$r6 = virtualinvoke $r5.<okhttp3.internal.platform.Platform: javax.net.ssl.X509TrustManager trustManager(javax.net.ssl.SSLSocketFactory)>(r0);	if $r6 != null goto $r2.<okhttp3.OkHttpClient$Builder: javax.net.ssl.X509TrustManager x509TrustManagerOrNull> = $r6;	$r12 = new java.lang.IllegalStateException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to extract the trust manager on ");	$r14 = <okhttp3.internal.platform.Platform: okhttp3.internal.platform.Platform$Companion Companion>;	$r15 = virtualinvoke $r14.<okhttp3.internal.platform.Platform$Companion: okhttp3.internal.platform.Platform get()>();	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r15);	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", sslSocketFactory is ");	$r18 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r21);	throw $r12
;block_num 3