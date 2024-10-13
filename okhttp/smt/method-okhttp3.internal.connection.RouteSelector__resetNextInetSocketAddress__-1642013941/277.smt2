(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var600 0)
(declare-sort var2137 0)
(declare-sort var209 0)
(declare-sort var1681 0)
(declare-sort var3367 0)
(declare-sort var1944 0)
(declare-sort var3597 0)
(declare-sort var2494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var209-init () var209)
(declare-fun <init>/-325640736 (var209) void)
(declare-fun cast-from-var209-to-var1681 (var209) var1681)
(declare-fun inetSocketAddresses/-1886840246 (var600) var1681)
(declare-fun type/1546983933 (var2137) var3367)
(declare-fun address/174423122 (var2137) var1944)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3597) ClassObject)
(declare-fun cast-from-var1944-to-var3597 (var1944) var3597)
(declare-fun append/-1031950772 (String var3597) String)
(declare-fun cast-from-ClassObject-to-var3597 (ClassObject) var3597)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2494-init () var2494)
(declare-fun toString/-522406933 (var3597) String)
(declare-fun cast-from-String-to-var3597 (String) var3597)
(declare-fun <init>/875830710 (var2494 String) void)
(declare-const null-var600 var600)
(declare-const null-var2137 var2137)
(declare-const var3367-DIRECT var3367)
(declare-const var3367-SOCKS var3367)
(declare-const var392 var600) ; Statement: r2 := @this: okhttp3.internal.connection.RouteSelector 
(assert (not (= var392 null-var600)))
(declare-const var1674 var2137) ; Statement: r3 := @parameter0: java.net.Proxy 
(assert (not (= var1674 null-var2137)))
(define-const var339 var209 var209-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var339)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var339!1 var209)
(define-const var246 var1681 (cast-from-var209-to-var1681 var339!1)) ; Statement: r1 = (java.util.List) $r0 
(declare-const var392!1 var600)
(assert (not (= var392!1 null-var600)))
(assert (= (inetSocketAddresses/-1886840246 var392!1) var246)) ; Statement: r2.<okhttp3.internal.connection.RouteSelector: java.util.List inetSocketAddresses> = r1 
(assert true)
(define-const var1758 var3367 (type/1546983933 var1674)) ; Statement: $r5 = virtualinvoke r3.<java.net.Proxy: java.net.Proxy$Type type()>() 
(define-const var1221 var3367 var3367-DIRECT) ; Statement: $r4 = <java.net.Proxy$Type: java.net.Proxy$Type DIRECT> 
 ; Statement: if $r5 == $r4 goto $r6 = r2.<okhttp3.internal.connection.RouteSelector: okhttp3.Address address> 
(assert (not (= var1758 var1221))) ; Negate: Cond: $r5 == $r4  
(assert true)
(define-const var53 var3367 (type/1546983933 var1674)) ; Statement: $r42 = virtualinvoke r3.<java.net.Proxy: java.net.Proxy$Type type()>() 
(define-const var3507 var3367 var3367-SOCKS) ; Statement: $r41 = <java.net.Proxy$Type: java.net.Proxy$Type SOCKS> 
 ; Statement: if $r42 != $r41 goto r53 = virtualinvoke r3.<java.net.Proxy: java.net.SocketAddress address()>() 
(assert (not (= var53 var3507))) ; Cond: $r42 != $r41 
(assert true)
(define-const var2404 var1944 (address/174423122 var1674)) ; Statement: r53 = virtualinvoke r3.<java.net.Proxy: java.net.SocketAddress address()>() 
(define-const var2147 Bool false) ; Statement: $z2 = r53 instanceof java.net.InetSocketAddress 
 ; Statement: if $z2 != 0 goto $r43 = <okhttp3.internal.connection.RouteSelector: okhttp3.internal.connection.RouteSelector$Companion Companion> 
