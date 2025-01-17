(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var390 0)
(declare-sort var3701 0)
(declare-sort var1913 0)
(declare-sort var1757 0)
(declare-sort var3446 0)
(declare-sort var2233 0)
(declare-sort var3000 0)
(declare-sort var3998 0)
(declare-sort var2638 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3701_builder/-311177978 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun url/1859683975 (var390) var1913)
(declare-fun charset/-1932151335 (var3446) var1757)
(declare-fun cast-from-var390-to-var3446 (var390) var3446)
(declare-fun setCharset/-484842611 (var1913 var1757) var1913)
(declare-fun append/-1031950772 (String var2233) String)
(declare-fun cast-from-var1913-to-var2233 (var1913) var2233)
(declare-fun headers/-1932151335 (var3446) var3000)
(declare-fun var3000_entrySet/1101202697 (var3000) var3998)
(declare-fun var3998_iterator/1911472585 (var3998) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun createBody/-1329915365 (var390) var2638)
(declare-fun cast-from-var2638-to-var2233 (var2638) var2233)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var390 var390)
(declare-const var2314 var390) ; Statement: r1 := @this: cn.hutool.http.HttpRequest 
(assert (not (= var2314 null-var390)))
(define-const var941 String var3701_builder/-311177978) ; Statement: r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var430 String (append/672562846 var941 "Request Url: ")) ; Statement: $r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request Url: ") 
(declare-const var941!1 String)
(assert (= var941!1 (str.++ var941 "Request Url: ")))
(define-const var1880 var1913 (url/1859683975 var2314)) ; Statement: $r3 = r1.<cn.hutool.http.HttpRequest: cn.hutool.core.net.url.UrlBuilder url> 
(define-const var525 var1757 (charset/-1932151335 (cast-from-var390-to-var3446 var2314))) ; Statement: $r2 = r1.<cn.hutool.http.HttpRequest: java.nio.charset.Charset charset> 
(assert true)
(define-const var2508 var1913 (setCharset/-484842611 var1880 var525)) ; Statement: $r4 = virtualinvoke $r3.<cn.hutool.core.net.url.UrlBuilder: cn.hutool.core.net.url.UrlBuilder setCharset(java.nio.charset.Charset)>($r2) 
(assert true)
(define-const var987 String (append/-1031950772 var430 (cast-from-var1913-to-var2233 var2508))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4) 
(declare-const var430!1 String)
(assert (str.prefixof var430 var430!1))
(assert true)
;(assert (append/672562846 var987 "\r\n")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var987!1 String)
(assert (= var987!1 (str.++ var987 "\r\n")))
(assert true)
(define-const var2325 String (append/672562846 var941!1 "Request Headers: ")) ; Statement: $r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request Headers: ") 
(declare-const var941!2 String)
(assert (= var941!2 (str.++ var941!1 "Request Headers: ")))
(assert true)
;(assert (append/672562846 var2325 "\r\n")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var2325!1 String)
(assert (= var2325!1 (str.++ var2325 "\r\n")))
(define-const var2691 var3000 (headers/-1932151335 (cast-from-var390-to-var3446 var2314))) ; Statement: $r8 = r1.<cn.hutool.http.HttpRequest: java.util.Map headers> 
(define-const var2870 var3998 (var3000_entrySet/1101202697 var2691)) ; Statement: $r9 = interfaceinvoke $r8.<java.util.Map: java.util.Set entrySet()>() 
(define-const var2222 Iterator (var3998_iterator/1911472585 var2870)) ; Statement: r10 = interfaceinvoke $r9.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1113 Bool (Iterator_hasNext/-1669924200 var2222)) ; Statement: $z0 = interfaceinvoke r10.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto $r11 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request Body: ") 
(assert (= (ite var1113 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3593 String (append/672562846 var941!2 "Request Body: ")) ; Statement: $r11 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request Body: ") 
(declare-const var941!3 String)
(assert (= var941!3 (str.++ var941!2 "Request Body: ")))
(assert true)
;(assert (append/672562846 var3593 "\r\n")) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var3593!1 String)
(assert (= var3593!1 (str.++ var3593 "\r\n")))
(assert true)
(define-const var2372 String (append/672562846 var941!3 "    ")) ; Statement: $r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ") 
(declare-const var941!4 String)
(assert (= var941!4 (str.++ var941!3 "    ")))
(assert true)
(define-const var219 var2638 (createBody/-1329915365 var2314)) ; Statement: $r12 = specialinvoke r1.<cn.hutool.http.HttpRequest: cn.hutool.http.body.RequestBody createBody()>() 
(assert true)
(define-const var283 String (append/-1031950772 var2372 (cast-from-var2638-to-var2233 var219))) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12) 
(declare-const var2372!1 String)
(assert (str.prefixof var2372 var2372!1))
(assert true)
;(assert (append/672562846 var283 "\r\n")) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var283!1 String)
(assert (= var283!1 (str.++ var283 "\r\n")))
(assert true)
(define-const var587 String (toString/-2075883882 var941!4)) ; Statement: $r15 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {var3701_builder/-311177978=([], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), url/1859683975=([cn.hutool.http.HttpRequest], cn.hutool.core.net.url.UrlBuilder), charset/-1932151335=([cn.hutool.http.HttpBase], java.nio.charset.Charset), cast-from-var390-to-var3446=([cn.hutool.http.HttpRequest], cn.hutool.http.HttpBase), setCharset/-484842611=([cn.hutool.core.net.url.UrlBuilder, java.nio.charset.Charset], cn.hutool.core.net.url.UrlBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1913-to-var2233=([cn.hutool.core.net.url.UrlBuilder], java.lang.Object), headers/-1932151335=([cn.hutool.http.HttpBase], java.util.Map), var3000_entrySet/1101202697=([java.util.Map], java.util.Set), var3998_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), createBody/-1329915365=([cn.hutool.http.HttpRequest], cn.hutool.http.body.RequestBody), cast-from-var2638-to-var2233=([cn.hutool.http.body.RequestBody], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var390=cn.hutool.http.HttpRequest, var2314=r1, var3701=cn.hutool.core.util.StrUtil, var941=r0, var430=$r5, var1913=cn.hutool.core.net.url.UrlBuilder, var1880=$r3, var1757=java.nio.charset.Charset, var3446=cn.hutool.http.HttpBase, var525=$r2, var2508=$r4, var2233=java.lang.Object, var987=$r6, var2325=$r7, var3000=java.util.Map, var2691=$r8, var3998=java.util.Set, var2870=$r9, var2222=r10, var1113=$z0, var3593=$r11, var2372=$r13, var2638=cn.hutool.http.body.RequestBody, var219=$r12, var283=$r14, var587=$r15}
; {cn.hutool.http.HttpRequest=var390, r1=var2314, cn.hutool.core.util.StrUtil=var3701, r0=var941, $r5=var430, cn.hutool.core.net.url.UrlBuilder=var1913, $r3=var1880, java.nio.charset.Charset=var1757, cn.hutool.http.HttpBase=var3446, $r2=var525, $r4=var2508, java.lang.Object=var2233, $r6=var987, $r7=var2325, java.util.Map=var3000, $r8=var2691, java.util.Set=var3998, $r9=var2870, r10=var2222, $z0=var1113, $r11=var3593, $r13=var2372, cn.hutool.http.body.RequestBody=var2638, $r12=var219, $r14=var283, $r15=var587}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.http.HttpRequest;	r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r5 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request Url: ");	$r3 = r1.<cn.hutool.http.HttpRequest: cn.hutool.core.net.url.UrlBuilder url>;	$r2 = r1.<cn.hutool.http.HttpRequest: java.nio.charset.Charset charset>;	$r4 = virtualinvoke $r3.<cn.hutool.core.net.url.UrlBuilder: cn.hutool.core.net.url.UrlBuilder setCharset(java.nio.charset.Charset)>($r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r4);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r7 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request Headers: ");	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r8 = r1.<cn.hutool.http.HttpRequest: java.util.Map headers>;	$r9 = interfaceinvoke $r8.<java.util.Map: java.util.Set entrySet()>();	r10 = interfaceinvoke $r9.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r10.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto $r11 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request Body: ");	$r11 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request Body: ");	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r13 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("    ");	$r12 = specialinvoke r1.<cn.hutool.http.HttpRequest: cn.hutool.http.body.RequestBody createBody()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r12);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r15 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 3