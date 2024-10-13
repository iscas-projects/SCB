(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2192 0)
(declare-sort var359 0)
(declare-sort var1033 0)
(declare-sort var3920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hasNextProxy/-1936457136 (var2192) Bool)
(declare-fun proxies/-1886840246 (var2192) var359)
(declare-fun nextProxyIndex/-1886840246 (var2192) Int)
(declare-fun var359_get/-1216255739 (var359 Int) var1033)
(declare-fun cast-from-var1033-to-var3920 (var1033) var3920)
(declare-fun resetNextInetSocketAddress/-1642013941 (var2192 var3920) void)
(declare-const null-var2192 var2192)
(declare-const var2609 var2192) ; Statement: r0 := @this: okhttp3.internal.connection.RouteSelector 
(assert (not (= var2609 null-var2192)))
(assert true)
(define-const var605 Bool (hasNextProxy/-1936457136 var2609)) ; Statement: $z0 = specialinvoke r0.<okhttp3.internal.connection.RouteSelector: boolean hasNextProxy()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<okhttp3.internal.connection.RouteSelector: java.util.List proxies> 
(assert (not (= (ite var605 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3187 var359 (proxies/-1886840246 var2609)) ; Statement: $r1 = r0.<okhttp3.internal.connection.RouteSelector: java.util.List proxies> 
(define-const var1785 Int (nextProxyIndex/-1886840246 var2609)) ; Statement: i0 = r0.<okhttp3.internal.connection.RouteSelector: int nextProxyIndex> 
(define-const var3319 Int (+ var1785 1)) ; Statement: $i1 = i0 + 1 
(declare-const var2609!1 var2192)
(assert (not (= var2609!1 null-var2192)))
(assert (= (nextProxyIndex/-1886840246 var2609!1) var3319)) ; Statement: r0.<okhttp3.internal.connection.RouteSelector: int nextProxyIndex> = $i1 
(define-const var125 var1033 (var359_get/-1216255739 var3187 var1785)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(i0) 
(define-const var3159 var3920 (cast-from-var1033-to-var3920 var125)) ; Statement: r3 = (java.net.Proxy) $r2 
(assert true)
;(assert (resetNextInetSocketAddress/-1642013941 var2609!1 var3159)) ; Statement: specialinvoke r0.<okhttp3.internal.connection.RouteSelector: void resetNextInetSocketAddress(java.net.Proxy)>(r3) 

(declare-const var2609!2 var2192)
(declare-const var3159!1 var3920)
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {hasNextProxy/-1936457136=([okhttp3.internal.connection.RouteSelector], boolean), proxies/-1886840246=([okhttp3.internal.connection.RouteSelector], java.util.List), nextProxyIndex/-1886840246=([okhttp3.internal.connection.RouteSelector], int), var359_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1033-to-var3920=([java.lang.Object], java.net.Proxy), resetNextInetSocketAddress/-1642013941=([okhttp3.internal.connection.RouteSelector, java.net.Proxy], void)}
; {var2192=okhttp3.internal.connection.RouteSelector, var2609=r0, var605=$z0, var359=java.util.List, var3187=$r1, var1785=i0, var3319=$i1, var1033=java.lang.Object, var125=$r2, var3920=java.net.Proxy, var3159=r3}
; {okhttp3.internal.connection.RouteSelector=var2192, r0=var2609, $z0=var605, java.util.List=var359, $r1=var3187, i0=var1785, $i1=var3319, java.lang.Object=var1033, $r2=var125, java.net.Proxy=var3920, r3=var3159}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.connection.RouteSelector;	$z0 = specialinvoke r0.<okhttp3.internal.connection.RouteSelector: boolean hasNextProxy()>();	if $z0 != 0 goto $r1 = r0.<okhttp3.internal.connection.RouteSelector: java.util.List proxies>;	$r1 = r0.<okhttp3.internal.connection.RouteSelector: java.util.List proxies>;	i0 = r0.<okhttp3.internal.connection.RouteSelector: int nextProxyIndex>;	$i1 = i0 + 1;	r0.<okhttp3.internal.connection.RouteSelector: int nextProxyIndex> = $i1;	$r2 = interfaceinvoke $r1.<java.util.List: java.lang.Object get(int)>(i0);	r3 = (java.net.Proxy) $r2;	specialinvoke r0.<okhttp3.internal.connection.RouteSelector: void resetNextInetSocketAddress(java.net.Proxy)>(r3);	return r3
;block_num 2