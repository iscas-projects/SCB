(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3598 0)
(declare-sort var2773 0)
(declare-sort var3017 0)
(declare-sort var1772 0)
(declare-sort var1691 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2773_builder/-311177978 () String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun url/249481190 (var3598) var3017)
(declare-fun append/-1031950772 (String var1772) String)
(declare-fun cast-from-var3017-to-var1772 (var3017) var1772)
(declare-fun getMethod/-1451673483 (var3598) var1691)
(declare-fun cast-from-var1691-to-var1772 (var1691) var1772)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3598 var3598)
(declare-const var490 var3598) ; Statement: r1 := @this: cn.hutool.http.HttpConnection 
(assert (not (= var490 null-var3598)))
(define-const var3162 String var2773_builder/-311177978) ; Statement: r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(assert true)
(define-const var1454 String (append/672562846 var3162 "Request URL: ")) ; Statement: $r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request URL: ") 
(declare-const var3162!1 String)
(assert (= var3162!1 (str.++ var3162 "Request URL: ")))
(define-const var2373 var3017 (url/249481190 var490)) ; Statement: $r2 = r1.<cn.hutool.http.HttpConnection: java.net.URL url> 
(assert true)
(define-const var1603 String (append/-1031950772 var1454 (cast-from-var3017-to-var1772 var2373))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1454!1 String)
(assert (str.prefixof var1454 var1454!1))
(assert true)
;(assert (append/672562846 var1603 "\r\n")) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var1603!1 String)
(assert (= var1603!1 (str.++ var1603 "\r\n")))
(assert true)
(define-const var2315 String (append/672562846 var3162!1 "Request Method: ")) ; Statement: $r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request Method: ") 
(declare-const var3162!2 String)
(assert (= var3162!2 (str.++ var3162!1 "Request Method: ")))
(assert true)
(define-const var1177 var1691 (getMethod/-1451673483 var490)) ; Statement: $r5 = virtualinvoke r1.<cn.hutool.http.HttpConnection: cn.hutool.http.Method getMethod()>() 
(assert true)
(define-const var1247 String (append/-1031950772 var2315 (cast-from-var1691-to-var1772 var1177))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2315!1 String)
(assert (str.prefixof var2315 var2315!1))
(assert true)
;(assert (append/672562846 var1247 "\r\n")) ; Statement: virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n") 
(declare-const var1247!1 String)
(assert (= var1247!1 (str.++ var1247 "\r\n")))
(assert true)
(define-const var945 String (toString/-2075883882 var3162!2)) ; Statement: $r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2773_builder/-311177978=([], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), url/249481190=([cn.hutool.http.HttpConnection], java.net.URL), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3017-to-var1772=([java.net.URL], java.lang.Object), getMethod/-1451673483=([cn.hutool.http.HttpConnection], cn.hutool.http.Method), cast-from-var1691-to-var1772=([cn.hutool.http.Method], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3598=cn.hutool.http.HttpConnection, var490=r1, var2773=cn.hutool.core.util.StrUtil, var3162=r0, var1454=$r3, var3017=java.net.URL, var2373=$r2, var1772=java.lang.Object, var1603=$r4, var2315=$r6, var1691=cn.hutool.http.Method, var1177=$r5, var1247=$r7, var945=$r8}
; {cn.hutool.http.HttpConnection=var3598, r1=var490, cn.hutool.core.util.StrUtil=var2773, r0=var3162, $r3=var1454, java.net.URL=var3017, $r2=var2373, java.lang.Object=var1772, $r4=var1603, $r6=var2315, cn.hutool.http.Method=var1691, $r5=var1177, $r7=var1247, $r8=var945}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.http.HttpConnection;	r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$r3 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request URL: ");	$r2 = r1.<cn.hutool.http.HttpConnection: java.net.URL url>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r6 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Request Method: ");	$r5 = virtualinvoke r1.<cn.hutool.http.HttpConnection: cn.hutool.http.Method getMethod()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\r\n");	$r8 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1