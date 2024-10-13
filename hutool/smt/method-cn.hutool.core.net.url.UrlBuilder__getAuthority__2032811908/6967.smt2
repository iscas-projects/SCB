(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun port/1626767205 (var823) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun host/1626767205 (var823) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var823 var823)
(declare-const var715 var823) ; Statement: r0 := @this: cn.hutool.core.net.url.UrlBuilder 
(assert (not (= var715 null-var823)))
(define-const var1268 Int (port/1626767205 var715)) ; Statement: $i0 = r0.<cn.hutool.core.net.url.UrlBuilder: int port> 
 ; Statement: if $i0 >= 0 goto $r1 = new java.lang.StringBuilder 
(assert (>= var1268 0)) ; Cond: $i0 >= 0 
(define-const var2217 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2217)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2217!1 String)
(assert (= var2217!1 ""))
(define-const var3964 String (host/1626767205 var715)) ; Statement: $r2 = r0.<cn.hutool.core.net.url.UrlBuilder: java.lang.String host> 
(assert true)
(define-const var1798 String (append/672562846 var2217!1 var3964)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2217!2 String)
(assert (= var2217!2 (str.++ var2217!1 var3964)))
(assert true)
(define-const var233 String (append/672562846 var1798 ":")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var1798!1 String)
(assert (= var1798!1 (str.++ var1798 ":")))
(define-const var738 Int (port/1626767205 var715)) ; Statement: $i1 = r0.<cn.hutool.core.net.url.UrlBuilder: int port> 
(assert true)
(define-const var1860 String (append/-1001720160 var233 var738)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var233!1 String)
(assert (str.prefixof var233 var233!1))
(assert true)
(define-const var910 String (toString/-2075883882 var1860)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {port/1626767205=([cn.hutool.core.net.url.UrlBuilder], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), host/1626767205=([cn.hutool.core.net.url.UrlBuilder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var823=cn.hutool.core.net.url.UrlBuilder, var715=r0, var1268=$i0, var2217=$r1, var3964=$r2, var1798=$r3, var233=$r4, var738=$i1, var1860=$r5, var910=$r6}
; {cn.hutool.core.net.url.UrlBuilder=var823, r0=var715, $i0=var1268, $r1=var2217, $r2=var3964, $r3=var1798, $r4=var233, $i1=var738, $r5=var1860, $r6=var910}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.net.url.UrlBuilder;	$i0 = r0.<cn.hutool.core.net.url.UrlBuilder: int port>;	if $i0 >= 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = r0.<cn.hutool.core.net.url.UrlBuilder: java.lang.String host>;	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$i1 = r0.<cn.hutool.core.net.url.UrlBuilder: int port>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3