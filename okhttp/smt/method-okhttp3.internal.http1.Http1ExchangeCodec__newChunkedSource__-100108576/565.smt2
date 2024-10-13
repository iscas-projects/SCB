(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2933 0)
(declare-sort var1903 0)
(declare-sort var3827 0)
(declare-sort var3970 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var2933) Int)
(declare-fun var3827-init () var3827)
(declare-fun <init>/-86008070 (var3827 var2933 var1903) void)
(declare-fun cast-from-var3827-to-var3970 (var3827) var3970)
(declare-const null-var2933 var2933)
(declare-const null-var1903 var1903)
(declare-const var3209 var2933) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var3209 null-var2933)))
(declare-const var1394 var1903) ; Statement: r2 := @parameter0: okhttp3.HttpUrl 
(assert (not (= var1394 null-var1903)))
(define-const var890 Int (state/970643265 var3209)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 4 goto $z0 = 0 
(assert (not (= var890 4))) ; Cond: $i0 != 4 
(define-const var621 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert (not (= (ite var621 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var3209!1 var2933)
(assert (not (= var3209!1 null-var2933)))
(assert (= (state/970643265 var3209!1) 5)) ; Statement: r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(define-const var653 var3827 var3827-init) ; Statement: $r1 = new okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource 
(assert true)
;(assert (<init>/-86008070 var653 var3209!1 var1394)) ; Statement: specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec,okhttp3.HttpUrl)>(r0, r2) 

(declare-const var653!1 var3827)
(declare-const var3209!2 var2933)
(declare-const var1394!1 var1903)
(define-const var3267 var3970 (cast-from-var3827-to-var3970 var653!1)) ; Statement: $r3 = (okio.Source) $r1 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), var3827-init=([], okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource), <init>/-86008070=([okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource, okhttp3.internal.http1.Http1ExchangeCodec, okhttp3.HttpUrl], void), cast-from-var3827-to-var3970=([okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource], okio.Source)}
; {var2933=okhttp3.internal.http1.Http1ExchangeCodec, var3209=r0, var1903=okhttp3.HttpUrl, var1394=r2, var890=$i0, var621=$z0, var3827=okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource, var653=$r1, var3970=okio.Source, var3267=$r3}
; {okhttp3.internal.http1.Http1ExchangeCodec=var2933, r0=var3209, okhttp3.HttpUrl=var1903, r2=var1394, $i0=var890, $z0=var621, okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource=var3827, $r1=var653, okio.Source=var3970, $r3=var3267}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	r2 := @parameter0: okhttp3.HttpUrl;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 4 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	$r1 = new okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource;	specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$ChunkedSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec,okhttp3.HttpUrl)>(r0, r2);	$r3 = (okio.Source) $r1;	return $r3
;block_num 4