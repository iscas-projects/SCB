(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2142 0)
(declare-sort var986 0)
(declare-sort var3680 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun state/970643265 (var2142) Int)
(declare-fun var986-init () var986)
(declare-fun <init>/2025708098 (var986 var2142 Int) void)
(declare-fun cast-from-var986-to-var3680 (var986) var3680)
(declare-const null-var2142 var2142)
(declare-const null-Int Int)
(declare-const var3628 var2142) ; Statement: r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec 
(assert (not (= var3628 null-var2142)))
(declare-const var1624 Int) ; Statement: l1 := @parameter0: long 
(assert (not (= var1624 null-Int)))
(define-const var1980 Int (state/970643265 var3628)) ; Statement: $i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> 
 ; Statement: if $i0 != 4 goto $z0 = 0 
(assert (not (= var1980 4))) ; Cond: $i0 != 4 
(define-const var960 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(assert (not (= (ite var960 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var3628!1 var2142)
(assert (not (= var3628!1 null-var2142)))
(assert (= (state/970643265 var3628!1) 5)) ; Statement: r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5 
(define-const var3792 var986 var986-init) ; Statement: $r1 = new okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource 
(assert true)
;(assert (<init>/2025708098 var3792 var3628!1 var1624)) ; Statement: specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec,long)>(r0, l1) 

(declare-const var3792!1 var986)
(declare-const var3628!2 var2142)
(declare-const var1624!1 Int)
(define-const var3888 var3680 (cast-from-var986-to-var3680 var3792!1)) ; Statement: $r2 = (okio.Source) $r1 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {state/970643265=([okhttp3.internal.http1.Http1ExchangeCodec], int), var986-init=([], okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource), <init>/2025708098=([okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource, okhttp3.internal.http1.Http1ExchangeCodec, long], void), cast-from-var986-to-var3680=([okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource], okio.Source)}
; {var2142=okhttp3.internal.http1.Http1ExchangeCodec, var3628=r0, var1624=l1, var1980=$i0, var960=$z0, var986=okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource, var3792=$r1, var3680=okio.Source, var3888=$r2}
; {okhttp3.internal.http1.Http1ExchangeCodec=var2142, r0=var3628, l1=var1624, $i0=var1980, $z0=var960, okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource=var986, $r1=var3792, okio.Source=var3680, $r2=var3888}
;seq 
;cnt {}
;stmts r0 := @this: okhttp3.internal.http1.Http1ExchangeCodec;	l1 := @parameter0: long;	$i0 = r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state>;	if $i0 != 4 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	r0.<okhttp3.internal.http1.Http1ExchangeCodec: int state> = 5;	$r1 = new okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource;	specialinvoke $r1.<okhttp3.internal.http1.Http1ExchangeCodec$FixedLengthSource: void <init>(okhttp3.internal.http1.Http1ExchangeCodec,long)>(r0, l1);	$r2 = (okio.Source) $r1;	return $r2
;block_num 4