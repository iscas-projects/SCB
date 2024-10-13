(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var771 0)
(declare-sort var3756 0)
(declare-sort var484 0)
(declare-sort var215 0)
(declare-sort var3578 0)
(declare-sort var1526 0)
(declare-sort var291 0)
(declare-sort var1133 0)
(declare-sort var1108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3756_getDefaultAlgorithm/-1643909248 () String)
(declare-fun var3756_getInstance/1588979297 (String) var3756)
(declare-fun init/-267628775 (var3756 var484) void)
(declare-fun getTrustManagers/-219980981 (var3756) (Array Int var3578))
(declare-fun var1526_checkNotNull/185761657 (var291) void)
(declare-fun cast-from-__Array__Int__var3578__-to-var291 ((Array Int var3578)) var291)
(declare-fun getLength-Arr-var3578-1 ((Array Int var3578)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1133_toString/-575966009 ((Array Int var291)) String)
(declare-fun cast-from-__Array__Int__var3578__-to-__Array__Int__var291__ ((Array Int var3578)) (Array Int var291))
(declare-fun var1526_checkNotNullExpressionValue/47304269 (var291 String) void)
(declare-fun cast-from-String-to-var291 (String) var291)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1108-init () var1108)
(declare-fun toString/-522406933 (var291) String)
(declare-fun <init>/-1092629202 (var1108 String) void)
(declare-const null-var771 var771)
(declare-const null-NullType var215)
(declare-const null-var484 var484)
(declare-const var3113 var771) ; Statement: r13 := @this: okhttp3.internal.platform.ConscryptPlatform 
(assert (not (= var3113 null-var771)))
(define-const var2806 String var3756_getDefaultAlgorithm/-1643909248) ; Statement: $r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>() 
(define-const var324 var3756 (var3756_getInstance/1588979297 var2806)) ; Statement: r14 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String)>($r0) 
(assert true)
;(assert (init/-267628775 var324 null-var484)) ; Statement: virtualinvoke r14.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null) 

(declare-const var324!1 var3756)
(declare-const var1069 var215)
(assert true)
(define-const var2428 (Array Int var3578) (getTrustManagers/-219980981 var324!1)) ; Statement: $r1 = virtualinvoke r14.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>() 
;(assert (var1526_checkNotNull/185761657 (cast-from-__Array__Int__var3578__-to-var291 var2428))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1) 

(declare-const var2428!1 (Array Int var3578))
(define-const var1224 Int (getLength-Arr-var3578-1 var2428!1)) ; Statement: $i0 = lengthof $r1 
 ; Statement: if $i0 != 1 goto $z1 = 0 
(assert (not (= var1224 1))) ; Cond: $i0 != 1 
(define-const var2226 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r2 = $r1[0] 
(assert (not (not (= (ite var2226 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1895 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1895)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1895!1 String)
(assert (= var1895!1 ""))
(assert true)
(define-const var2253 String (append/672562846 var1895!1 "Unexpected default trust managers: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected default trust managers: ") 
(declare-const var1895!2 String)
(assert (= var1895!2 (str.++ var1895!1 "Unexpected default trust managers: ")))
(define-const var2791 String (var1133_toString/-575966009 (cast-from-__Array__Int__var3578__-to-__Array__Int__var291__ var2428!1))) ; Statement: $r7 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r1) 
;(assert (var1526_checkNotNullExpressionValue/47304269 (cast-from-String-to-var291 var2791) "toString(this)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "toString(this)") 

(declare-const var2791!1 String)
(declare-const var590 String)
(assert true)
(define-const var332 String (append/672562846 var2253 var2791!1)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2253!1 String)
(assert (= var2253!1 (str.++ var2253 var2791!1)))
(assert true)
(define-const var3977 String (toString/-2075883882 var332)) ; Statement: $r15 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3741 var1108 var1108-init) ; Statement: $r10 = new java.lang.IllegalStateException 
(assert true)
(define-const var1525 String (toString/-522406933 (cast-from-String-to-var291 var3977))) ; Statement: $r11 = virtualinvoke $r15.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3741 var1525)) ; Statement: specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11) 

(declare-const var3741!1 var1108)
(declare-const var1525!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var3756_getDefaultAlgorithm/-1643909248=([], java.lang.String), var3756_getInstance/1588979297=([java.lang.String], javax.net.ssl.TrustManagerFactory), init/-267628775=([javax.net.ssl.TrustManagerFactory, java.security.KeyStore], void), getTrustManagers/-219980981=([javax.net.ssl.TrustManagerFactory], javax.net.ssl.TrustManager[]), var1526_checkNotNull/185761657=([java.lang.Object], void), cast-from-__Array__Int__var3578__-to-var291=([javax.net.ssl.TrustManager[]], java.lang.Object), getLength-Arr-var3578-1=([javax.net.ssl.TrustManager[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1133_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var3578__-to-__Array__Int__var291__=([javax.net.ssl.TrustManager[]], java.lang.Object[]), var1526_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var291=([java.lang.String], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1108-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var771=okhttp3.internal.platform.ConscryptPlatform, var3113=r13, var3756=javax.net.ssl.TrustManagerFactory, var2806=$r0, var324=r14, var484=java.security.KeyStore, var1069=null, var215=null_type, var3578=javax.net.ssl.TrustManager, var2428=$r1, var1526=kotlin.jvm.internal.Intrinsics, var291=java.lang.Object, var1224=$i0, var2226=$z1, var1895=$r6, var2253=$r8, var1133=java.util.Arrays, var2791=$r7, var590="toString(this)", var332=$r9, var3977=$r15, var1108=java.lang.IllegalStateException, var3741=$r10, var1525=$r11}
; {okhttp3.internal.platform.ConscryptPlatform=var771, r13=var3113, javax.net.ssl.TrustManagerFactory=var3756, $r0=var2806, r14=var324, java.security.KeyStore=var484, null=var1069, null_type=var215, javax.net.ssl.TrustManager=var3578, $r1=var2428, kotlin.jvm.internal.Intrinsics=var1526, java.lang.Object=var291, $i0=var1224, $z1=var2226, $r6=var1895, $r8=var2253, java.util.Arrays=var1133, $r7=var2791, "toString(this)"=var590, $r9=var332, $r15=var3977, java.lang.IllegalStateException=var1108, $r10=var3741, $r11=var1525}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r13 := @this: okhttp3.internal.platform.ConscryptPlatform;	$r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>();	r14 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String)>($r0);	virtualinvoke r14.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null);	$r1 = virtualinvoke r14.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r1);	$i0 = lengthof $r1;	if $i0 != 1 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r2 = $r1[0];	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected default trust managers: ");	$r7 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r1);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r7, "toString(this)");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r15 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = new java.lang.IllegalStateException;	$r11 = virtualinvoke $r15.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r10.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r11);	throw $r10
;block_num 4