(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var253 0)
(declare-sort var270 0)
(declare-sort var870 0)
(declare-sort var2126 0)
(declare-sort var2626 0)
(declare-sort var1051 0)
(declare-sort var3274 0)
(declare-sort var3994 0)
(declare-sort var3537 0)
(declare-sort var3564 0)
(declare-sort var1114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var270_getDefaultAlgorithm/-1643909248 () String)
(declare-fun var270_getInstance/1588979297 (String) var270)
(declare-fun init/-267628775 (var270 var870) void)
(declare-fun getTrustManagers/-219980981 (var270) (Array Int var2626))
(declare-fun var1051_checkNotNull/185761657 (var3274) void)
(declare-fun cast-from-__Array__Int__var2626__-to-var3274 ((Array Int var2626)) var3274)
(declare-fun getLength-Arr-var2626-1 ((Array Int var2626)) Int)
(declare-fun var1051_checkNotNull/-1048323646 (var3274 String) void)
(declare-fun cast-from-var2626-to-var3274 (var2626) var3274)
(declare-fun cast-from-var2626-to-var3994 (var2626) var3994)
(declare-fun cast-from-var3994-to-var2626 (var3994) var2626)
(declare-fun cast-from-var3537-to-var3564 (var3537) var3564)
(declare-fun var1114_setHostnameVerifier/1069154449 (var2626 var3564) void)
(declare-const null-var253 var253)
(declare-const null-NullType var2126)
(declare-const null-var870 var870)
(declare-const var3537-INSTANCE var3537)
(declare-const var2391 var253) ; Statement: r13 := @this: okhttp3.internal.platform.ConscryptPlatform 
(assert (not (= var2391 null-var253)))
(define-const var675 String var270_getDefaultAlgorithm/-1643909248) ; Statement: $r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>() 
(define-const var958 var270 (var270_getInstance/1588979297 var675)) ; Statement: r14 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String)>($r0) 
(assert true)
;(assert (init/-267628775 var958 null-var870)) ; Statement: virtualinvoke r14.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null) 

(declare-const var958!1 var270)
(declare-const var3491 var2126)
(assert true)
(define-const var1769 (Array Int var2626) (getTrustManagers/-219980981 var958!1)) ; Statement: $r1 = virtualinvoke r14.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>() 
;(assert (var1051_checkNotNull/185761657 (cast-from-__Array__Int__var2626__-to-var3274 var1769))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1) 

