(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3315 0)
(declare-sort var806 0)
(declare-sort var2980 0)
(declare-sort var1094 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var3315) Int)
(declare-fun var2980-init () var2980)
(declare-fun <init>/-86008070 (var2980 var3315 var806) void)
(declare-fun cast-from-var2980-to-var1094 (var2980) var1094)
(declare-const null-var3315 var3315)
(declare-const null-var806 var806)
(declare-const var3956 var3315) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var3956 null-var3315)))
(declare-const var1637 var806) ; Statement: r2 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var1637 null-var806)))
(define-const var1504 Int (state/970643265 var3956)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 4 goto $z0 = 0 
(assert (not (not (= var1504 4)))) ; Negate: Cond: $i0 != 4  
(define-const var2694 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert (not (= (ite var2694 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var3956!1 var3315)
(assert (not (= var3956!1 null-var3315)))
(assert (= (state/970643265 var3956!1) 5)) ; Statement: r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(define-const var3546 var2980 var2980-init) ; Statement: $r1 = new okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource 
(assert true)
;(assert (<init>/-86008070 var3546 var3956!1 var1637)) ; Statement: specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec,okhttp3.HttpUrl)>(r0, r2) 

(declare-const var3546!1 var2980)
(declare-const var3956!2 var3315)
(declare-const var1637!1 var806)
(define-const var1276 var1094 (cast-from-var2980-to-var1094 var3546!1)) ; Statement: $r3 = (okio.Source) $r1 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), var2980-init=([], okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource), <init>/-86008070=([okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource, okhttp3.internal.http1.Http1ExchangeCodec, okhttp3.HttpUrl], void), cast-from-var2980-to-var1094=([okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource], okio.Source)}
; {var3315=okhttp3.internal.http1.Http1ExchangeCodec, var3956=r0, var806=okhttp3.HttpUrl, var1637=r2, var1504=$i0, var2694=$z0, var2980=okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource, var3546=$r1, var1094=okio.Source, var1276=$r3}
; {okhttp3.internal.http1.Http1ExchangeCodec=var3315, r0=var3956, okhttp3.HttpUrl=var806, r2=var1637, $i0=var1504, $z0=var2694, okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource=var2980, $r1=var3546, okio.Source=var1094, $r3=var1276}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	r2 := @parameter0: okhttp3.HttpUrl;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 4 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	$r1 = new okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource;	specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec,okhttp3.HttpUrl)>(r0, r2);	$r3 = (okio.Source) $r1;	return $r3
;block_num 4