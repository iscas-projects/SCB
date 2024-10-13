(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1935 0)
(declare-sort var1946 0)
(declare-sort var349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var1935) Int)
(declare-fun var1946-init () var1946)
(declare-fun <init>/-516062746 (var1946 var1935) void)
(declare-fun cast-from-var1946-to-var349 (var1946) var349)
(declare-const null-var1935 var1935)
(declare-const var2920 var1935) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var2920 null-var1935)))
(define-const var868 Int (state/970643265 var2920)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 1 goto $z0 = 0 
(assert (not (= var868 1))) ; Cond: $i0 != 1 
(define-const var3520 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2 
(assert (not (= (ite var3520 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2920!1 var1935)
(assert (not (= var2920!1 null-var1935)))
(assert (= (state/970643265 var2920!1) 2)) ; Statement: r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2 
(define-const var3078 var1946 var1946-init) ; Statement: $r1 = new okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink 
(assert true)
;(assert (<init>/-516062746 var3078 var2920!1)) ; Statement: specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0) 

(declare-const var3078!1 var1946)
(declare-const var2920!2 var1935)
(define-const var2596 var349 (cast-from-var1946-to-var349 var3078!1)) ; Statement: $r2 = (okio.Sink) $r1 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), var1946-init=([], okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink), <init>/-516062746=([okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink, okhttp3.internal.http1.Http1ExchangeCodec], void), cast-from-var1946-to-var349=([okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink], okio.Sink)}
; {var1935=okhttp3.internal.http1.Http1ExchangeCodec, var2920=r0, var868=$i0, var3520=$z0, var1946=okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink, var3078=$r1, var349=okio.Sink, var2596=$r2}
; {okhttp3.internal.http1.Http1ExchangeCodec=var1935, r0=var2920, $i0=var868, $z0=var3520, okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink=var1946, $r1=var3078, okio.Sink=var349, $r2=var2596}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 1 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2;	r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2;	$r1 = new okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink;	specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0);	$r2 = (okio.Sink) $r1;	return $r2
;block_num 4