(declare-const var1769!1 (Array Int var2626))
(define-const var1403 Int (getLength-Arr-var2626-1 var1769!1)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if $i0 != 1 goto $z1 = 0 
(assert (not (= var1403 1))) ; Cond: $i0 != 1 
(define-const var3079 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r2 = $r1[0] 
(assert (not (= (ite var3079 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3428 var2626 (select var1769!1 0)) ; Statement: $r2 = $r1[0] 
;(assert (var1051_checkNotNull/-1048323646 (cast-from-var2626-to-var3274 var3428) "null cannot be cast to non-null type javax.net.ssl.X509TrustManager")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r2, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager") 

(declare-const var3428!1 var2626)
(declare-const var1554 String)
(define-const var1705 var3994 (cast-from-var2626-to-var3994 var3428!1)) ; Statement: r16 = (javax.net.ssl.X509TrustManager) $r2 
(define-const var1190 var2626 (cast-from-var3994-to-var2626 var1705)) ; Statement: $r5 = (javax.net.ssl.TrustManager) r16 
(define-const var2152 var3537 var3537-INSTANCE) ; Statement: $r3 = <okhttp3.internal.platform.ConscryptPlatform$DisabledHostnameVerifier: okhttp3.internal.platform.ConscryptPlatform$DisabledHostnameVerifier INSTANCE> 
(define-const var616 var3564 (cast-from-var3537-to-var3564 var2152)) ; Statement: $r4 = (org.conscrypt.ConscryptHostnameVerifier) $r3 
;(assert (var1114_setHostnameVerifier/1069154449 var1190 var616)) ; Statement: staticinvoke <org.conscrypt.Conscrypt: void setHostnameVerifier(javax.net.ssl.TrustManager,org.conscrypt.ConscryptHostnameVerifier)>($r5, $r4) 

(declare-const var1190!1 var2626)
(declare-const var616!1 var3564)
 ; Statement: return r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var270_getDefaultAlgorithm/-1643909248=([], java.lang.String), var270_getInstance/1588979297=([java.lang.String], javax.net.ssl.TrustManagerFactory), init/-267628775=([javax.net.ssl.TrustManagerFactory, java.security.KeyStore], void), getTrustManagers/-219980981=([javax.net.ssl.TrustManagerFactory], javax.net.ssl.TrustManager[]), var1051_checkNotNull/185761657=([java.lang.Object], void), cast-from-__Array__Int__var2626__-to-var3274=([javax.net.ssl.TrustManager[]], java.lang.Object), getLength-Arr-var2626-1=([javax.net.ssl.TrustManager[]], int), var1051_checkNotNull/-1048323646=([java.lang.Object, java.lang.String], void), cast-from-var2626-to-var3274=([javax.net.ssl.TrustManager], java.lang.Object), cast-from-var2626-to-var3994=([javax.net.ssl.TrustManager], javax.net.ssl.X509TrustManager), cast-from-var3994-to-var2626=([javax.net.ssl.X509TrustManager], javax.net.ssl.TrustManager), cast-from-var3537-to-var3564=([okhttp3.internal.platform.ConscryptPlatform$DisabledHostnameVerifier], org.conscrypt.ConscryptHostnameVerifier), var1114_setHostnameVerifier/1069154449=([javax.net.ssl.TrustManager, org.conscrypt.ConscryptHostnameVerifier], void)}
; {var253=okhttp3.internal.platform.ConscryptPlatform, var2391=r13, var270=javax.net.ssl.TrustManagerFactory, var675=$r0, var958=r14, var870=java.security.KeyStore, var3491=null, var2126=null_type, var2626=javax.net.ssl.TrustManager, var1769=$r1, var1051=kotlin.jvm.internal.Intrinsics, var3274=java.lang.Object, var1403=$i0, var3079=$z1, var3428=$r2, var1554="null cannot be cast to non-null type javax.net.ssl.X509TrustManager", var3994=javax.net.ssl.X509TrustManager, var1705=r16, var1190=$r5, var3537=okhttp3.internal.platform.ConscryptPlatform$DisabledHostnameVerifier, var2152=$r3, var3564=org.conscrypt.ConscryptHostnameVerifier, var616=$r4, var1114=org.conscrypt.Conscrypt}
; {okhttp3.internal.platform.ConscryptPlatform=var253, r13=var2391, javax.net.ssl.TrustManagerFactory=var270, $r0=var675, r14=var958, java.security.KeyStore=var870, null=var3491, null_type=var2126, javax.net.ssl.TrustManager=var2626, $r1=var1769, kotlin.jvm.internal.Intrinsics=var1051, java.lang.Object=var3274, $i0=var1403, $z1=var3079, $r2=var3428, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"=var1554, javax.net.ssl.X509TrustManager=var3994, r16=var1705, $r5=var1190, okhttp3.internal.platform.ConscryptPlatform$DisabledHostnameVerifier=var3537, $r3=var2152, org.conscrypt.ConscryptHostnameVerifier=var3564, $r4=var616, org.conscrypt.Conscrypt=var1114}
;seq 
;cnt {}
;stmts r13 := @this: okhttp3.internal.platform.ConscryptPlatform;	$r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>();	r14 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String)>($r0);	virtualinvoke r14.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null);	$r1 = virtualinvoke r14.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1);	$i0 = lengthof $r1;	if $i0 != 1 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r2 = $r1[0];	$r2 = $r1[0];	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r2, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");	r16 = (javax.net.ssl.X509TrustManager) $r2;	$r5 = (javax.net.ssl.TrustManager) r16;	$r3 = <okhttp3.internal.platform.ConscryptPlatform$DisabledHostnameVerifier: okhttp3.internal.platform.ConscryptPlatform$DisabledHostnameVerifier INSTANCE>;	$r4 = (org.conscrypt.ConscryptHostnameVerifier) $r3;	staticinvoke <org.conscrypt.Conscrypt: void setHostnameVerifier(javax.net.ssl.TrustManager,org.conscrypt.ConscryptHostnameVerifier)>($r5, $r4);	return r16
;block_num 4