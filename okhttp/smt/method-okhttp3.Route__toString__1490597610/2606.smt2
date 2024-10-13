(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3798 0)
(declare-sort var1218 0)
(declare-sort var811 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun socketAddress/1322925002 (var3798) var1218)
(declare-fun append/-1031950772 (String var811) String)
(declare-fun cast-from-var1218-to-var811 (var1218) var811)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3798 var3798)
(declare-const var370 var3798) ; Statement: r1 := @this: okhttp3.Route 
(assert (not (= var370 null-var3798)))
(define-const var2593 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2593)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2593!1 String)
(assert (= var2593!1 ""))
(assert true)
(define-const var783 String (append/672562846 var2593!1 "Route{")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Route{") 
(declare-const var2593!2 String)
(assert (= var2593!2 (str.++ var2593!1 "Route{")))
(define-const var279 var1218 (socketAddress/1322925002 var370)) ; Statement: $r2 = r1.<okhttp3.Route: java.net.InetSocketAddress socketAddress> 
(assert true)
(define-const var291 String (append/-1031950772 var783 (cast-from-var1218-to-var811 var279))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var783!1 String)
(assert (str.prefixof var783 var783!1))
(assert true)
(define-const var2672 String (append/-1166366385 var291 125)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var291!1 String)
(assert (str.prefixof var291 var291!1))
(assert true)
(define-const var215 String (toString/-2075883882 var2672)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), socketAddress/1322925002=([okhttp3.Route], java.net.InetSocketAddress), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1218-to-var811=([java.net.InetSocketAddress], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3798=okhttp3.Route, var370=r1, var2593=$r0, var783=$r3, var1218=java.net.InetSocketAddress, var279=$r2, var811=java.lang.Object, var291=$r4, var2672=$r5, var215=$r6}
; {okhttp3.Route=var3798, r1=var370, $r0=var2593, $r3=var783, java.net.InetSocketAddress=var1218, $r2=var279, java.lang.Object=var811, $r4=var291, $r5=var2672, $r6=var215}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.Route;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Route{");	$r2 = r1.<okhttp3.Route: java.net.InetSocketAddress socketAddress>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1