(assert (not (not (= (ite var2147 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2596 String String-init) ; Statement: $r46 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2596)) ; Statement: specialinvoke $r46.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2596!1 String)
(assert (= var2596!1 ""))
(assert true)
(define-const var1808 String (append/672562846 var2596!1 "Proxy.address() is not an InetSocketAddress: ")) ; Statement: $r48 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Proxy.address() is not an InetSocketAddress: ") 
(declare-const var2596!2 String)
(assert (= var2596!2 (str.++ var2596!1 "Proxy.address() is not an InetSocketAddress: ")))
(assert true)
(define-const var731 ClassObject (getClass/1258963082 (cast-from-var1944-to-var3597 var2404))) ; Statement: $r47 = virtualinvoke r53.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2686 String (append/-1031950772 var1808 (cast-from-ClassObject-to-var3597 var731))) ; Statement: $r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r47) 
(declare-const var1808!1 String)
(assert (str.prefixof var1808 var1808!1))
(assert true)
(define-const var2474 String (toString/-2075883882 var2686)) ; Statement: $r54 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2699 var2494 var2494-init) ; Statement: $r50 = new java.lang.IllegalArgumentException 
(assert true)
(define-const var1353 String (toString/-522406933 (cast-from-String-to-var3597 var2474))) ; Statement: $r51 = virtualinvoke $r54.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2699 var1353)) ; Statement: specialinvoke $r50.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r51) 

(declare-const var2699!1 var2494)
(declare-const var1353!1 String)
 ; Statement: throw $r50 
(check-sat)
(get-model)
(get-unsat-core)
; {var209-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), cast-from-var209-to-var1681=([java.util.ArrayList], java.util.List), inetSocketAddresses/-1886840246=([okhttp3.internal.connection.RouteSelector], java.util.List), type/1546983933=([java.net.Proxy], java.net.Proxy$Type), address/174423122=([java.net.Proxy], java.net.SocketAddress), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1944-to-var3597=([java.net.SocketAddress], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3597=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2494-init=([], java.lang.IllegalArgumentException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3597=([java.lang.String], java.lang.Object), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var600=okhttp3.internal.connection.RouteSelector, var392=r2, var2137=java.net.Proxy, var1674=r3, var209=java.util.ArrayList, var339=$r0, var1681=java.util.List, var246=r1, var3367=java.net.Proxy$Type, var1758=$r5, var1221=$r4, var53=$r42, var3507=$r41, var1944=java.net.SocketAddress, var2404=r53, var2147=$z2, var2596=$r46, var1808=$r48, var3597=java.lang.Object, var731=$r47, var2686=$r49, var2474=$r54, var2494=java.lang.IllegalArgumentException, var2699=$r50, var1353=$r51}
; {okhttp3.internal.connection.RouteSelector=var600, r2=var392, java.net.Proxy=var2137, r3=var1674, java.util.ArrayList=var209, $r0=var339, java.util.List=var1681, r1=var246, java.net.Proxy$Type=var3367, $r5=var1758, $r4=var1221, $r42=var53, $r41=var3507, java.net.SocketAddress=var1944, r53=var2404, $z2=var2147, $r46=var2596, $r48=var1808, java.lang.Object=var3597, $r47=var731, $r49=var2686, $r54=var2474, java.lang.IllegalArgumentException=var2494, $r50=var2699, $r51=var1353}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: okhttp3.internal.connection.RouteSelector;	r3 := @parameter0: java.net.Proxy;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	r1 = (java.util.List) $r0;	r2.<okhttp3.internal.connection.RouteSelector: java.util.List inetSocketAddresses> = r1;	$r5 = virtualinvoke r3.<java.net.Proxy: java.net.Proxy$Type type()>();	$r4 = <java.net.Proxy$Type: java.net.Proxy$Type DIRECT>;	if $r5 == $r4 goto $r6 = r2.<okhttp3.internal.connection.RouteSelector: okhttp3.Address address>;	$r42 = virtualinvoke r3.<java.net.Proxy: java.net.Proxy$Type type()>();	$r41 = <java.net.Proxy$Type: java.net.Proxy$Type SOCKS>;	if $r42 != $r41 goto r53 = virtualinvoke r3.<java.net.Proxy: java.net.SocketAddress address()>();	r53 = virtualinvoke r3.<java.net.Proxy: java.net.SocketAddress address()>();	$z2 = r53 instanceof java.net.InetSocketAddress;	if $z2 != 0 goto $r43 = <okhttp3.internal.connection.RouteSelector: okhttp3.internal.connection.RouteSelector$Companion Companion>;	$r46 = new java.lang.StringBuilder;	specialinvoke $r46.<java.lang.StringBuilder: void <init>()>();	$r48 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Proxy.address() is not an InetSocketAddress: ");	$r47 = virtualinvoke r53.<java.lang.Object: java.lang.Class getClass()>();	$r49 = virtualinvoke $r48.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r47);	$r54 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.String toString()>();	$r50 = new java.lang.IllegalArgumentException;	$r51 = virtualinvoke $r54.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r50.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r51);	throw $r50
;block_num 4