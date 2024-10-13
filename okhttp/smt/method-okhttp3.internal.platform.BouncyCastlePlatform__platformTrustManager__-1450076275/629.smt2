(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2471 0)
(declare-sort var3077 0)
(declare-sort var1345 0)
(declare-sort var3733 0)
(declare-sort var1732 0)
(declare-sort var1466 0)
(declare-sort var446 0)
(declare-sort var1052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3077_getInstance/210640858 (String String) var3077)
(declare-fun init/-267628775 (var3077 var1345) void)
(declare-fun getTrustManagers/-219980981 (var3077) (Array Int var1732))
(declare-fun var1466_checkNotNull/185761657 (var446) void)
(declare-fun cast-from-__Array__Int__var1732__-to-var446 ((Array Int var1732)) var446)
(declare-fun getLength-Arr-var1732-1 ((Array Int var1732)) Int)
(declare-fun var1466_checkNotNull/-1048323646 (var446 String) void)
(declare-fun cast-from-var1732-to-var446 (var1732) var446)
(declare-fun cast-from-var1732-to-var1052 (var1732) var1052)
(declare-const null-var2471 var2471)
(declare-const null-NullType var3733)
(declare-const null-var1345 var1345)
(declare-const var3018 var2471) ; Statement: r11 := @this: okhttp3.internal.platform.BouncyCastlePlatform 
(assert (not (= var3018 null-var2471)))
(define-const var3193 var3077 (var3077_getInstance/210640858 "PKIX" "BCJSSE")) ; Statement: r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String,java.lang.String)>("PKIX", "BCJSSE") 
(assert true)
;(assert (init/-267628775 var3193 null-var1345)) ; Statement: virtualinvoke r0.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null) 

(declare-const var3193!1 var3077)
(declare-const var3019 var3733)
(assert true)
(define-const var459 (Array Int var1732) (getTrustManagers/-219980981 var3193!1)) ; Statement: $r1 = virtualinvoke r0.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>() 
;(assert (var1466_checkNotNull/185761657 (cast-from-__Array__Int__var1732__-to-var446 var459))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1) 

(declare-const var459!1 (Array Int var1732))
(define-const var2821 Int (getLength-Arr-var1732-1 var459!1)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if $i0 != 1 goto $z1 = 0 
(assert (not (= var2821 1))) ; Cond: $i0 != 1 
(define-const var3834 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r2 = $r1[0] 
(assert (not (= (ite var3834 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1284 var1732 (select var459!1 0)) ; Statement: $r2 = $r1[0] 
;(assert (var1466_checkNotNull/-1048323646 (cast-from-var1732-to-var446 var1284) "null cannot be cast to non-null type javax.net.ssl.X509TrustManager")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r2, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager") 

(declare-const var1284!1 var1732)
(declare-const var1998 String)
(define-const var872 var1052 (cast-from-var1732-to-var1052 var1284!1)) ; Statement: $r3 = (javax.net.ssl.X509TrustManager) $r2 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3077_getInstance/210640858=([java.lang.String, java.lang.String], javax.net.ssl.TrustManagerFactory), init/-267628775=([javax.net.ssl.TrustManagerFactory, java.security.KeyStore], void), getTrustManagers/-219980981=([javax.net.ssl.TrustManagerFactory], javax.net.ssl.TrustManager[]), var1466_checkNotNull/185761657=([java.lang.Object], void), cast-from-__Array__Int__var1732__-to-var446=([javax.net.ssl.TrustManager[]], java.lang.Object), getLength-Arr-var1732-1=([javax.net.ssl.TrustManager[]], int), var1466_checkNotNull/-1048323646=([java.lang.Object, java.lang.String], void), cast-from-var1732-to-var446=([javax.net.ssl.TrustManager], java.lang.Object), cast-from-var1732-to-var1052=([javax.net.ssl.TrustManager], javax.net.ssl.X509TrustManager)}
; {var2471=okhttp3.internal.platform.BouncyCastlePlatform, var3018=r11, var3077=javax.net.ssl.TrustManagerFactory, var3193=r0, var1345=java.security.KeyStore, var3019=null, var3733=null_type, var1732=javax.net.ssl.TrustManager, var459=$r1, var1466=kotlin.jvm.internal.Intrinsics, var446=java.lang.Object, var2821=$i0, var3834=$z1, var1284=$r2, var1998="null cannot be cast to non-null type javax.net.ssl.X509TrustManager", var1052=javax.net.ssl.X509TrustManager, var872=$r3}
; {okhttp3.internal.platform.BouncyCastlePlatform=var2471, r11=var3018, javax.net.ssl.TrustManagerFactory=var3077, r0=var3193, java.security.KeyStore=var1345, null=var3019, null_type=var3733, javax.net.ssl.TrustManager=var1732, $r1=var459, kotlin.jvm.internal.Intrinsics=var1466, java.lang.Object=var446, $i0=var2821, $z1=var3834, $r2=var1284, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager"=var1998, javax.net.ssl.X509TrustManager=var1052, $r3=var872}
;seq 
;cnt {}
;stmts r11 := @this: okhttp3.internal.platform.BouncyCastlePlatform;	r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String,java.lang.String)>("PKIX", "BCJSSE");	virtualinvoke r0.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null);	$r1 = virtualinvoke r0.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1);	$i0 = lengthof $r1;	if $i0 != 1 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r2 = $r1[0];	$r2 = $r1[0];	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object,java.lang.String)>($r2, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");	$r3 = (javax.net.ssl.X509TrustManager) $r2;	return $r3
;block_num 4