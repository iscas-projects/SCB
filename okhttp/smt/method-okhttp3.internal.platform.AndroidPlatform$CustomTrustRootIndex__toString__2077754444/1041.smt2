(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1967 0)
(declare-sort var2038 0)
(declare-sort var3086 0)
(declare-sort var692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun trustManager/1747976884 (var1967) var2038)
(declare-fun append/-1031950772 (String var3086) String)
(declare-fun cast-from-var2038-to-var3086 (var2038) var3086)
(declare-fun findByIssuerAndSignatureMethod/1747976884 (var1967) var692)
(declare-fun cast-from-var692-to-var3086 (var692) var3086)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1967 var1967)
(declare-const var934 var1967) ; Statement: r1 := @this: okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex 
(assert (not (= var934 null-var1967)))
(define-const var1057 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1057)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1057!1 String)
(assert (= var1057!1 ""))
(assert true)
(define-const var1577 String (append/672562846 var1057!1 "CustomTrustRootIndex(trustManager=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CustomTrustRootIndex(trustManager=") 
(declare-const var1057!2 String)
(assert (= var1057!2 (str.++ var1057!1 "CustomTrustRootIndex(trustManager=")))
(define-const var3258 var2038 (trustManager/1747976884 var934)) ; Statement: $r2 = r1.<okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex: javax.net.ssl.X509TrustManager trustManager> 
(assert true)
(define-const var2179 String (append/-1031950772 var1577 (cast-from-var2038-to-var3086 var3258))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1577!1 String)
(assert (str.prefixof var1577 var1577!1))
(assert true)
(define-const var796 String (append/672562846 var2179 ", findByIssuerAndSignatureMethod=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", findByIssuerAndSignatureMethod=") 
(declare-const var2179!1 String)
(assert (= var2179!1 (str.++ var2179 ", findByIssuerAndSignatureMethod=")))
(define-const var642 var692 (findByIssuerAndSignatureMethod/1747976884 var934)) ; Statement: $r5 = r1.<okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex: java.lang.reflect.Method findByIssuerAndSignatureMethod> 
(assert true)
(define-const var2848 String (append/-1031950772 var796 (cast-from-var692-to-var3086 var642))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var796!1 String)
(assert (str.prefixof var796 var796!1))
(assert true)
(define-const var3947 String (append/-1166366385 var2848 41)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var2848!1 String)
(assert (str.prefixof var2848 var2848!1))
(assert true)
(define-const var1968 String (toString/-2075883882 var3947)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), trustManager/1747976884=([okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex], javax.net.ssl.X509TrustManager), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2038-to-var3086=([javax.net.ssl.X509TrustManager], java.lang.Object), findByIssuerAndSignatureMethod/1747976884=([okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex], java.lang.reflect.Method), cast-from-var692-to-var3086=([java.lang.reflect.Method], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1967=okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex, var934=r1, var1057=$r0, var1577=$r3, var2038=javax.net.ssl.X509TrustManager, var3258=$r2, var3086=java.lang.Object, var2179=$r4, var796=$r6, var692=java.lang.reflect.Method, var642=$r5, var2848=$r7, var3947=$r8, var1968=$r9}
; {okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex=var1967, r1=var934, $r0=var1057, $r3=var1577, javax.net.ssl.X509TrustManager=var2038, $r2=var3258, java.lang.Object=var3086, $r4=var2179, $r6=var796, java.lang.reflect.Method=var692, $r5=var642, $r7=var2848, $r8=var3947, $r9=var1968}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CustomTrustRootIndex(trustManager=");	$r2 = r1.<okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex: javax.net.ssl.X509TrustManager trustManager>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", findByIssuerAndSignatureMethod=");	$r5 = r1.<okhttp3.internal.platform.AndroidPlatform$CustomTrustRootIndex: java.lang.reflect.Method findByIssuerAndSignatureMethod>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1