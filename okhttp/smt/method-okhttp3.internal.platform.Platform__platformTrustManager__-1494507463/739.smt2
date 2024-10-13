(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var692 0)
(declare-sort var1772 0)
(declare-sort var565 0)
(declare-sort var567 0)
(declare-sort var3283 0)
(declare-sort var668 0)
(declare-sort var1209 0)
(declare-sort var2689 0)
(declare-sort var3493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1772_getDefaultAlgorithm/-1643909248 () String)
(declare-fun var1772_getInstance/1588979297 (String) var1772)
(declare-fun init/-267628775 (var1772 var565) void)
(declare-fun getTrustManagers/-219980981 (var1772) (Array Int var3283))
(declare-fun var668_checkNotNull/185761657 (var1209) void)
(declare-fun cast-from-__Array__Int__var3283__-to-var1209 ((Array Int var3283)) var1209)
(declare-fun getLength-Arr-var3283-1 ((Array Int var3283)) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2689_toString/-575966009 ((Array Int var1209)) String)
(declare-fun cast-from-__Array__Int__var3283__-to-__Array__Int__var1209__ ((Array Int var3283)) (Array Int var1209))
(declare-fun var668_checkNotNullExpressionValue/47304269 (var1209 String) void)
(declare-fun cast-from-String-to-var1209 (String) var1209)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3493-init () var3493)
(declare-fun toString/-522406933 (var1209) String)
(declare-fun <init>/-1092629202 (var3493 String) void)
(declare-const null-var692 var692)
(declare-const null-NullType var567)
(declare-const null-var565 var565)
(declare-const var2104 var692) ; Statement: r12 := @this: okhttp3.internal.platform.Platform 
(assert (not (= var2104 null-var692)))
(define-const var2194 String var1772_getDefaultAlgorithm/-1643909248) ; Statement: $r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>() 
(define-const var2311 var1772 (var1772_getInstance/1588979297 var2194)) ; Statement: r1 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String)>($r0) 
(assert true)
;(assert (init/-267628775 var2311 null-var565)) ; Statement: virtualinvoke r1.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null) 

(declare-const var2311!1 var1772)
(declare-const var1856 var567)
(assert true)
(define-const var449 (Array Int var3283) (getTrustManagers/-219980981 var2311!1)) ; Statement: $r2 = virtualinvoke r1.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>() 
;(assert (var668_checkNotNull/185761657 (cast-from-__Array__Int__var3283__-to-var1209 var449))) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r2) 

(declare-const var449!1 (Array Int var3283))
(define-const var1218 Int (getLength-Arr-var3283-1 var449!1)) ; Statement: $i0 = lengthof $r2 
 ; Statement: if $i0 != 1 goto $z1 = 0 
(assert (not (= var1218 1))) ; Cond: $i0 != 1 
(define-const var3907 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z1 != 0 goto $r3 = $r2[0] 
(assert (not (not (= (ite var3907 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var1886 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1886)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1886!1 String)
(assert (= var1886!1 ""))
(assert true)
(define-const var1771 String (append/672562846 var1886!1 "Unexpected default trust managers: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected default trust managers: ") 
(declare-const var1886!2 String)
(assert (= var1886!2 (str.++ var1886!1 "Unexpected default trust managers: ")))
(define-const var2668 String (var2689_toString/-575966009 (cast-from-__Array__Int__var3283__-to-__Array__Int__var1209__ var449!1))) ; Statement: $r6 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2) 
;(assert (var668_checkNotNullExpressionValue/47304269 (cast-from-String-to-var1209 var2668) "toString(this)")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "toString(this)") 

(declare-const var2668!1 String)
(declare-const var1811 String)
(assert true)
(define-const var2179 String (append/672562846 var1771 var2668!1)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var1771!1 String)
(assert (= var1771!1 (str.++ var1771 var2668!1)))
(assert true)
(define-const var645 String (toString/-2075883882 var2179)) ; Statement: $r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3800 var3493 var3493-init) ; Statement: $r9 = new java.lang.IllegalStateException 
(assert true)
(define-const var2092 String (toString/-522406933 (cast-from-String-to-var1209 var645))) ; Statement: $r10 = virtualinvoke $r13.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3800 var2092)) ; Statement: specialinvoke $r9.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10) 

(declare-const var3800!1 var3493)
(declare-const var2092!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1772_getDefaultAlgorithm/-1643909248=([], java.lang.String), var1772_getInstance/1588979297=([java.lang.String], javax.net.ssl.TrustManagerFactory), init/-267628775=([javax.net.ssl.TrustManagerFactory, java.security.KeyStore], void), getTrustManagers/-219980981=([javax.net.ssl.TrustManagerFactory], javax.net.ssl.TrustManager[]), var668_checkNotNull/185761657=([java.lang.Object], void), cast-from-__Array__Int__var3283__-to-var1209=([javax.net.ssl.TrustManager[]], java.lang.Object), getLength-Arr-var3283-1=([javax.net.ssl.TrustManager[]], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2689_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var3283__-to-__Array__Int__var1209__=([javax.net.ssl.TrustManager[]], java.lang.Object[]), var668_checkNotNullExpressionValue/47304269=([java.lang.Object, java.lang.String], void), cast-from-String-to-var1209=([java.lang.String], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3493-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var692=okhttp3.internal.platform.Platform, var2104=r12, var1772=javax.net.ssl.TrustManagerFactory, var2194=$r0, var2311=r1, var565=java.security.KeyStore, var1856=null, var567=null_type, var3283=javax.net.ssl.TrustManager, var449=$r2, var668=kotlin.jvm.internal.Intrinsics, var1209=java.lang.Object, var1218=$i0, var3907=$z1, var1886=$r5, var1771=$r7, var2689=java.util.Arrays, var2668=$r6, var1811="toString(this)", var2179=$r8, var645=$r13, var3493=java.lang.IllegalStateException, var3800=$r9, var2092=$r10}
; {okhttp3.internal.platform.Platform=var692, r12=var2104, javax.net.ssl.TrustManagerFactory=var1772, $r0=var2194, r1=var2311, java.security.KeyStore=var565, null=var1856, null_type=var567, javax.net.ssl.TrustManager=var3283, $r2=var449, kotlin.jvm.internal.Intrinsics=var668, java.lang.Object=var1209, $i0=var1218, $z1=var3907, $r5=var1886, $r7=var1771, java.util.Arrays=var2689, $r6=var2668, "toString(this)"=var1811, $r8=var2179, $r13=var645, java.lang.IllegalStateException=var3493, $r9=var3800, $r10=var2092}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: okhttp3.internal.platform.Platform;	$r0 = staticinvoke <javax.net.ssl.TrustManagerFactory: java.lang.String getDefaultAlgorithm()>();	r1 = staticinvoke <javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManagerFactory getInstance(java.lang.String)>($r0);	virtualinvoke r1.<javax.net.ssl.TrustManagerFactory: void init(java.security.KeyStore)>(null);	$r2 = virtualinvoke r1.<javax.net.ssl.TrustManagerFactory: javax.net.ssl.TrustManager[] getTrustManagers()>();	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNull(java.lang.Object)>($r2);	$i0 = lengthof $r2;	if $i0 != 1 goto $z1 = 0;	$z1 = 0;	if $z1 != 0 goto $r3 = $r2[0];	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected default trust managers: ");	$r6 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2);	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullExpressionValue(java.lang.Object,java.lang.String)>($r6, "toString(this)");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r13 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = new java.lang.IllegalStateException;	$r10 = virtualinvoke $r13.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r9.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10);	throw $r9
;block_num 4