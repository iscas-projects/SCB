(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var914 0)
(declare-sort var2991 0)
(declare-sort var3413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var914) Int)
(declare-fun var2991-init () var2991)
(declare-fun <init>/-751210679 (var2991 var914) void)
(declare-fun cast-from-var2991-to-var3413 (var2991) var3413)
(declare-const null-var914 var914)
(declare-const var2923 var914) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var2923 null-var914)))
(define-const var2035 Int (state/970643265 var2923)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 1 goto $z0 = 0 
(assert (not (not (= var2035 1)))) ; Negate: Cond: $i0 != 1  
(define-const var3426 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2 
(assert (not (= (ite var3426 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2923!1 var914)
(assert (not (= var2923!1 null-var914)))
(assert (= (state/970643265 var2923!1) 2)) ; Statement: r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2 
(define-const var1185 var2991 var2991-init) ; Statement: $r1 = new okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink 
(assert true)
;(assert (<init>/-751210679 var1185 var2923!1)) ; Statement: specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0) 

(declare-const var1185!1 var2991)
(declare-const var2923!2 var914)
(define-const var10 var3413 (cast-from-var2991-to-var3413 var1185!1)) ; Statement: $r2 = (okio.Sink) $r1 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), var2991-init=([], okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink), <init>/-751210679=([okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink, okhttp3.internal.http1.Http1ExchangeCodec], void), cast-from-var2991-to-var3413=([okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink], okio.Sink)}
; {var914=okhttp3.internal.http1.Http1ExchangeCodec, var2923=r0, var2035=$i0, var3426=$z0, var2991=okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink, var1185=$r1, var3413=okio.Sink, var10=$r2}
; {okhttp3.internal.http1.Http1ExchangeCodec=var914, r0=var2923, $i0=var2035, $z0=var3426, okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink=var2991, $r1=var1185, okio.Sink=var3413, $r2=var10}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 1 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2;	r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 2;	$r1 = new okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink;	specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$KnownLengthSink: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0);	$r2 = (okio.Sink) $r1;	return $r2
;block_num 4