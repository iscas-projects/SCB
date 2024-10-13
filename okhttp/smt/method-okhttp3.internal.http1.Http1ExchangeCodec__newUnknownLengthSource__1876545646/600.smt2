(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1124 0)
(declare-sort var886 0)
(declare-sort var2499 0)
(declare-sort var2058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var1124) Int)
(declare-fun getConnection/-189644348 (var1124) var886)
(declare-fun noNewExchanges$okhttp/200847926 (var886) void)
(declare-fun var2499-init () var2499)
(declare-fun <init>/-123182886 (var2499 var1124) void)
(declare-fun cast-from-var2499-to-var2058 (var2499) var2058)
(declare-const null-var1124 var1124)
(declare-const var581 var1124) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var581 null-var1124)))
(define-const var1327 Int (state/970643265 var581)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 4 goto $z0 = 0 
(assert (not (not (= var1327 4)))) ; Negate: Cond: $i0 != 4  
(define-const var3650 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert (not (= (ite var3650 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var581!1 var1124)
(assert (not (= var581!1 null-var1124)))
(assert (= (state/970643265 var581!1) 5)) ; Statement: r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert true)
(define-const var1143 var886 (getConnection/-189644348 var581!1)) ; Statement: $r1 = virtualinvoke r0.<okhttp3.internal.http1.Http1ExchangeCodec: okhttp3.internal.connection.RealConnection getConnection()>() 
(assert true)
;(assert (noNewExchanges$okhttp/200847926 var1143)) ; Statement: virtualinvoke $r1.<okhttp3.internal.connection.RealConnection: void noNewExchanges$okhttp()>() 

(declare-const var1143!1 var886)
(define-const var1411 var2499 var2499-init) ; Statement: $r2 = new okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource 
(assert true)
;(assert (<init>/-123182886 var1411 var581!1)) ; Statement: specialinvoke $r2.<okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0) 

(declare-const var1411!1 var2499)
(declare-const var581!2 var1124)
(define-const var1877 var2058 (cast-from-var2499-to-var2058 var1411!1)) ; Statement: $r3 = (okio.Source) $r2 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), getConnection/-189644348=([okhttp3.internal.http1.Http1ExchangeCodec], okhttp3.internal.connection.RealConnection), noNewExchanges$okhttp/200847926=([okhttp3.internal.connection.RealConnection], void), var2499-init=([], okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource), <init>/-123182886=([okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource, okhttp3.internal.http1.Http1ExchangeCodec], void), cast-from-var2499-to-var2058=([okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource], okio.Source)}
; {var1124=okhttp3.internal.http1.Http1ExchangeCodec, var581=r0, var1327=$i0, var3650=$z0, var886=okhttp3.internal.connection.RealConnection, var1143=$r1, var2499=okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource, var1411=$r2, var2058=okio.Source, var1877=$r3}
; {okhttp3.internal.http1.Http1ExchangeCodec=var1124, r0=var581, $i0=var1327, $z0=var3650, okhttp3.internal.connection.RealConnection=var886, $r1=var1143, okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource=var2499, $r2=var1411, okio.Source=var2058, $r3=var1877}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 4 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	$r1 = virtualinvoke r0.<okhttp3.internal.http1.Http1ExchangeCodec: okhttp3.internal.connection.RealConnection getConnection()>();	virtualinvoke $r1.<okhttp3.internal.connection.RealConnection: void noNewExchanges$okhttp()>();	$r2 = new okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource;	specialinvoke $r2.<okhttp3.internal.http1.Http1ExchangeCodec$UnknownLengthSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec)>(r0);	$r3 = (okio.Source) $r2;	return $r3
;block_num 4