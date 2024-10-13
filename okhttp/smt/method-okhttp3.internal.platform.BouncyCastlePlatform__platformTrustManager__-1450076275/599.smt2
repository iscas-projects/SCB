(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2752 0)
(declare-sort var3726 0)
(declare-sort var980 0)
(declare-sort var1363 0)
(declare-sort var1581 0)
(declare-sort var3943 0)
(declare-sort var3305 0)
(declare-sort var918 0)
(declare-sort var2620 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3726_getInstance/210640858 (String String) var3726)
(declare-fun init/-267628775 (var3726 var980) void)
(declare-fun getTrustManagers/-219980981 (var3726) (Array Int var1581))
(declare-fun var3943_checkNotNull/185761657 (var3305) void)
(declare-fun cast-from-__Array__Int__var1581__-to-var3305 ((Array Int var1581)) var3305)
(declare-fun getLength-Arr-var1581-1 ((Array Int var1581)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var918_toString/-575966009 ((Array Int var3305)) String)
(declare-fun cast-from-__Array__Int__var1581__-to-__Array__Int__var3305__ ((Array Int var1581)) (Array Int var3305))
(declare-fun var3943_checkNotNullExpressionValue/47304269 (var3305 String) void)
(declare-fun cast-from-String-to-var3305 (String) var3305)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2620-init () var2620)
(declare-fun toString/-522406933 (var3305) String)
(declare-fun <init>/-1092629202 (var2620 String) void)
(declare-const null-var2752 var2752)
(declare-const null-NullType var1363)
(declare-const null-var980 var980)
(declare-const var987 var2752) ; Statement: r11 := @this: okhttp3.internal.platform.BouncyCastlePlatform 
(assert (not (= var987 null-var2752)))
(define-const var2073 var3726 (var3726_getInstance/210640858 "PKIX" "BCJSSE")) ; Statement: r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String,java.lang.String)>("PKIX", "BCJSSE") 
(assert true)
;(assert (init/-267628775 var2073 null-var980)) ; Statement: virtualinvoke r0.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null) 

(declare-const var2073!1 var3726)
(declare-const var1955 var1363)
(assert true)
(define-const var3888 (Array Int var1581) (getTrustManagers/-219980981 var2073!1)) ; Statement: $r1 = virtualinvoke r0.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>() 
;(assert (var3943_checkNotNull/185761657 (cast-from-__Array__Int__var1581__-to-var3305 var3888))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1) 

(declare-const var3888!1 (Array Int var1581))
(define-const var3005 Int (getLength-Arr-var1581-1 var3888!1)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if $i0 != 1 goto $z1 = 0 
(assert (not (= var3005 1))) ; Cond: $i0 != 1 
(define-const var1587 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r2 = $r1[0] 
(assert (not (not (= (ite var1587 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3360 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3360)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3360!1 String)
(assert (= var3360!1 ""))
(assert true)
(define-const var3954 String (append/672562846 var3360!1 "Unexpected default trust managers: ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected default trust managers: ") 
(declare-const var3360!2 String)
(assert (= var3360!2 (str.++ var3360!1 "Unexpected default trust managers: ")))
(define-const var2638 String (var918_toString/-575966009 (cast-from-__Array__Int__var1581__-to-__Array__Int__var3305__ var3888!1))) ; Statement: $r5 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r1) 
;(assert (var3943_checkNotNullExpressionValue/47304269 (cast-from-String-to-var3305 var2638) "toString(this)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r5, "toString(this)") 

(declare-const var2638!1 String)
(declare-const var3322 String)
(assert true)
(define-const var552 String (append/672562846 var3954 var2638!1)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3954!1 String)
(assert (= var3954!1 (str.++ var3954 var2638!1)))
(assert true)
(define-const var893 String (toString/-2075883882 var552)) ; Statement: $r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var723 var2620 var2620-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(assert true)
(define-const var2860 String (toString/-522406933 (cast-from-String-to-var3305 var893))) ; Statement: $r9 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var723 var2860)) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var723!1 var2620)
(declare-const var2860!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var3726_getInstance/210640858=([java.lang.String, java.lang.String], javax.net.ssl.TrustManagerFactory), init/-267628775=([javax.net.ssl.TrustManagerFactory, java.security.KeyStore], void), getTrustManagers/-219980981=([javax.net.ssl.TrustManagerFactory], javax.net.ssl.TrustManager[]), var3943_checkNotNull/185761657=([java.lang.Object], void), cast-from-__Array__Int__var1581__-to-var3305=([javax.net.ssl.TrustManager[]], java.lang.Object), getLength-Arr-var1581-1=([javax.net.ssl.TrustManager[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var918_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var1581__-to-__Array__Int__var3305__=([javax.net.ssl.TrustManager[]], java.lang.Object[]), var3943_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3305=([java.lang.String], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2620-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2752=okhttp3.internal.platform.BouncyCastlePlatform, var987=r11, var3726=javax.net.ssl.TrustManagerFactory, var2073=r0, var980=java.security.KeyStore, var1955=null, var1363=null_type, var1581=javax.net.ssl.TrustManager, var3888=$r1, var3943=kotlin.jvm.internal.Intrinsics, var3305=java.lang.Object, var3005=$i0, var1587=$z1, var3360=$r4, var3954=$r6, var918=java.util.Arrays, var2638=$r5, var3322="toString(this)", var552=$r7, var893=$r12, var2620=java.lang.IllegalStateException, var723=$r8, var2860=$r9}
; {okhttp3.internal.platform.BouncyCastlePlatform=var2752, r11=var987, javax.net.ssl.TrustManagerFactory=var3726, r0=var2073, java.security.KeyStore=var980, null=var1955, null_type=var1363, javax.net.ssl.TrustManager=var1581, $r1=var3888, kotlin.jvm.internal.Intrinsics=var3943, java.lang.Object=var3305, $i0=var3005, $z1=var1587, $r4=var3360, $r6=var3954, java.util.Arrays=var918, $r5=var2638, "toString(this)"=var3322, $r7=var552, $r12=var893, java.lang.IllegalStateException=var2620, $r8=var723, $r9=var2860}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: okhttp3.internal.platform.BouncyCastlePlatform;	r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String,java.lang.String)>("PKIX", "BCJSSE");	virtualinvoke r0.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null);	$r1 = virtualinvoke r0.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1);	$i0 = lengthof $r1;	if $i0 != 1 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r2 = $r1[0];	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected default trust managers: ");	$r5 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r1);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r5, "toString(this)");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r12 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = new java.lang.IllegalStateException;	$r9 = virtualinvoke $r12.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	throw $r8
;block_num 4