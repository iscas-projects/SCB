(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2339 0)
(declare-sort var3475 0)
(declare-sort var2397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var2339) Int)
(declare-fun var3475-init () var3475)
(declare-fun <init>/-751210679 (var3475 var2339) void)
(declare-fun cast-from-var3475-to-var2397 (var3475) var2397)
(declare-const null-var2339 var2339)
(declare-const var2011 var2339) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var2011 null-var2339)))
(define-const var1308 Int (state/970643265 var2011)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 1 goto $z0 = 0 
(assert (not (= var1308 1))) ; Cond: $i0 != 1 
(define-const var62 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2 
(assert (not (= (ite var62 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2011!1 var2339)
(assert (not (= var2011!1 null-var2339)))
(assert (= (state/970643265 var2011!1) 2)) ; Statement: r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2 
(define-const var565 var3475 var3475-init) ; Statement: $r1 = new okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink 
(assert true)
;(assert (<init>/-751210679 var565 var2011!1)) ; Statement: specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0) 

(declare-const var565!1 var3475)
(declare-const var2011!2 var2339)
(define-const var2262 var2397 (cast-from-var3475-to-var2397 var565!1)) ; Statement: $r2 = (okio.Sink) $r1 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), var3475-init=([], okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink), <init>/-751210679=([okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink, okhttp3.internal.http1.Http1ExchangeCodec], void), cast-from-var3475-to-var2397=([okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink], okio.Sink)}
; {var2339=okhttp3.internal.http1.Http1ExchangeCodec, var2011=r0, var1308=$i0, var62=$z0, var3475=okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink, var565=$r1, var2397=okio.Sink, var2262=$r2}
; {okhttp3.internal.http1.Http1ExchangeCodec=var2339, r0=var2011, $i0=var1308, $z0=var62, okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink=var3475, $r1=var565, okio.Sink=var2397, $r2=var2262}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 1 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2;	r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2;	$r1 = new okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink;	specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0);	$r2 = (okio.Sink) $r1;	return $r2
;block_num 4