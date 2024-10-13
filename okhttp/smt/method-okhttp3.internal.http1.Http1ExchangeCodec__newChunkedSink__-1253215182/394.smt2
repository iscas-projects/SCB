(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1377 0)
(declare-sort var1969 0)
(declare-sort var1400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var1377) Int)
(declare-fun var1969-init () var1969)
(declare-fun <init>/-516062746 (var1969 var1377) void)
(declare-fun cast-from-var1969-to-var1400 (var1969) var1400)
(declare-const null-var1377 var1377)
(declare-const var2928 var1377) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var2928 null-var1377)))
(define-const var3281 Int (state/970643265 var2928)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 1 goto $z0 = 0 
(assert (not (not (= var3281 1)))) ; Negate: Cond: $i0 != 1  
(define-const var3811 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2 
(assert (not (= (ite var3811 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2928!1 var1377)
(assert (not (= var2928!1 null-var1377)))
(assert (= (state/970643265 var2928!1) 2)) ; Statement: r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2 
(define-const var2720 var1969 var1969-init) ; Statement: $r1 = new okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink 
(assert true)
;(assert (<init>/-516062746 var2720 var2928!1)) ; Statement: specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0) 

(declare-const var2720!1 var1969)
(declare-const var2928!2 var1377)
(define-const var1118 var1400 (cast-from-var1969-to-var1400 var2720!1)) ; Statement: $r2 = (okio.Sink) $r1 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), var1969-init=([], okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink), <init>/-516062746=([okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink, okhttp3.internal.http1.Http1ExchangeCodec], void), cast-from-var1969-to-var1400=([okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink], okio.Sink)}
; {var1377=okhttp3.internal.http1.Http1ExchangeCodec, var2928=r0, var3281=$i0, var3811=$z0, var1969=okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink, var2720=$r1, var1400=okio.Sink, var1118=$r2}
; {okhttp3.internal.http1.Http1ExchangeCodec=var1377, r0=var2928, $i0=var3281, $z0=var3811, okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink=var1969, $r1=var2720, okio.Sink=var1400, $r2=var1118}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 1 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2;	r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2;	$r1 = new okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink;	specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSink: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0);	$r2 = (okio.Sink) $r1;	return $r2
;block_num 4