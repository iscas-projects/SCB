(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2540 0)
(declare-sort var2197 0)
(declare-sort var2999 0)
(declare-sort var3363 0)
(declare-sort var1551 0)
(declare-sort var3732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasNextProxy/-1936457136 (var2540) Bool)
(declare-fun var2197-init () var2197)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun address/-1886840246 (var2540) var2999)
(declare-fun url/-535442747 (var2999) var3363)
(declare-fun host/1711863148 (var3363) String)
(declare-fun proxies/-1886840246 (var2540) var1551)
(declare-fun append/-1031950772 (String var3732) String)
(declare-fun cast-from-var1551-to-var3732 (var1551) var3732)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1564088315 (var2197 String) void)
(declare-const null-var2540 var2540)
(declare-const var2973 var2540) ; Statement: r0 := @this: okhttp3.internal.connection.RouteSelector 
(assert (not (= var2973 null-var2540)))
(assert true)
(define-const var2168 Bool (hasNextProxy/-1936457136 var2973)) ; Statement: $z0 = specialinvoke r0.<okhttp3.internal.connection.RouteSelector: boolean hasNextProxy()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<okhttp3.internal.connection.RouteSelector: java.util.List proxies> 
(assert (not (not (= (ite var2168 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3332 var2197 var2197-init) ; Statement: $r4 = new java.net.SocketException 
(define-const var335 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var335)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var335!1 String)
(assert (= var335!1 ""))
(assert true)
(define-const var1325 String (append/672562846 var335!1 "No route to ")) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No route to ") 
(declare-const var335!2 String)
(assert (= var335!2 (str.++ var335!1 "No route to ")))
(define-const var3119 var2999 (address/-1886840246 var2973)) ; Statement: $r6 = r0.<okhttp3.internal.connection.RouteSelector: okhttp3.Address address> 
(assert true)
(define-const var1988 var3363 (url/-535442747 var3119)) ; Statement: $r7 = virtualinvoke $r6.<okhttp3.Address: okhttp3.HttpUrl url()>() 
(assert true)
(define-const var291 String (host/1711863148 var1988)) ; Statement: $r8 = virtualinvoke $r7.<okhttp3.HttpUrl: java.lang.String host()>() 
(assert true)
(define-const var3464 String (append/672562846 var1325 var291)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1325!1 String)
(assert (= var1325!1 (str.++ var1325 var291)))
(assert true)
(define-const var1783 String (append/672562846 var3464 "; exhausted proxy configurations: ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; exhausted proxy configurations: ") 
(declare-const var3464!1 String)
(assert (= var3464!1 (str.++ var3464 "; exhausted proxy configurations: ")))
(define-const var1188 var1551 (proxies/-1886840246 var2973)) ; Statement: $r11 = r0.<okhttp3.internal.connection.RouteSelector: java.util.List proxies> 
(assert true)
(define-const var2414 String (append/-1031950772 var1783 (cast-from-var1551-to-var3732 var1188))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var1783!1 String)
(assert (str.prefixof var1783 var1783!1))
(assert true)
(define-const var973 String (toString/-2075883882 var2414)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1564088315 var3332 var973)) ; Statement: specialinvoke $r4.<java.net.SocketException: void <init>(java.lang.String)>($r14) 

(declare-const var3332!1 var2197)
(declare-const var973!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {hasNextProxy/-1936457136=([okhttp3.internal.connection.RouteSelector], boolean), var2197-init=([], java.net.SocketException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), address/-1886840246=([okhttp3.internal.connection.RouteSelector], okhttp3.Address), url/-535442747=([okhttp3.Address], okhttp3.HttpUrl), host/1711863148=([okhttp3.HttpUrl], java.lang.String), proxies/-1886840246=([okhttp3.internal.connection.RouteSelector], java.util.List), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1551-to-var3732=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1564088315=([java.net.SocketException, java.lang.String], void)}
; {var2540=okhttp3.internal.connection.RouteSelector, var2973=r0, var2168=$z0, var2197=java.net.SocketException, var3332=$r4, var335=$r5, var1325=$r9, var2999=okhttp3.Address, var3119=$r6, var3363=okhttp3.HttpUrl, var1988=$r7, var291=$r8, var3464=$r10, var1783=$r12, var1551=java.util.List, var1188=$r11, var3732=java.lang.Object, var2414=$r13, var973=$r14}
; {okhttp3.internal.connection.RouteSelector=var2540, r0=var2973, $z0=var2168, java.net.SocketException=var2197, $r4=var3332, $r5=var335, $r9=var1325, okhttp3.Address=var2999, $r6=var3119, okhttp3.HttpUrl=var3363, $r7=var1988, $r8=var291, $r10=var3464, $r12=var1783, java.util.List=var1551, $r11=var1188, java.lang.Object=var3732, $r13=var2414, $r14=var973}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.connection.RouteSelector;	$z0 = specialinvoke r0.<okhttp3.internal.connection.RouteSelector: boolean hasNextProxy()>();	if $z0 != 0 goto $r1 = r0.<okhttp3.internal.connection.RouteSelector: java.util.List proxies>;	$r4 = new java.net.SocketException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No route to ");	$r6 = r0.<okhttp3.internal.connection.RouteSelector: okhttp3.Address address>;	$r7 = virtualinvoke $r6.<okhttp3.Address: okhttp3.HttpUrl url()>();	$r8 = virtualinvoke $r7.<okhttp3.HttpUrl: java.lang.String host()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; exhausted proxy configurations: ");	$r11 = r0.<okhttp3.internal.connection.RouteSelector: java.util.List proxies>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.net.SocketException: void <init>(java.lang.String)>($r14);	throw $r4
;block_num 2