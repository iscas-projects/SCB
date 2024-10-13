(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3119 0)
(declare-sort var876 0)
(declare-sort var1824 0)
(declare-sort var997 0)
(declare-sort var696 0)
(declare-sort var1227 0)
(declare-sort var1407 0)
(declare-sort var3666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var876_getDefaultAlgorithm/-1643909248 () String)
(declare-fun var876_getInstance/1588979297 (String) var876)
(declare-fun init/-267628775 (var876 var1824) void)
(declare-fun getTrustManagers/-219980981 (var876) (Array Int var696))
(declare-fun var1227_checkNotNull/185761657 (var1407) void)
(declare-fun cast-from-__Array__Int__var696__-to-var1407 ((Array Int var696)) var1407)
(declare-fun getLength-Arr-var696-1 ((Array Int var696)) Int)
(declare-fun var1227_checkNotNull/-1048323646 (var1407 String) void)
(declare-fun cast-from-var696-to-var1407 (var696) var1407)
(declare-fun cast-from-var696-to-var3666 (var696) var3666)
(declare-const null-var3119 var3119)
(declare-const null-NullType var997)
(declare-const null-var1824 var1824)
(declare-const var1778 var3119) ; Statement: r12 := @this: okhttp3.internal.platform.Platform 
(assert (not (= var1778 null-var3119)))
(define-const var598 String var876_getDefaultAlgorithm/-1643909248) ; Statement: $r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>() 
(define-const var151 var876 (var876_getInstance/1588979297 var598)) ; Statement: r1 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String)>($r0) 
(assert true)
;(assert (init/-267628775 var151 null-var1824)) ; Statement: virtualinvoke r1.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null) 

(declare-const var151!1 var876)
(declare-const var1723 var997)
(assert true)
(define-const var546 (Array Int var696) (getTrustManagers/-219980981 var151!1)) ; Statement: $r2 = virtualinvoke r1.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>() 
;(assert (var1227_checkNotNull/185761657 (cast-from-__Array__Int__var696__-to-var1407 var546))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r2) 

(declare-const var546!1 (Array Int var696))
(define-const var3331 Int (getLength-Arr-var696-1 var546!1)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if $i0 != 1 goto $z1 = 0 
(assert (not (= var3331 1))) ; Cond: $i0 != 1 
(define-const var1796 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r3 = $r2[0] 
(assert (not (= (ite var1796 1 0) 0))) ; Cond: $z1 != 0 
(define-const var3776 var696 (select var546!1 0)) ; Statement: $r3 = $r2[0] 
;(assert (var1227_checkNotNull/-1048323646 (cast-from-var696-to-var1407 var3776) "null cannot be cast to non-null type javax.net.ssl.X509TrustManager")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r3, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager") 

(declare-const var3776!1 var696)
(declare-const var3882 String)
(define-const var3055 var3666 (cast-from-var696-to-var3666 var3776!1)) ; Statement: $r4 = (javax.net.ssl.X509TrustManager) $r3 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var876_getDefaultAlgorithm/-1643909248=([], java.lang.String), var876_getInstance/1588979297=([java.lang.String], javax.net.ssl.TrustManagerFactory), init/-267628775=([javax.net.ssl.TrustManagerFactory, java.security.KeyStore], void), getTrustManagers/-219980981=([javax.net.ssl.TrustManagerFactory], javax.net.ssl.TrustManager[]), var1227_checkNotNull/185761657=([java.lang.Object], void), cast-from-__Array__Int__var696__-to-var1407=([javax.net.ssl.TrustManager[]], java.lang.Object), getLength-Arr-var696-1=([javax.net.ssl.TrustManager[]], int), var1227_checkNotNull/-1048323646=([java.lang.Object, java.lang.String], void), cast-from-var696-to-var1407=([javax.net.ssl.TrustManager], java.lang.Object), cast-from-var696-to-var3666=([javax.net.ssl.TrustManager], javax.net.ssl.X509TrustManager)}
; {var3119=okhttp3.internal.platform.Platform, var1778=r12, var876=javax.net.ssl.TrustManagerFactory, var598=$r0, var151=r1, var1824=java.security.KeyStore, var1723=null, var997=null_type, var696=javax.net.ssl.TrustManager, var546=$r2, var1227=kotlin.jvm.internal.Intrinsics, var1407=java.lang.Object, var3331=$i0, var1796=$z1, var3776=$r3, var3882="null cannot be cast to non-null type javax.net.ssl.X509TrustManager", var3666=javax.net.ssl.X509TrustManager, var3055=$r4}
; {okhttp3.internal.platform.Platform=var3119, r12=var1778, javax.net.ssl.TrustManagerFactory=var876, $r0=var598, r1=var151, java.security.KeyStore=var1824, null=var1723, null_type=var997, javax.net.ssl.TrustManager=var696, $r2=var546, kotlin.jvm.internal.Intrinsics=var1227, java.lang.Object=var1407, $i0=var3331, $z1=var1796, $r3=var3776, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"=var3882, javax.net.ssl.X509TrustManager=var3666, $r4=var3055}
;seq 
;cnt {}
;stmts r12 := @this: okhttp3.internal.platform.Platform;	$r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>();	r1 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String)>($r0);	virtualinvoke r1.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null);	$r2 = virtualinvoke r1.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r2);	$i0 = lengthof $r2;	if $i0 != 1 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r3 = $r2[0];	$r3 = $r2[0];	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r3, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");	$r4 = (javax.net.ssl.X509TrustManager) $r3;	return $r4
;block_num 4