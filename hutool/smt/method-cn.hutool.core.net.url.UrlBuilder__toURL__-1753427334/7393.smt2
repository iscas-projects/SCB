(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1189 0)
(declare-sort var3585 0)
(declare-sort var2178 0)
(declare-sort var1613 0)
(declare-sort var942 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getPathStr/-351345445 (var1189) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getQueryStr/575875818 (var1189) String)
(declare-fun var2178_isNotBlank/-658997806 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun fragment/1626767205 (var1189) String)
(declare-fun var1613-init () var1613)
(declare-const null-var1189 var1189)
(declare-const null-var3585 var3585)
(declare-const null-var942 var942)
(declare-const var2769 var1189) ; Statement: r1 := @this: cn.hutool.core.net.url.UrlBuilder 
(assert (not (= var2769 null-var1189)))
(declare-const var3638 var3585) ; Statement: r7 := @parameter0: java.net.URLStreamHandler 
(assert (not (= var3638 null-var3585)))
(define-const var3433 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3433)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3433!1 String)
(assert (= var3433!1 ""))
(assert true)
(define-const var1718 String (getPathStr/-351345445 var2769)) ; Statement: $r2 = virtualinvoke r1.<cn.hutool.core.net.url.UrlBuilder: java.lang.String getPathStr()>() 
(assert true)
;(assert (append/672562846 var3433!1 var1718)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3433!2 String)
(assert (= var3433!2 (str.++ var3433!1 var1718)))
(assert true)
(define-const var2320 String (getQueryStr/575875818 var2769)) ; Statement: r3 = virtualinvoke r1.<cn.hutool.core.net.url.UrlBuilder: java.lang.String getQueryStr()>() 
(define-const var1879 Bool (var2178_isNotBlank/-658997806 (cast-from-String-to-String var2320))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r3) 
 ; Statement: if $z0 == 0 goto $r4 = r1.<cn.hutool.core.net.url.UrlBuilder: java.lang.String fragment> 
(assert (= (ite var1879 1 0) 0)) ; Cond: $z0 == 0 
(define-const var190 String (fragment/1626767205 var2769)) ; Statement: $r4 = r1.<cn.hutool.core.net.url.UrlBuilder: java.lang.String fragment> 
(define-const var459 Bool (var2178_isNotBlank/-658997806 (cast-from-String-to-String var190))) ; Statement: $z1 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>($r4) 
 ; Statement: if $z1 == 0 goto $r5 = new java.net.URL 
(assert (= (ite var459 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3731 var1613 var1613-init) ; Statement: $r5 = new java.net.URL 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1866 var942) ; Statement: $r13 := @caughtexception 
(assert (not (= var1866 null-var942)))
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getPathStr/-351345445=([cn.hutool.core.net.url.UrlBuilder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getQueryStr/575875818=([cn.hutool.core.net.url.UrlBuilder], java.lang.String), var2178_isNotBlank/-658997806=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), fragment/1626767205=([cn.hutool.core.net.url.UrlBuilder], java.lang.String), var1613-init=([], java.net.URL)}
; {var1189=cn.hutool.core.net.url.UrlBuilder, var2769=r1, var3585=java.net.URLStreamHandler, var3638=r7, var3433=$r0, var1718=$r2, var2320=r3, var2178=cn.hutool.core.text.CharSequenceUtil, var1879=$z0, var190=$r4, var459=$z1, var1613=java.net.URL, var3731=$r5, var942=java.net.MalformedURLException, var1866=$r13}
; {cn.hutool.core.net.url.UrlBuilder=var1189, r1=var2769, java.net.URLStreamHandler=var3585, r7=var3638, $r0=var3433, $r2=var1718, r3=var2320, cn.hutool.core.text.CharSequenceUtil=var2178, $z0=var1879, $r4=var190, $z1=var459, java.net.URL=var1613, $r5=var3731, java.net.MalformedURLException=var942, $r13=var1866}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: cn.hutool.core.net.url.UrlBuilder;	r7 := @parameter0: java.net.URLStreamHandler;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<cn.hutool.core.net.url.UrlBuilder: java.lang.String getPathStr()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	r3 = virtualinvoke r1.<cn.hutool.core.net.url.UrlBuilder: java.lang.String getQueryStr()>();	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>(r3);	if $z0 == 0 goto $r4 = r1.<cn.hutool.core.net.url.UrlBuilder: java.lang.String fragment>;	$r4 = r1.<cn.hutool.core.net.url.UrlBuilder: java.lang.String fragment>;	$z1 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isNotBlank(java.lang.CharSequence)>($r4);	if $z1 == 0 goto $r5 = new java.net.URL;	$r5 = new java.net.URL;	$r13 := @caughtexception;	return null
;block_num 4