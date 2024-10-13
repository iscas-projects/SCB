(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2976 0)
(declare-sort var2281 0)
(declare-sort var2664 0)
(declare-sort var3801 0)
(declare-sort var1884 0)
(declare-sort var2450 0)
(declare-sort var1789 0)
(declare-sort var600 0)
(declare-sort var724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2281_getDefaultAlgorithm/-1643909248 () String)
(declare-fun provider/-924504959 (var2976) var2664)
(declare-fun var2281_getInstance/92758568 (String var2664) var2281)
(declare-fun init/-267628775 (var2281 var3801) void)
(declare-fun getTrustManagers/-219980981 (var2281) (Array Int var2450))
(declare-fun var1789_checkNotNull/185761657 (var600) void)
(declare-fun cast-from-__Array__Int__var2450__-to-var600 ((Array Int var2450)) var600)
(declare-fun getLength-Arr-var2450-1 ((Array Int var2450)) Int)
(declare-fun var1789_checkNotNull/-1048323646 (var600 String) void)
(declare-fun cast-from-var2450-to-var600 (var2450) var600)
(declare-fun cast-from-var2450-to-var724 (var2450) var724)
(declare-const null-var2976 var2976)
(declare-const null-NullType var1884)
(declare-const null-var3801 var3801)
(declare-const var1520 var2976) ; Statement: r0 := @this: okhttp3.internal.platform.OpenJSSEPlatform 
(assert (not (= var1520 null-var2976)))
(define-const var556 String var2281_getDefaultAlgorithm/-1643909248) ; Statement: $r2 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>() 
(define-const var1897 var2664 (provider/-924504959 var1520)) ; Statement: $r1 = r0.<okhttp3.internal.platform.OpenJSSEPlatform: java.security.Provider provider> 
(define-const var3747 var2281 (var2281_getInstance/92758568 var556 var1897)) ; Statement: r3 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String,java.security.Provider)>($r2, $r1) 
(assert true)
;(assert (init/-267628775 var3747 null-var3801)) ; Statement: virtualinvoke r3.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null) 

(declare-const var3747!1 var2281)
(declare-const var3587 var1884)
(assert true)
(define-const var779 (Array Int var2450) (getTrustManagers/-219980981 var3747!1)) ; Statement: $r4 = virtualinvoke r3.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>() 
;(assert (var1789_checkNotNull/185761657 (cast-from-__Array__Int__var2450__-to-var600 var779))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r4) 

(declare-const var779!1 (Array Int var2450))
(define-const var1438 Int (getLength-Arr-var2450-1 var779!1)) ; Statement: $i0 = lengthof $r4 
 ; Statement: if $i0 != 1 goto $z1 = 0 
(assert (not (= var1438 1))) ; Cond: $i0 != 1 
(define-const var225 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r5 = $r4[0] 
(assert (not (= (ite var225 1 0) 0))) ; Cond: $z1 != 0 
(define-const var2491 var2450 (select var779!1 0)) ; Statement: $r5 = $r4[0] 
;(assert (var1789_checkNotNull/-1048323646 (cast-from-var2450-to-var600 var2491) "null cannot be cast to non-null type javax.net.ssl.X509TrustManager")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r5, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager") 

(declare-const var2491!1 var2450)
(declare-const var2884 String)
(define-const var325 var724 (cast-from-var2450-to-var724 var2491!1)) ; Statement: $r6 = (javax.net.ssl.X509TrustManager) $r5 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var2281_getDefaultAlgorithm/-1643909248=([], java.lang.String), provider/-924504959=([okhttp3.internal.platform.OpenJSSEPlatform], java.security.Provider), var2281_getInstance/92758568=([java.lang.String, java.security.Provider], javax.net.ssl.TrustManagerFactory), init/-267628775=([javax.net.ssl.TrustManagerFactory, java.security.KeyStore], void), getTrustManagers/-219980981=([javax.net.ssl.TrustManagerFactory], javax.net.ssl.TrustManager[]), var1789_checkNotNull/185761657=([java.lang.Object], void), cast-from-__Array__Int__var2450__-to-var600=([javax.net.ssl.TrustManager[]], java.lang.Object), getLength-Arr-var2450-1=([javax.net.ssl.TrustManager[]], int), var1789_checkNotNull/-1048323646=([java.lang.Object, java.lang.String], void), cast-from-var2450-to-var600=([javax.net.ssl.TrustManager], java.lang.Object), cast-from-var2450-to-var724=([javax.net.ssl.TrustManager], javax.net.ssl.X509TrustManager)}
; {var2976=okhttp3.internal.platform.OpenJSSEPlatform, var1520=r0, var2281=javax.net.ssl.TrustManagerFactory, var556=$r2, var2664=java.security.Provider, var1897=$r1, var3747=r3, var3801=java.security.KeyStore, var3587=null, var1884=null_type, var2450=javax.net.ssl.TrustManager, var779=$r4, var1789=kotlin.jvm.internal.Intrinsics, var600=java.lang.Object, var1438=$i0, var225=$z1, var2491=$r5, var2884="null cannot be cast to non-null type javax.net.ssl.X509TrustManager", var724=javax.net.ssl.X509TrustManager, var325=$r6}
; {okhttp3.internal.platform.OpenJSSEPlatform=var2976, r0=var1520, javax.net.ssl.TrustManagerFactory=var2281, $r2=var556, java.security.Provider=var2664, $r1=var1897, r3=var3747, java.security.KeyStore=var3801, null=var3587, null_type=var1884, javax.net.ssl.TrustManager=var2450, $r4=var779, kotlin.jvm.internal.Intrinsics=var1789, java.lang.Object=var600, $i0=var1438, $z1=var225, $r5=var2491, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"=var2884, javax.net.ssl.X509TrustManager=var724, $r6=var325}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.platform.OpenJSSEPlatform;	$r2 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>();	$r1 = r0.<okhttp3.internal.platform.OpenJSSEPlatform: java.security.Provider provider>;	r3 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String,java.security.Provider)>($r2, $r1);	virtualinvoke r3.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null);	$r4 = virtualinvoke r3.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r4);	$i0 = lengthof $r4;	if $i0 != 1 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r5 = $r4[0];	$r5 = $r4[0];	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r5, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");	$r6 = (javax.net.ssl.X509TrustManager) $r5;	return $r6
;block_num 4