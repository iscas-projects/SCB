(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3897 0)
(declare-sort var174 0)
(declare-sort var3548 0)
(declare-sort var3331 0)
(declare-sort var3394 0)
(declare-sort var2496 0)
(declare-sort var1662 0)
(declare-sort var3073 0)
(declare-sort var1222 0)
(declare-sort var914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var174_getDefaultAlgorithm/-1643909248 () String)
(declare-fun provider/-924504959 (var3897) var3548)
(declare-fun var174_getInstance/92758568 (String var3548) var174)
(declare-fun init/-267628775 (var174 var3331) void)
(declare-fun getTrustManagers/-219980981 (var174) (Array Int var2496))
(declare-fun var1662_checkNotNull/185761657 (var3073) void)
(declare-fun cast-from-__Array__Int__var2496__-to-var3073 ((Array Int var2496)) var3073)
(declare-fun getLength-Arr-var2496-1 ((Array Int var2496)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1222_toString/-575966009 ((Array Int var3073)) String)
(declare-fun cast-from-__Array__Int__var2496__-to-__Array__Int__var3073__ ((Array Int var2496)) (Array Int var3073))
(declare-fun var1662_checkNotNullExpressionValue/47304269 (var3073 String) void)
(declare-fun cast-from-String-to-var3073 (String) var3073)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var914-init () var914)
(declare-fun toString/-522406933 (var3073) String)
(declare-fun <init>/-1092629202 (var914 String) void)
(declare-const null-var3897 var3897)
(declare-const null-NullType var3394)
(declare-const null-var3331 var3331)
(declare-const var2063 var3897) ; Statement: r0 := @this: okhttp3.internal.platform.OpenJSSEPlatform 
(assert (not (= var2063 null-var3897)))
(define-const var1748 String var174_getDefaultAlgorithm/-1643909248) ; Statement: $r2 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>() 
(define-const var1345 var3548 (provider/-924504959 var2063)) ; Statement: $r1 = r0.<okhttp3.internal.platform.OpenJSSEPlatform: java.security.Provider provider> 
(define-const var2665 var174 (var174_getInstance/92758568 var1748 var1345)) ; Statement: r3 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String,java.security.Provider)>($r2, $r1) 
(assert true)
;(assert (init/-267628775 var2665 null-var3331)) ; Statement: virtualinvoke r3.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null) 

(declare-const var2665!1 var174)
(declare-const var3967 var3394)
(assert true)
(define-const var1386 (Array Int var2496) (getTrustManagers/-219980981 var2665!1)) ; Statement: $r4 = virtualinvoke r3.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>() 
;(assert (var1662_checkNotNull/185761657 (cast-from-__Array__Int__var2496__-to-var3073 var1386))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r4) 

(declare-const var1386!1 (Array Int var2496))
(define-const var1284 Int (getLength-Arr-var2496-1 var1386!1)) ; Statement: $i0 = lengthof $r4 
 ; Statement: if $i0 != 1 goto $z1 = 0 
(assert (not (= var1284 1))) ; Cond: $i0 != 1 
(define-const var1636 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r5 = $r4[0] 
(assert (not (not (= (ite var1636 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var3527 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3527)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3527!1 String)
(assert (= var3527!1 ""))
(assert true)
(define-const var2091 String (append/672562846 var3527!1 "Unexpected default trust managers: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected default trust managers: ") 
(declare-const var3527!2 String)
(assert (= var3527!2 (str.++ var3527!1 "Unexpected default trust managers: ")))
(define-const var3470 String (var1222_toString/-575966009 (cast-from-__Array__Int__var2496__-to-__Array__Int__var3073__ var1386!1))) ; Statement: $r8 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r4) 
;(assert (var1662_checkNotNullExpressionValue/47304269 (cast-from-String-to-var3073 var3470) "toString(this)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r8, "toString(this)") 

(declare-const var3470!1 String)
(declare-const var1811 String)
(assert true)
(define-const var3315 String (append/672562846 var2091 var3470!1)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2091!1 String)
(assert (= var2091!1 (str.++ var2091 var3470!1)))
(assert true)
(define-const var729 String (toString/-2075883882 var3315)) ; Statement: $r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2950 var914 var914-init) ; Statement: $r11 = new java.lang.IllegalStateException 
(assert true)
(define-const var2348 String (toString/-522406933 (cast-from-String-to-var3073 var729))) ; Statement: $r12 = virtualinvoke $r14.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2950 var2348)) ; Statement: specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12) 

(declare-const var2950!1 var914)
(declare-const var2348!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var174_getDefaultAlgorithm/-1643909248=([], java.lang.String), provider/-924504959=([okhttp3.internal.platform.OpenJSSEPlatform], java.security.Provider), var174_getInstance/92758568=([java.lang.String, java.security.Provider], javax.net.ssl.TrustManagerFactory), init/-267628775=([javax.net.ssl.TrustManagerFactory, java.security.KeyStore], void), getTrustManagers/-219980981=([javax.net.ssl.TrustManagerFactory], javax.net.ssl.TrustManager[]), var1662_checkNotNull/185761657=([java.lang.Object], void), cast-from-__Array__Int__var2496__-to-var3073=([javax.net.ssl.TrustManager[]], java.lang.Object), getLength-Arr-var2496-1=([javax.net.ssl.TrustManager[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1222_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var2496__-to-__Array__Int__var3073__=([javax.net.ssl.TrustManager[]], java.lang.Object[]), var1662_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var3073=([java.lang.String], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var914-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3897=okhttp3.internal.platform.OpenJSSEPlatform, var2063=r0, var174=javax.net.ssl.TrustManagerFactory, var1748=$r2, var3548=java.security.Provider, var1345=$r1, var2665=r3, var3331=java.security.KeyStore, var3967=null, var3394=null_type, var2496=javax.net.ssl.TrustManager, var1386=$r4, var1662=kotlin.jvm.internal.Intrinsics, var3073=java.lang.Object, var1284=$i0, var1636=$z1, var3527=$r7, var2091=$r9, var1222=java.util.Arrays, var3470=$r8, var1811="toString(this)", var3315=$r10, var729=$r14, var914=java.lang.IllegalStateException, var2950=$r11, var2348=$r12}
; {okhttp3.internal.platform.OpenJSSEPlatform=var3897, r0=var2063, javax.net.ssl.TrustManagerFactory=var174, $r2=var1748, java.security.Provider=var3548, $r1=var1345, r3=var2665, java.security.KeyStore=var3331, null=var3967, null_type=var3394, javax.net.ssl.TrustManager=var2496, $r4=var1386, kotlin.jvm.internal.Intrinsics=var1662, java.lang.Object=var3073, $i0=var1284, $z1=var1636, $r7=var3527, $r9=var2091, java.util.Arrays=var1222, $r8=var3470, "toString(this)"=var1811, $r10=var3315, $r14=var729, java.lang.IllegalStateException=var914, $r11=var2950, $r12=var2348}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.platform.OpenJSSEPlatform;	$r2 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>();	$r1 = r0.<okhttp3.internal.platform.OpenJSSEPlatform: java.security.Provider provider>;	r3 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String,java.security.Provider)>($r2, $r1);	virtualinvoke r3.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null);	$r4 = virtualinvoke r3.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r4);	$i0 = lengthof $r4;	if $i0 != 1 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r5 = $r4[0];	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected default trust managers: ");	$r8 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r4);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r8, "toString(this)");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r14 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = new java.lang.IllegalStateException;	$r12 = virtualinvoke $r14.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r11.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r12);	throw $r11
;block_num 4