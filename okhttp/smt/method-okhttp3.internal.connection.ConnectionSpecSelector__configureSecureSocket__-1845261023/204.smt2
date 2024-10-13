(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var993 0)
(declare-sort var2427 0)
(declare-sort var2143 0)
(declare-sort var271 0)
(declare-sort var3790 0)
(declare-sort var1076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2143_checkNotNullParameter/-2060636419 (var271 String) void)
(declare-fun cast-from-var2427-to-var271 (var2427) var271)
(declare-fun nextModeIndex/-74746890 (var993) Int)
(declare-fun connectionSpecs/-74746890 (var993) var1076)
(declare-fun var1076_size/-959786421 (var1076) Int)
(declare-fun isFallbackPossible/-1759053170 (var993 var2427) Bool)
(declare-fun isFallbackPossible/-74746890 (var993) Bool)
(declare-fun isFallback/-74746890 (var993) Bool)
(declare-fun apply$okhttp/-1268114263 (var3790 var2427 Bool) void)
(declare-const null-var993 var993)
(declare-const null-var2427 var2427)
(declare-const null-var3790 var3790)
(declare-const var396 var993) ; Statement: r1 := @this: okhttp3.internal.connection.ConnectionSpecSelector 
(assert (not (= var396 null-var993)))
(declare-const var2064 var2427) ; Statement: r0 := @parameter0: javax.net.ssl.SSLSocket 
(assert (not (= var2064 null-var2427)))
;(assert (var2143_checkNotNullParameter/-2060636419 (cast-from-var2427-to-var271 var2064) "sslSocket")) ; Statement: staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sslSocket") 

(declare-const var2064!1 var2427)
(declare-const var3932 String)
(define-const var1776 var3790 null-var3790) ; Statement: r18 = null 
(define-const var1141 Int (nextModeIndex/-74746890 var396)) ; Statement: i2 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: int nextModeIndex> 
(define-const var838 var1076 (connectionSpecs/-74746890 var396)) ; Statement: $r2 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: java.util.List connectionSpecs> 
(define-const var3348 Int (var1076_size/-959786421 var838)) ; Statement: i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto (branch) 
(assert (>= var1141 var3348)) ; Cond: i2 >= i0 
 ; Statement: if r18 != null goto $z0 = specialinvoke r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallbackPossible(javax.net.ssl.SSLSocket)>(r0) 
(assert (not (= var1776 null-var3790))) ; Cond: r18 != null 
(assert true)
(define-const var2898 Bool (isFallbackPossible/-1759053170 var396 var2064!1)) ; Statement: $z0 = specialinvoke r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallbackPossible(javax.net.ssl.SSLSocket)>(r0) 
(declare-const var396!1 var993)
(assert (not (= var396!1 null-var993)))
(assert (= (isFallbackPossible/-74746890 var396!1) var2898)) ; Statement: r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallbackPossible> = $z0 
(define-const var1069 Bool (isFallback/-74746890 var396!1)) ; Statement: $z1 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallback> 
(assert true)
;(assert (apply$okhttp/-1268114263 var1776 var2064!1 var1069)) ; Statement: virtualinvoke r18.<okhttp3.ConnectionSpec: void apply$okhttp(javax.net.ssl.SSLSocket,boolean)>(r0, $z1) 

(declare-const var1776!1 var3790)
(declare-const var2064!2 var2427)
(declare-const var1069!1 Bool)
 ; Statement: return r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var2143_checkNotNullParameter/-2060636419=([java.lang.Object, java.lang.String], void), cast-from-var2427-to-var271=([javax.net.ssl.SSLSocket], java.lang.Object), nextModeIndex/-74746890=([okhttp3.internal.connection.ConnectionSpecSelector], int), connectionSpecs/-74746890=([okhttp3.internal.connection.ConnectionSpecSelector], java.util.List), var1076_size/-959786421=([java.util.List], int), isFallbackPossible/-1759053170=([okhttp3.internal.connection.ConnectionSpecSelector, javax.net.ssl.SSLSocket], boolean), isFallbackPossible/-74746890=([okhttp3.internal.connection.ConnectionSpecSelector], boolean), isFallback/-74746890=([okhttp3.internal.connection.ConnectionSpecSelector], boolean), apply$okhttp/-1268114263=([okhttp3.ConnectionSpec, javax.net.ssl.SSLSocket, boolean], void)}
; {var993=okhttp3.internal.connection.ConnectionSpecSelector, var396=r1, var2427=javax.net.ssl.SSLSocket, var2064=r0, var2143=kotlin.jvm.internal.Intrinsics, var271=java.lang.Object, var3932="sslSocket", var3790=okhttp3.ConnectionSpec, var1776=r18, var1141=i2, var1076=java.util.List, var838=$r2, var3348=i0, var2898=$z0, var1069=$z1}
; {okhttp3.internal.connection.ConnectionSpecSelector=var993, r1=var396, javax.net.ssl.SSLSocket=var2427, r0=var2064, kotlin.jvm.internal.Intrinsics=var2143, java.lang.Object=var271, "sslSocket"=var3932, okhttp3.ConnectionSpec=var3790, r18=var1776, i2=var1141, java.util.List=var1076, $r2=var838, i0=var3348, $z0=var2898, $z1=var1069}
;seq 
;cnt {}
;stmts r1 := @this: okhttp3.internal.connection.ConnectionSpecSelector;	r0 := @parameter0: javax.net.ssl.SSLSocket;	staticinvoke <kotlin.jvm.internal.Intrinsics: void checkNotNullParameter(java.lang.Object,java.lang.String)>(r0, "sslSocket");	r18 = null;	i2 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: int nextModeIndex>;	$r2 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: java.util.List connectionSpecs>;	i0 = interfaceinvoke $r2.<java.util.List: int size()>();	if i2 >= i0 goto (branch);	if r18 != null goto $z0 = specialinvoke r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallbackPossible(javax.net.ssl.SSLSocket)>(r0);	$z0 = specialinvoke r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallbackPossible(javax.net.ssl.SSLSocket)>(r0);	r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallbackPossible> = $z0;	$z1 = r1.<okhttp3.internal.connection.ConnectionSpecSelector: boolean isFallback>;	virtualinvoke r18.<okhttp3.ConnectionSpec: void apply$okhttp(javax.net.ssl.SSLSocket,boolean)>(r0, $z1);	return r18
;block_num 4