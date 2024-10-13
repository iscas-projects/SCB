(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2792 0)
(declare-sort var1595 0)
(declare-sort var2193 0)
(declare-sort var2215 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var2792) Int)
(declare-fun getConnection/-189644348 (var2792) var1595)
(declare-fun noNewExchanges$okhttp/200847926 (var1595) void)
(declare-fun var2193-init () var2193)
(declare-fun <init>/-123182886 (var2193 var2792) void)
(declare-fun cast-from-var2193-to-var2215 (var2193) var2215)
(declare-const null-var2792 var2792)
(declare-const var1928 var2792) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var1928 null-var2792)))
(define-const var3908 Int (state/970643265 var1928)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 4 goto $z0 = 0 
(assert (not (= var3908 4))) ; Cond: $i0 != 4 
(define-const var3830 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert (not (= (ite var3830 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var1928!1 var2792)
(assert (not (= var1928!1 null-var2792)))
(assert (= (state/970643265 var1928!1) 5)) ; Statement: r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert true)
(define-const var632 var1595 (getConnection/-189644348 var1928!1)) ; Statement: $r1 = virtualinvoke r0.<okhttp3.internal.http1.Http1ExchangeCodec: okhttp3.internal.connection.RealConnection getConnection()>() 
(assert true)
;(assert (noNewExchanges$okhttp/200847926 var632)) ; Statement: virtualinvoke $r1.<okhttp3.internal.connection.RealConnection: void noNewExchanges$okhttp()>() 

(declare-const var632!1 var1595)
(define-const var475 var2193 var2193-init) ; Statement: $r2 = new okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource 
(assert true)
;(assert (<init>/-123182886 var475 var1928!1)) ; Statement: specialinvoke $r2.<okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0) 

(declare-const var475!1 var2193)
(declare-const var1928!2 var2792)
(define-const var2780 var2215 (cast-from-var2193-to-var2215 var475!1)) ; Statement: $r3 = (okio.Source) $r2 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), getConnection/-189644348=([okhttp3.internal.http1.Http1ExchangeCodec], okhttp3.internal.connection.RealConnection), noNewExchanges$okhttp/200847926=([okhttp3.internal.connection.RealConnection], void), var2193-init=([], okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource), <init>/-123182886=([okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource, okhttp3.internal.http1.Http1ExchangeCodec], void), cast-from-var2193-to-var2215=([okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource], okio.Source)}
; {var2792=okhttp3.internal.http1.Http1ExchangeCodec, var1928=r0, var3908=$i0, var3830=$z0, var1595=okhttp3.internal.connection.RealConnection, var632=$r1, var2193=okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource, var475=$r2, var2215=okio.Source, var2780=$r3}
; {okhttp3.internal.http1.Http1ExchangeCodec=var2792, r0=var1928, $i0=var3908, $z0=var3830, okhttp3.internal.connection.RealConnection=var1595, $r1=var632, okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource=var2193, $r2=var475, okio.Source=var2215, $r3=var2780}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 4 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	$r1 = virtualinvoke r0.<okhttp3.internal.http1.Http1ExchangeCodec: okhttp3.internal.connection.RealConnection getConnection()>();	virtualinvoke $r1.<okhttp3.internal.connection.RealConnection: void noNewExchanges$okhttp()>();	$r2 = new okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource;	specialinvoke $r2.<okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0);	$r3 = (okio.Source) $r2;	return $r3
;block_num 4